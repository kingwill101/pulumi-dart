// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn_user_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn_virtual_agent_output_response.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3ConversationTurnResponse {
  /// The user input.
  final pulumi.Input<GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse> userInput;
  /// The virtual agent output.
  final pulumi.Input<GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse> virtualAgentOutput;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnResponse].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  const GoogleCloudDialogflowCxV3ConversationTurnResponse({
    required this.userInput,
    required this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse, Map<String, dynamic>>(userInput, (value) => value.toMap()),
      'virtualAgentOutput': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse, Map<String, dynamic>>(virtualAgentOutput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnResponse(
      userInput: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse.fromMap((map['userInput']! as Map).cast<String, dynamic>())),
      virtualAgentOutput: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse.fromMap((map['virtualAgentOutput']! as Map).cast<String, dynamic>())),
    );
  }
}

