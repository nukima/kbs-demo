package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.CasesEntity;

public interface CasesEntityRepository extends JpaRepository<CasesEntity, Integer> {
}