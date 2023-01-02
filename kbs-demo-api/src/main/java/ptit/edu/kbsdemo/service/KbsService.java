package ptit.edu.kbsdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ptit.edu.kbsdemo.model.*;
import ptit.edu.kbsdemo.repository.CasesEntityRepository;
import ptit.edu.kbsdemo.repository.ErrorsEntityRepository;
import ptit.edu.kbsdemo.repository.SimilarityWeightsEntityRepository;

import java.util.List;

@Service
public class KbsService {
    @Autowired
    private SimilarityWeightsEntityRepository similarityWeightsEntityRepository;

    @Autowired
    private CasesEntityRepository casesEntityRepository;

    @Autowired
    private ErrorsEntityRepository errorsEntityRepository;


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
        total += workingEnvironmentWeight * 6;

        double workingYearWeight = getSimilarityWeight(caseRequest.getWorkingYear(),
            casesEntity.getWorkingYearLabelId());
        total += workingYearWeight * 6;

        double kilometerWeight = getSimilarityWeight(caseRequest.getKilometer(),
            casesEntity.getKilometerLabelId());
        total += kilometerWeight * 6;

        double lastMaintenanceTimeWeight = getSimilarityWeight(caseRequest.getLastMaintenanceTime(),
            casesEntity.getLastMaintenanceTimeLabelId());
        total += lastMaintenanceTimeWeight * 6;

        double problemWeight = getSimilarityWeight(caseRequest.getProblem(),
            casesEntity.getProblemLabelId());
        total += problemWeight * 6;

        // round to 2 decimal places
        double similarityPoint = total / 36;
        return Math.round(similarityPoint * 100.0) / 100.0;
    }

    public double getSimilarityWeight(String labelId1, String labelId2) {
        System.out.println("===================================");
        System.out.println(labelId1 + " " + labelId2);
        SimilarityWeightsEntity similarityWeightsEntity =
            similarityWeightsEntityRepository.findByLabelId1AndLabelId2AllIgnoreCase(labelId1, labelId2);
        if (similarityWeightsEntity != null) {
            return similarityWeightsEntity.getWeight();
        }
        SimilarityWeightsEntity similarityWeightsEntity2 =
            similarityWeightsEntityRepository.findByLabelId1AndLabelId2AllIgnoreCase(labelId2, labelId1);

        return similarityWeightsEntity2.getWeight();

    }
}
