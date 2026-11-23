// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_candidate_response.dart';
import 'ai_evaluation_item_evaluation_request_golden_response.dart';
import 'ai_evaluation_item_evaluation_request_prompt.dart';
import 'ai_evaluation_item_evaluation_request_rubric.dart';

class AiEvaluationItemEvaluationRequest {
  /// Responses from model under test and other baseline models for comparison.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationRequestCandidateResponse>?>? candidateResponses;
  /// The ideal response or ground truth.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestGoldenResponse?>? goldenResponse;
  /// The request/prompt to evaluate.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestPrompt?>? prompt;
  /// Named groups of rubrics associated with this prompt.
  /// The key is a user-defined name for the rubric group.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationRequestRubric>?>? rubrics;

  /// Creates a new [AiEvaluationItemEvaluationRequest].
  /// [candidateResponses] Responses from model under test and other baseline models for comparison.
  /// [goldenResponse] The ideal response or ground truth.
  /// [prompt] The request/prompt to evaluate.
  /// [rubrics] Named groups of rubrics associated with this prompt.
  const AiEvaluationItemEvaluationRequest({
    this.candidateResponses,
    this.goldenResponse,
    this.prompt,
    this.rubrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'candidateResponses': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationRequestCandidateResponse>, List<Map<String, dynamic>>>(candidateResponses, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationRequestCandidateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'goldenResponse': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequestGoldenResponse, Map<String, dynamic>>(goldenResponse, (value) => value.toMap()),
      'prompt': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequestPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'rubrics': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationRequestRubric>, List<Map<String, dynamic>>>(rubrics, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationRequestRubric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiEvaluationItemEvaluationRequest.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequest(
      candidateResponses: (() { final guardedValue = map['candidateResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationRequestCandidateResponse>(guardedValue, (value) => AiEvaluationItemEvaluationRequestCandidateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      goldenResponse: (() { final guardedValue = map['goldenResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestGoldenResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestPrompt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rubrics: (() { final guardedValue = map['rubrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationRequestRubric>(guardedValue, (value) => AiEvaluationItemEvaluationRequestRubric.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
