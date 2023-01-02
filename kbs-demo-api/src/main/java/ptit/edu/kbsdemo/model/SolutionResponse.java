package ptit.edu.kbsdemo.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SolutionResponse {
    @JsonProperty("error")
    private String error;

    @JsonProperty("solution")
    private String solution;

    @JsonProperty("similarity_point")
    private double similarityPoint;
}
