// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_current_page.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_text_response.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_triggered_intent.dart';

class CxTestCaseTestCaseConversationTurnVirtualAgentOutput {
  /// The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage>? currentPage;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<String>? sessionParameters;
  /// The text responses from the agent for the turn.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse>>? textResponses;
  /// The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent>? triggeredIntent;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutput].
  /// [currentPage] The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  CxTestCaseTestCaseConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.sessionParameters,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'sessionParameters': ?sessionParameters,
      'textResponses': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null ? null : (CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage.fromMap((map['currentPage']! as Map).cast<String, dynamic>())).input(),
      sessionParameters: map['sessionParameters'] == null ? null : (map['sessionParameters']! as String).input(),
      textResponses: map['textResponses'] == null ? null : (pulumi.Input.decodeList<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse>(map['textResponses']!, (value) => CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggeredIntent: map['triggeredIntent'] == null ? null : (CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent.fromMap((map['triggeredIntent']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

