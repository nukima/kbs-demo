package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.SymptomsEntity;

public interface SymptomsEntityRepository extends JpaRepository<SymptomsEntity, String> {
}