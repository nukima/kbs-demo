package ptit.edu.kbsdemo.model;

import javax.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "similarity_weights", schema = "dev_kbs", catalog = "")
public class SimilarityWeightsEntity {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic
    @Column(name = "label_id_1", nullable = false, length = 4)
    private String labelId1;
    @Basic
    @Column(name = "label_id_2", nullable = false, length = 4)
    private String labelId2;
    @Basic
    @Column(name = "weight", nullable = false, precision = 0)
    private Double weight;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLabelId1() {
        return labelId1;
    }

    public void setLabelId1(String labelId1) {
        this.labelId1 = labelId1;
    }

    public String getLabelId2() {
        return labelId2;
    }

    public void setLabelId2(String labelId2) {
        this.labelId2 = labelId2;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SimilarityWeightsEntity that = (SimilarityWeightsEntity) o;
        return Objects.equals(id, that.id) && Objects.equals(labelId1, that.labelId1) && Objects.equals(labelId2, that.labelId2) && Objects.equals(weight, that.weight);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, labelId1, labelId2, weight);
    }
}
