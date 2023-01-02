package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.WorkingEnvironmentsEntity;

public interface WorkingEnvironmentsEntityRepository extends JpaRepository<WorkingEnvironmentsEntity, String> {
}