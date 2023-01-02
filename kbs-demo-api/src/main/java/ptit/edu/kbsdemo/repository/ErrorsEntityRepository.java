package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.ErrorsEntity;

public interface ErrorsEntityRepository extends JpaRepository<ErrorsEntity, String> {
    ErrorsEntity findByLabelIdIgnoreCase(String labelId);

}