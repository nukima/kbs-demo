package ptit.edu.kbsdemo.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;


@Data
public class CaseRequest {
    @JsonProperty("symptoms")
    public String[] symptoms;

    @JsonProperty("working_environment")
    public String workingEnvironment;

    @JsonProperty("working_year")
    public String workingYear;

    @JsonProperty("kilometer")
    public String kilometer;

    @JsonProperty("last_maintenance_time")
    public String lastMaintenanceTime;

    @JsonProperty("problem")
    public String problem;

    public CaseRequest() {}

    public CaseRequest(String symptoms, String workingEnvironment, String workingYear, String kilometer, String lastMaintenanceTime, String problem) {
        this.symptoms = symptoms.split(",");
        this.workingEnvironment = workingEnvironment;
        this.workingYear = workingYear;
        this.kilometer = kilometer;
        this.lastMaintenanceTime = lastMaintenanceTime;
        this.problem = problem;
    }
}
