// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_test_case_conversation_turn_user_input.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output.dart';

class CxTestCaseTestCaseConversationTurn {
  /// The user input.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnUserInput>? userInput;
  /// The virtual agent output.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestCaseConversationTurnVirtualAgentOutput>? virtualAgentOutput;

  /// Creates a new [CxTestCaseTestCaseConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  const CxTestCaseTestCaseConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnUserInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
      'virtualAgentOutput': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestCaseConversationTurnVirtualAgentOutput, Map<String, dynamic>>(virtualAgentOutput, (value) => value.toMap()),
    };
  }

  factory CxTestCaseTestCaseConversationTurn.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurn(
      userInput: (() { final guardedValue = map['userInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestCaseConversationTurnUserInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualAgentOutput: (() { final guardedValue = map['virtualAgentOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestCaseConversationTurnVirtualAgentOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
