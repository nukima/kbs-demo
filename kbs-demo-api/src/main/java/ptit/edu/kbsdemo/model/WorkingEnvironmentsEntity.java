package ptit.edu.kbsdemo.model;

import javax.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "working_environments", schema = "dev_kbs", catalog = "")
public class WorkingEnvironmentsEntity {
    @Id
    @Column(name = "label_id", nullable = false, length = 4)
    private String labelId;
    @Basic
    @Column(name = "content", nullable = false, length = 255)
    private String content;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WorkingEnvironmentsEntity that = (WorkingEnvironmentsEntity) o;
        return Objects.equals(labelId, that.labelId) && Objects.equals(content, that.content);
    }

    @Override
    public int hashCode() {
        return Objects.hash(labelId, content);
    }
}
