package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.UnknownCasesEntity;

import java.util.Optional;

public interface UnknownCasesRepository extends JpaRepository<UnknownCasesEntity, String> {
    UnknownCasesEntity findByCustomerTel(String customerTel);
}