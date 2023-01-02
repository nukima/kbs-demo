package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.KilometersEntity;

public interface KilometersEntityRepository extends JpaRepository<KilometersEntity, String> {
}