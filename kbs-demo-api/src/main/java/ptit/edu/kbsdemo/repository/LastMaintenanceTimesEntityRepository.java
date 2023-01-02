package ptit.edu.kbsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ptit.edu.kbsdemo.model.LastMaintenanceTimesEntity;

public interface LastMaintenanceTimesEntityRepository extends JpaRepository<LastMaintenanceTimesEntity, String> {
}