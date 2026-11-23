// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_response_candidate_result.dart';

class AiEvaluationItemEvaluationResponse {
  /// (Output)
  /// The results for the metric.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationResponseCandidateResult>?>? candidateResults;
  /// The request to evaluate.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  /// Structure is documented below.
  final pulumi.Input<String?>? evaluationRequest;
  /// (Output)
  /// The evaluation run that was used to generate the result. Format:
  /// `projects/{project}/locations/{location}/evaluationRuns/{evaluation_run}`
  final pulumi.Input<String?>? evaluationRun;
  /// User-defined metadata for this evaluation item as a JSON string.
  final pulumi.Input<String?>? metadata;
  /// (Output)
  /// The metric that was evaluated.
  final pulumi.Input<String?>? metric;
  /// (Output)
  /// The request that was evaluated, as a JSON string.
  final pulumi.Input<String?>? request;

  /// Creates a new [AiEvaluationItemEvaluationResponse].
  /// [candidateResults] (Output)
  /// [evaluationRequest] The request to evaluate.
  /// [evaluationRun] (Output)
  /// [metadata] User-defined metadata for this evaluation item as a JSON string.
  /// [metric] (Output)
  /// [request] (Output)
  const AiEvaluationItemEvaluationResponse({
    this.candidateResults,
    this.evaluationRequest,
    this.evaluationRun,
    this.metadata,
    this.metric,
    this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'candidateResults': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationResponseCandidateResult>, List<Map<String, dynamic>>>(candidateResults, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationResponseCandidateResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluationRequest': ?evaluationRequest,
      'evaluationRun': ?evaluationRun,
      'metadata': ?metadata,
      'metric': ?metric,
      'request': ?request,
    };
  }

  factory AiEvaluationItemEvaluationResponse.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationResponse(
      candidateResults: (() { final guardedValue = map['candidateResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationResponseCandidateResult>(guardedValue, (value) => AiEvaluationItemEvaluationResponseCandidateResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      evaluationRequest: (() { final guardedValue = map['evaluationRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRun: (() { final guardedValue = map['evaluationRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
