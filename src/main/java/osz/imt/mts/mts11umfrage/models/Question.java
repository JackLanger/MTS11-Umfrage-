package osz.imt.mts.mts11umfrage.models;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import osz.imt.mts.mts11umfrage.utils.QuestionTypes;

/**
 * Data model of a Question used in the survey.
 *
 * <p>Created by: Jack</p>
 * <p>Date: 10.10.2022</p>
 */
@Builder
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "t_question")
public class Question {

  @Id
  @Column(name = "p_question_id", nullable = false)
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private String questionText;
  @OneToMany(fetch = FetchType.EAGER, mappedBy = "question")
  private List<QuestionAnswer> questionAnswers = new java.util.ArrayList<>();
  private QuestionTypes type;

}
