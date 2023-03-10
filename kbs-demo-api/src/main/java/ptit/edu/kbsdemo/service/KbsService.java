package ptit.edu.kbsdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ptit.edu.kbsdemo.model.*;
import ptit.edu.kbsdemo.repository.CasesEntityRepository;
import ptit.edu.kbsdemo.repository.ErrorsEntityRepository;
import ptit.edu.kbsdemo.repository.SimilarityWeightsEntityRepository;
import ptit.edu.kbsdemo.repository.UnknownCasesRepository;

import java.util.List;

@Service
public class KbsService {
    @Autowired
    private SimilarityWeightsEntityRepository similarityWeightsEntityRepository;

    @Autowired
    private CasesEntityRepository casesEntityRepository;

    @Autowired
    private ErrorsEntityRepository errorsEntityRepository;

    @Autowired
    private UnknownCasesRepository unknownCasesRepository;


    public SolutionResponse getSolution(CaseRequest caseRequest) {
        // compare caseRequest with all cases in database
        List<CasesEntity> casesEntities = casesEntityRepository.findAll();

        CasesEntity mostSimilarCase = new CasesEntity();
        double maxSimilarityPoint = 0.0;

        for (CasesEntity casesEntity : casesEntities) {
            double similarity = calculateSimilarityPoint(caseRequest, casesEntity);
            if (similarity > maxSimilarityPoint) {
                maxSimilarityPoint = similarity;
                mostSimilarCase = casesEntity;
            }
        }

        if (maxSimilarityPoint < 0.7){
            String symptoms = String.join(",", caseRequest.getSymptoms());
            UnknownCasesEntity unknownCasesEntity = new UnknownCasesEntity(
                caseRequest.getCustomerTel(),
                symptoms,
                caseRequest.getWorkingEnvironment(),
                caseRequest.getWorkingYear(),
                caseRequest.getKilometer(),
                caseRequest.getLastMaintenanceTime(),
                caseRequest.getProblem()
            );
            unknownCasesRepository.save(unknownCasesEntity);
            return new SolutionResponse(
                "UNKNOWN",
                "UNKNOWN",
                maxSimilarityPoint
            );
        }

        ErrorsEntity errorsEntity = errorsEntityRepository.findByLabelIdIgnoreCase(mostSimilarCase.getErrorLabelId());

        return new SolutionResponse(
            errorsEntity.getContent(),
            errorsEntity.getSolution(),
            maxSimilarityPoint
        );
    }

    public double calculateSimilarityPoint(CaseRequest caseRequest, CasesEntity casesEntity) {
        double total = 0;
        String symptoms = casesEntity.getSymptomsLabelId();
        double count = 0;
        for (String symptom : caseRequest.getSymptoms()) {
            if (casesEntity.getSymptomsLabelId().contains(symptom)) {
                count++;
            }
        }
        total += (count / 3) * 6;

        double workingEnvironmentWeight = getSimilarityWeight(caseRequest.getWorkingEnvironment(),
            casesEntity.getWorkingEnvironmentLabelId());
        total += workingEnvironmentWeight * 4;

        double workingYearWeight = getSimilarityWeight(caseRequest.getWorkingYear(),
            casesEntity.getWorkingYearLabelId());
        total += workingYearWeight * 2;

        double kilometerWeight = getSimilarityWeight(caseRequest.getKilometer(),
            casesEntity.getKilometerLabelId());
        total += kilometerWeight * 2;

        double lastMaintenanceTimeWeight = getSimilarityWeight(caseRequest.getLastMaintenanceTime(),
            casesEntity.getLastMaintenanceTimeLabelId());
        total += lastMaintenanceTimeWeight * 4;

        double problemWeight = getSimilarityWeight(caseRequest.getProblem(),
            casesEntity.getProblemLabelId());
        total += problemWeight * 3;

        // round to 2 decimal places
        double similarityPoint = total / 21;
        return Math.round(similarityPoint * 100.0) / 100.0;
    }

    public double getSimilarityWeight(String labelId1, String labelId2) {
        SimilarityWeightsEntity similarityWeightsEntity =
            similarityWeightsEntityRepository.findByLabelId1AndLabelId2AllIgnoreCase(labelId1, labelId2);
        if (similarityWeightsEntity != null) {
            return similarityWeightsEntity.getWeight();
        }
        SimilarityWeightsEntity similarityWeightsEntity2 =
            similarityWeightsEntityRepository.findByLabelId1AndLabelId2AllIgnoreCase(labelId2, labelId1);
        return similarityWeightsEntity2.getWeight();
    }

    public UnknownCasesEntity getUnknownCase(String customerTel) {
        UnknownCasesEntity unknownCasesEntity = unknownCasesRepository.findByCustomerTel(customerTel);
        return unknownCasesEntity;
    }

    public void addCase(String customerTel, String error, String solution) {
        String errorLabelId = "";
        if (error.length() > 4){
            errorLabelId = "LO" + (errorsEntityRepository.count() + 1);
            addError(errorLabelId, error, solution);
        }
        else {
            errorLabelId = error;
        }
        CasesEntity casesEntity = new CasesEntity();
        UnknownCasesEntity unknownCasesEntity = unknownCasesRepository.findByCustomerTel(customerTel);
        casesEntity.setSymptomsLabelId(unknownCasesEntity.getSymptomsLabelId());
        casesEntity.setWorkingEnvironmentLabelId(unknownCasesEntity.getWorkingEnvironmentLabelId());
        casesEntity.setWorkingYearLabelId(unknownCasesEntity.getWorkingYearLabelId());
        casesEntity.setKilometerLabelId(unknownCasesEntity.getKilometerLabelId());
        casesEntity.setLastMaintenanceTimeLabelId(unknownCasesEntity.getLastMaintenanceTimeLabelId());
        casesEntity.setProblemLabelId(unknownCasesEntity.getProblemLabelId());
        casesEntity.setErrorLabelId(errorLabelId);
        casesEntityRepository.save(casesEntity);
    }

    public void addError(String errorLabelId, String content, String solution) {
        ErrorsEntity errorsEntity = new ErrorsEntity();
        errorsEntity.setLabelId(errorLabelId);
        errorsEntity.setContent(content);
        errorsEntity.setSolution(solution);
        errorsEntityRepository.save(errorsEntity);
    }
}
