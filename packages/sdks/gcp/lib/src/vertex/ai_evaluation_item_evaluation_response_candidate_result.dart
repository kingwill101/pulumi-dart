// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_response_candidate_result_error.dart';
import 'ai_evaluation_item_evaluation_response_candidate_result_rubric_verdict.dart';

class AiEvaluationItemEvaluationResponseCandidateResult {
  /// (Output)
  /// Additional results for the metric, as a JSON string.
  final pulumi.Input<String?>? additionalResults;
  /// (Output)
  /// The candidate that is being evaluated.
  final pulumi.Input<String?>? candidate;
  /// (Output)
  /// Error while evaluating the candidate for the metric.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationResponseCandidateResultError>?>? errors;
  /// (Output)
  /// The explanation for the metric.
  final pulumi.Input<String?>? explanation;
  /// (Output)
  /// The metric that was evaluated.
  final pulumi.Input<String?>? metric;
  /// (Output)
  /// The rubric verdicts for the metric.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict>?>? rubricVerdicts;
  /// (Output)
  /// The score for the metric.
  final pulumi.Input<double?>? score;

  /// Creates a new [AiEvaluationItemEvaluationResponseCandidateResult].
  /// [additionalResults] (Output)
  /// [candidate] (Output)
  /// [errors] (Output)
  /// [explanation] (Output)
  /// [metric] (Output)
  /// [rubricVerdicts] (Output)
  /// [score] (Output)
  const AiEvaluationItemEvaluationResponseCandidateResult({
    this.additionalResults,
    this.candidate,
    this.errors,
    this.explanation,
    this.metric,
    this.rubricVerdicts,
    this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalResults': ?additionalResults,
      'candidate': ?candidate,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationResponseCandidateResultError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationResponseCandidateResultError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'explanation': ?explanation,
      'metric': ?metric,
      'rubricVerdicts': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict>, List<Map<String, dynamic>>>(rubricVerdicts, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict, Map<String, dynamic>>(value, (value) => value.toMap())),
      'score': ?score,
    };
  }

  factory AiEvaluationItemEvaluationResponseCandidateResult.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationResponseCandidateResult(
      additionalResults: (() { final guardedValue = map['additionalResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidate: (() { final guardedValue = map['candidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationResponseCandidateResultError>(guardedValue, (value) => AiEvaluationItemEvaluationResponseCandidateResultError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      explanation: (() { final guardedValue = map['explanation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rubricVerdicts: (() { final guardedValue = map['rubricVerdicts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict>(guardedValue, (value) => AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict.fromMap((value as Map).cast<String, dynamic>()))); })(),
      score: (() { final guardedValue = map['score']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
