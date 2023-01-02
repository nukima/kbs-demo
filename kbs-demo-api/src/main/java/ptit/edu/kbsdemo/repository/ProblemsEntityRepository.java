package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.ProblemsEntity;

public interface ProblemsEntityRepository extends JpaRepository<ProblemsEntity, String> {
}