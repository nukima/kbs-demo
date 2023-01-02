package ptit.edu.kbsdemo.model;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cases", schema = "dev_kbs", catalog = "")
public class CasesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic
    @Column(name = "symptoms_label_id", nullable = false, length = 255)
    private String symptomsLabelId;
    @Basic
    @Column(name = "working_environment_label_id", nullable = false, length = 4)
    private String workingEnvironmentLabelId;
    @Basic
    @Column(name = "working_year_label_id", nullable = false, length = 4)
    private String workingYearLabelId;
    @Basic
    @Column(name = "kilometer_label_id", nullable = false, length = 4)
    private String kilometerLabelId;
    @Basic
    @Column(name = "last_maintenance_time_label_id", nullable = false, length = 4)
    private String lastMaintenanceTimeLabelId;
    @Basic
    @Column(name = "problem_label_id", nullable = false, length = 4)
    private String problemLabelId;
    @Basic
    @Column(name = "error_label_id", nullable = false, length = 4)
    private String errorLabelId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSymptomsLabelId() {
        return symptomsLabelId;
    }

    public void setSymptomsLabelId(String symptomsLabelId) {
        this.symptomsLabelId = symptomsLabelId;
    }

    public String getWorkingEnvironmentLabelId() {
        return workingEnvironmentLabelId;
    }

    public void setWorkingEnvironmentLabelId(String workingEnvironmentLabelId) {
        this.workingEnvironmentLabelId = workingEnvironmentLabelId;
    }

    public String getWorkingYearLabelId() {
        return workingYearLabelId;
    }

    public void setWorkingYearLabelId(String workingYearLabelId) {
        this.workingYearLabelId = workingYearLabelId;
    }

    public String getKilometerLabelId() {
        return kilometerLabelId;
    }

    public void setKilometerLabelId(String kilometerLabelId) {
        this.kilometerLabelId = kilometerLabelId;
    }

    public String getLastMaintenanceTimeLabelId() {
        return lastMaintenanceTimeLabelId;
    }

    public void setLastMaintenanceTimeLabelId(String lastMaintenanceTimeLabelId) {
        this.lastMaintenanceTimeLabelId = lastMaintenanceTimeLabelId;
    }

    public String getProblemLabelId() {
        return problemLabelId;
    }

    public void setProblemLabelId(String problemLabelId) {
        this.problemLabelId = problemLabelId;
    }

    public String getErrorLabelId() {
        return errorLabelId;
    }

    public void setErrorLabelId(String errorLabelId) {
        this.errorLabelId = errorLabelId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CasesEntity that = (CasesEntity) o;
        return Objects.equals(id, that.id) && Objects.equals(symptomsLabelId, that.symptomsLabelId) && Objects.equals(workingEnvironmentLabelId, that.workingEnvironmentLabelId) && Objects.equals(workingYearLabelId, that.workingYearLabelId) && Objects.equals(kilometerLabelId, that.kilometerLabelId) && Objects.equals(lastMaintenanceTimeLabelId, that.lastMaintenanceTimeLabelId) && Objects.equals(problemLabelId, that.problemLabelId) && Objects.equals(errorLabelId, that.errorLabelId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, symptomsLabelId, workingEnvironmentLabelId, workingYearLabelId, kilometerLabelId, lastMaintenanceTimeLabelId, problemLabelId, errorLabelId);
    }
}
