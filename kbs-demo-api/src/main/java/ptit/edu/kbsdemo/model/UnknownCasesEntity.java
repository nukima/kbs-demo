package ptit.edu.kbsdemo.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Objects;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "unknown_cases", schema = "dev_kbs", catalog = "")
public class UnknownCasesEntity {
    @Id
    @Column(name = "customer_tel", nullable = false, length = 20)
    @JsonProperty("customer_tel")
    private String customerTel;
    @Basic
    @Column(name = "symptoms_label_id", nullable = false, length = 255)
    @JsonProperty("symptoms_label_id")
    private String symptomsLabelId;
    @Basic
    @Column(name = "working_environment_label_id", nullable = false, length = 4)
    @JsonProperty("working_environment_label_id")
    private String workingEnvironmentLabelId;
    @Basic
    @Column(name = "working_year_label_id", nullable = false, length = 4)
    @JsonProperty("working_year_label_id")
    private String workingYearLabelId;
    @Basic
    @Column(name = "kilometer_label_id", nullable = false, length = 4)
    @JsonProperty("kilometer_label_id")
    private String kilometerLabelId;
    @Basic
    @Column(name = "last_maintenance_time_label_id", nullable = false, length = 4)
    @JsonProperty("last_maintenance_time_label_id")
    private String lastMaintenanceTimeLabelId;
    @Basic
    @Column(name = "problem_label_id", nullable = false, length = 4)
    @JsonProperty("problem_label_id")
    private String problemLabelId;

    public String getCustomerTel() {
        return customerTel;
    }

    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UnknownCasesEntity that = (UnknownCasesEntity) o;
        return Objects.equals(customerTel, that.customerTel) && Objects.equals(symptomsLabelId, that.symptomsLabelId) && Objects.equals(workingEnvironmentLabelId, that.workingEnvironmentLabelId) && Objects.equals(workingYearLabelId, that.workingYearLabelId) && Objects.equals(kilometerLabelId, that.kilometerLabelId) && Objects.equals(lastMaintenanceTimeLabelId, that.lastMaintenanceTimeLabelId) && Objects.equals(problemLabelId, that.problemLabelId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(customerTel, symptomsLabelId, workingEnvironmentLabelId, workingYearLabelId, kilometerLabelId, lastMaintenanceTimeLabelId, problemLabelId);
    }
}
