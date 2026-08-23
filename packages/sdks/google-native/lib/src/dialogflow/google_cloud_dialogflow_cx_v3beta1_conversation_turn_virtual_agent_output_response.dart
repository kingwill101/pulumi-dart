// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_intent_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_page_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_run_difference_response.dart';
import 'google_rpc_status_response_dialogflow_v3beta1.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1PageResponse> currentPage;
  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final pulumi.Input<Map<String, String>> diagnosticInfo;
  /// If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse>> differences;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<Map<String, String>> sessionParameters;
  /// Response error from the agent in the test result. If set, other output is empty.
  final pulumi.Input<GoogleRpcStatusResponseDialogflowV3beta1> status;
  /// The text responses from the agent for the turn.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>> textResponses;
  /// The Intent that triggered the response. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1IntentResponse> triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [differences] If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
  const GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse({
    required this.currentPage,
    required this.diagnosticInfo,
    required this.differences,
    required this.sessionParameters,
    required this.status,
    required this.textResponses,
    required this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1PageResponse, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'diagnosticInfo': diagnosticInfo,
      'differences': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse>, List<Map<String, dynamic>>>(differences, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionParameters': sessionParameters,
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponseDialogflowV3beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
      'textResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1IntentResponse, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse(
      currentPage: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1PageResponse.fromMap((map['currentPage']! as Map).cast<String, dynamic>())),
      diagnosticInfo: pulumi.Input.fromValue((map['diagnosticInfo'] as Map).cast<String, String>()),
      differences: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse>(map['differences']!, (value) => GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sessionParameters: pulumi.Input.fromValue((map['sessionParameters'] as Map).cast<String, String>()),
      status: pulumi.Input.fromValue(GoogleRpcStatusResponseDialogflowV3beta1.fromMap((map['status']! as Map).cast<String, dynamic>())),
      textResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>(map['textResponses']!, (value) => GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse.fromMap((value as Map).cast<String, dynamic>()))),
      triggeredIntent: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1IntentResponse.fromMap((map['triggeredIntent']! as Map).cast<String, dynamic>())),
    );
  }
}
