// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_current_page.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_difference.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_status.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_text_response.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_triggered_intent.dart';

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutput {
  /// The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage?>? currentPage;
  /// The list of differences between the original run and the replay for this output, if any.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference>?>? differences;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<String?>? sessionParameters;
  /// Response error from the agent in the test result. If set, other output is empty.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus?>? status;
  /// The text responses from the agent for the turn.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse>?>? textResponses;
  /// The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent?>? triggeredIntent;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutput].
  /// [currentPage] The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// [differences] The list of differences between the original run and the replay for this output, if any.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  const CxTestCaseLastTestResultConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.differences,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'differences': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference>, List<Map<String, dynamic>>>(differences, (value) => pulumi.Input.encodeList<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionParameters': ?sessionParameters,
      'status': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'textResponses': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutput(
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      differences: (() { final guardedValue = map['differences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference>(guardedValue, (value) => CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionParameters: (() { final guardedValue = map['sessionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textResponses: (() { final guardedValue = map['textResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse>(guardedValue, (value) => CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      triggeredIntent: (() { final guardedValue = map['triggeredIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
