package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;
import ptit.edu.kbsdemo.model.SimilarityWeightsEntity;

public interface SimilarityWeightsEntityRepository extends JpaRepository<SimilarityWeightsEntity, Integer> {
    SimilarityWeightsEntity findByLabelId1AndLabelId2AllIgnoreCase(String labelId1, String labelId2);

}