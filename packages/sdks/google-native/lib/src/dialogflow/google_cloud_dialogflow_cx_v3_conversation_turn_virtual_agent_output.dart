// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent.dart';
import 'google_cloud_dialogflow_cx_v3_page.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_text.dart';
import 'google_rpc_status.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3Page>? currentPage;
  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final pulumi.Input<Map<String, String>> diagnosticInfo;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<Map<String, String>>? sessionParameters;
  /// Response error from the agent in the test result. If set, other output is empty.
  final pulumi.Input<GoogleRpcStatus>? status;
  /// The text responses from the agent for the turn.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ResponseMessageText>>? textResponses;
  /// The Intent that triggered the response. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3Intent>? triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput({
    this.currentPage,
    required this.diagnosticInfo,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Page, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'diagnosticInfo': diagnosticInfo,
      'sessionParameters': ?sessionParameters,
      'status': ?pulumi.Input.mapOptionalInputValue<GoogleRpcStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'textResponses': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ResponseMessageText>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ResponseMessageText, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Intent, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3Page.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticInfo: pulumi.Input.fromValue((map['diagnosticInfo'] as Map).cast<String, String>()),
      sessionParameters: (() { final guardedValue = map['sessionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleRpcStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textResponses: (() { final guardedValue = map['textResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ResponseMessageText>(guardedValue, (value) => GoogleCloudDialogflowCxV3ResponseMessageText.fromMap((value as Map).cast<String, dynamic>()))); })(),
      triggeredIntent: (() { final guardedValue = map['triggeredIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3Intent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

