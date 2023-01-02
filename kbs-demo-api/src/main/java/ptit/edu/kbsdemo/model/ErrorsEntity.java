package ptit.edu.kbsdemo.model;

import javax.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "errors", schema = "dev_kbs", catalog = "")
public class ErrorsEntity {
    @Id
    @Column(name = "label_id", nullable = false, length = 4)
    private String labelId;
    @Basic
    @Column(name = "content", nullable = false, length = 255)
    private String content;
    @Basic
    @Column(name = "solution", nullable = true, length = -1)
    private String solution;

    public String getLabelId() {
        return labelId;
    }

    public void setLabelId(String labelId) {
        this.labelId = labelId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ErrorsEntity that = (ErrorsEntity) o;
        return Objects.equals(labelId, that.labelId) && Objects.equals(content, that.content) && Objects.equals(solution, that.solution);
    }

    @Override
    public int hashCode() {
        return Objects.hash(labelId, content, solution);
    }
}
