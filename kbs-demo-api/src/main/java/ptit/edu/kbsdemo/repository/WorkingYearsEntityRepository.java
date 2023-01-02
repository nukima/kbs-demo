package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.WorkingYearsEntity;

public interface WorkingYearsEntityRepository extends JpaRepository<WorkingYearsEntity, String> {
}