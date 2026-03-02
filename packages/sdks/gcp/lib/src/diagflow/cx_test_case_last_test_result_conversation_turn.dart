// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn_user_input.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output.dart';

class CxTestCaseLastTestResultConversationTurn {
  /// The user input.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnUserInput>? userInput;
  /// The virtual agent output.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseLastTestResultConversationTurnVirtualAgentOutput>? virtualAgentOutput;

  /// Creates a new [CxTestCaseLastTestResultConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  CxTestCaseLastTestResultConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnUserInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
      'virtualAgentOutput': ?pulumi.Input.mapOptionalInputValue<CxTestCaseLastTestResultConversationTurnVirtualAgentOutput, Map<String, dynamic>>(virtualAgentOutput, (value) => value.toMap()),
    };
  }

  factory CxTestCaseLastTestResultConversationTurn.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurn(
      userInput: map['userInput'] == null ? null : (CxTestCaseLastTestResultConversationTurnUserInput.fromMap((map['userInput']! as Map).cast<String, dynamic>())).input(),
      virtualAgentOutput: map['virtualAgentOutput'] == null ? null : (CxTestCaseLastTestResultConversationTurnVirtualAgentOutput.fromMap((map['virtualAgentOutput']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

