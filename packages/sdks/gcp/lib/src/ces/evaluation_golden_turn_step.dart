// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_agent_transfer.dart';
import 'evaluation_golden_turn_step_expectation.dart';
import 'evaluation_golden_turn_step_user_input.dart';

class EvaluationGoldenTurnStep {
  /// Represents an event indicating the transfer of the conversation to a different agent.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepAgentTransfer>? agentTransfer;
  /// Executes an expectation on the current turn to verify the agent's behavior. Note: 'user_input' and 'expectation' are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectation>? expectation;
  /// Represents user input for the conversation. Note: 'user_input' and 'expectation' are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepUserInput>? userInput;

  /// Creates a new [EvaluationGoldenTurnStep].
  /// [agentTransfer] Represents an event indicating the transfer of the conversation to a different agent.
  /// [expectation] Executes an expectation on the current turn to verify the agent's behavior. Note: 'user_input' and 'expectation' are mutually exclusive.
  /// [userInput] Represents user input for the conversation. Note: 'user_input' and 'expectation' are mutually exclusive.
  const EvaluationGoldenTurnStep({
    this.agentTransfer,
    this.expectation,
    this.userInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentTransfer': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepAgentTransfer, Map<String, dynamic>>(agentTransfer, (value) => value.toMap()),
      'expectation': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectation, Map<String, dynamic>>(expectation, (value) => value.toMap()),
      'userInput': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepUserInput, Map<String, dynamic>>(userInput, (value) => value.toMap()),
    };
  }

  factory EvaluationGoldenTurnStep.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStep(
      agentTransfer: (() { final guardedValue = map['agentTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepAgentTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectation: (() { final guardedValue = map['expectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userInput: (() { final guardedValue = map['userInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepUserInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
