// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_intent.dart';
import 'google_cloud_dialogflow_cx_v3beta1_page.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text.dart';
import 'google_rpc_status_dialogflow_v3beta1.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Page>? currentPage;
  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final pulumi.Input<Map<String, String>> diagnosticInfo;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<Map<String, String>>? sessionParameters;
  /// Response error from the agent in the test result. If set, other output is empty.
  final pulumi.Input<GoogleRpcStatusDialogflowV3beta1>? status;
  /// The text responses from the agent for the turn.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ResponseMessageText>>? textResponses;
  /// The Intent that triggered the response. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Intent>? triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput({
    this.currentPage,
    required this.diagnosticInfo,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Page, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'diagnosticInfo': diagnosticInfo,
      'sessionParameters': ?sessionParameters,
      'status': ?pulumi.Input.mapOptionalInputValue<GoogleRpcStatusDialogflowV3beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
      'textResponses': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1ResponseMessageText>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ResponseMessageText, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Intent, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null ? null : (GoogleCloudDialogflowCxV3beta1Page.fromMap((map['currentPage']! as Map).cast<String, dynamic>())).input(),
      diagnosticInfo: ((map['diagnosticInfo'] as Map).cast<String, String>()).input(),
      sessionParameters: map['sessionParameters'] == null ? null : ((map['sessionParameters']! as Map).cast<String, String>()).input(),
      status: map['status'] == null ? null : (GoogleRpcStatusDialogflowV3beta1.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      textResponses: map['textResponses'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ResponseMessageText>(map['textResponses']!, (value) => GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggeredIntent: map['triggeredIntent'] == null ? null : (GoogleCloudDialogflowCxV3beta1Intent.fromMap((map['triggeredIntent']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

