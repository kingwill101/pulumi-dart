// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn_user_input.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn_virtual_agent_output.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3ConversationTurn {
  /// The user input.
  final pulumi.Input<GoogleCloudDialogflowCxV3ConversationTurnUserInput>? userInput;
  /// The virtual agent output.
  final pulumi.Input<GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput>? virtualAgentOutput;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  const GoogleCloudDialogflowCxV3ConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ConversationTurnUserInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
      'virtualAgentOutput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput, Map<String, dynamic>>(virtualAgentOutput, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurn.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurn(
      userInput: (() { final guardedValue = map['userInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualAgentOutput: (() { final guardedValue = map['virtualAgentOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
