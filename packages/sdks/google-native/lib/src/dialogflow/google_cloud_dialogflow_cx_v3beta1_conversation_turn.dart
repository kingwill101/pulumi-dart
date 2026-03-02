// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn_user_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn_virtual_agent_output.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3beta1ConversationTurn {
  /// The user input.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput>? userInput;
  /// The virtual agent output.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput>? virtualAgentOutput;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  GoogleCloudDialogflowCxV3beta1ConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
      'virtualAgentOutput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput, Map<String, dynamic>>(virtualAgentOutput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurn.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurn(
      userInput: map['userInput'] == null ? null : (GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.fromMap((map['userInput']! as Map).cast<String, dynamic>())).input(),
      virtualAgentOutput: map['virtualAgentOutput'] == null ? null : (GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromMap((map['virtualAgentOutput']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

