// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent_response.dart';
import 'google_cloud_dialogflow_cx_v3_page_response.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_text_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_run_difference_response.dart';
import 'google_rpc_status_response_dialogflow_v3.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3PageResponse> currentPage;
  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final pulumi.Input<Map<String, String>> diagnosticInfo;
  /// If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TestRunDifferenceResponse>> differences;
  /// The session parameters available to the bot at this point.
  final pulumi.Input<Map<String, String>> sessionParameters;
  /// Response error from the agent in the test result. If set, other output is empty.
  final pulumi.Input<GoogleRpcStatusResponseDialogflowV3> status;
  /// The text responses from the agent for the turn.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ResponseMessageTextResponse>> textResponses;
  /// The Intent that triggered the response. Only name and displayName will be set.
  final pulumi.Input<GoogleCloudDialogflowCxV3IntentResponse> triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [differences] If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse({
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
      'currentPage': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3PageResponse, Map<String, dynamic>>(currentPage, (value) => value.toMap()),
      'diagnosticInfo': diagnosticInfo,
      'differences': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3TestRunDifferenceResponse>, List<Map<String, dynamic>>>(differences, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TestRunDifferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionParameters': sessionParameters,
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponseDialogflowV3, Map<String, dynamic>>(status, (value) => value.toMap()),
      'textResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3ResponseMessageTextResponse>, List<Map<String, dynamic>>>(textResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ResponseMessageTextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggeredIntent': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3IntentResponse, Map<String, dynamic>>(triggeredIntent, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse(
      currentPage: (GoogleCloudDialogflowCxV3PageResponse.fromMap((map['currentPage'] as Map).cast<String, dynamic>())).input(),
      diagnosticInfo: ((map['diagnosticInfo'] as Map).cast<String, String>()).input(),
      differences: (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TestRunDifferenceResponse>(map['differences'], (value) => GoogleCloudDialogflowCxV3TestRunDifferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sessionParameters: ((map['sessionParameters'] as Map).cast<String, String>()).input(),
      status: (GoogleRpcStatusResponseDialogflowV3.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      textResponses: (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ResponseMessageTextResponse>(map['textResponses'], (value) => GoogleCloudDialogflowCxV3ResponseMessageTextResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggeredIntent: (GoogleCloudDialogflowCxV3IntentResponse.fromMap((map['triggeredIntent'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

