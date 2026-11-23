// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_candidate_response_error.dart';

class AiEvaluationItemEvaluationRequestCandidateResponse {
  /// Represents the complete execution trace of a multi-turn conversation,
  /// which can involve single or multiple agents, as a JSON string. This
  /// field is used to provide the full output of an agent's run, including
  /// all turns and events, for direct evaluation.
  /// At most one of `text`, `value`, or `agentData` can be set.
  final pulumi.Input<String?>? agentData;
  /// The name of the candidate that produced the response.
  final pulumi.Input<String> candidate;
  /// (Output)
  /// Error while scraping model or agent.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedEvaluationRequestCandidateResponsesError"&gt;&lt;/a&gt;The `error` block contains:
  final pulumi.Input<List<AiEvaluationItemEvaluationRequestCandidateResponseError>?>? errors;
  /// Text response.
  /// At most one of `text`, `value`, or `agentData` can be set.
  final pulumi.Input<String?>? text;
  /// Fields and values that can be used to populate the response template, as a JSON string.
  /// At most one of `text`, `value`, or `agentData` can be set.
  final pulumi.Input<String?>? value;

  /// Creates a new [AiEvaluationItemEvaluationRequestCandidateResponse].
  /// [agentData] Represents the complete execution trace of a multi-turn conversation,
  /// [candidate] The name of the candidate that produced the response.
  /// [errors] (Output)
  /// [text] Text response.
  /// [value] Fields and values that can be used to populate the response template, as a JSON string.
  const AiEvaluationItemEvaluationRequestCandidateResponse({
    this.agentData,
    required this.candidate,
    this.errors,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentData': ?agentData,
      'candidate': candidate,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationRequestCandidateResponseError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationRequestCandidateResponseError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
      'value': ?value,
    };
  }

  factory AiEvaluationItemEvaluationRequestCandidateResponse.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestCandidateResponse(
      agentData: (() { final guardedValue = map['agentData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      candidate: pulumi.Input.fromValue(map['candidate'] as String),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationRequestCandidateResponseError>(guardedValue, (value) => AiEvaluationItemEvaluationRequestCandidateResponseError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
