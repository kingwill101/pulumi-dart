// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_expectation_agent_response.dart';
import 'evaluation_golden_turn_step_expectation_agent_transfer.dart';
import 'evaluation_golden_turn_step_expectation_mock_tool_response.dart';
import 'evaluation_golden_turn_step_expectation_tool_call.dart';
import 'evaluation_golden_turn_step_expectation_tool_response.dart';
import 'evaluation_golden_turn_step_expectation_updated_variables.dart';

class EvaluationGoldenTurnStepExpectation {
  /// Expectation on agent response.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentResponse>? agentResponse;
  /// Expectation on agent transfer.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationAgentTransfer>? agentTransfer;
  /// A mock response to provide if a tool is called.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationMockToolResponse>? mockToolResponse;
  /// A note describing the expectation.
  final pulumi.Input<String>? note;
  /// Expectation on tool call.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationToolCall>? toolCall;
  /// Expectation on tool response.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationToolResponse>? toolResponse;
  /// Expectation on updated variables.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepExpectationUpdatedVariables>? updatedVariables;

  /// Creates a new [EvaluationGoldenTurnStepExpectation].
  /// [agentResponse] Expectation on agent response.
  /// [agentTransfer] Expectation on agent transfer.
  /// [mockToolResponse] A mock response to provide if a tool is called.
  /// [note] A note describing the expectation.
  /// [toolCall] Expectation on tool call.
  /// [toolResponse] Expectation on tool response.
  /// [updatedVariables] Expectation on updated variables.
  const EvaluationGoldenTurnStepExpectation({
    this.agentResponse,
    this.agentTransfer,
    this.mockToolResponse,
    this.note,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentResponse, Map<String, dynamic>>(agentResponse, (value) => value.toMap()),
      'agentTransfer': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationAgentTransfer, Map<String, dynamic>>(agentTransfer, (value) => value.toMap()),
      'mockToolResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationMockToolResponse, Map<String, dynamic>>(mockToolResponse, (value) => value.toMap()),
      'note': ?note,
      'toolCall': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationToolCall, Map<String, dynamic>>(toolCall, (value) => value.toMap()),
      'toolResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationToolResponse, Map<String, dynamic>>(toolResponse, (value) => value.toMap()),
      'updatedVariables': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepExpectationUpdatedVariables, Map<String, dynamic>>(updatedVariables, (value) => value.toMap()),
    };
  }

  factory EvaluationGoldenTurnStepExpectation.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectation(
      agentResponse: (() { final guardedValue = map['agentResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentTransfer: (() { final guardedValue = map['agentTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationAgentTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mockToolResponse: (() { final guardedValue = map['mockToolResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationMockToolResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCall: (() { final guardedValue = map['toolCall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationToolCall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolResponse: (() { final guardedValue = map['toolResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationToolResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedVariables: (() { final guardedValue = map['updatedVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepExpectationUpdatedVariables.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
