// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_tool_expectation_expected_tool_call.dart';
import 'evaluation_scenario_scenario_expectation_tool_expectation_mock_tool_response.dart';

class EvaluationScenarioScenarioExpectationToolExpectation {
  /// Expected tool call.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall>? expectedToolCall;
  /// Mock tool response.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse>? mockToolResponse;

  /// Creates a new [EvaluationScenarioScenarioExpectationToolExpectation].
  /// [expectedToolCall] Expected tool call.
  /// [mockToolResponse] Mock tool response.
  const EvaluationScenarioScenarioExpectationToolExpectation({
    this.expectedToolCall,
    this.mockToolResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedToolCall': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall, Map<String, dynamic>>(expectedToolCall, (value) => value.toMap()),
      'mockToolResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse, Map<String, dynamic>>(mockToolResponse, (value) => value.toMap()),
    };
  }

  factory EvaluationScenarioScenarioExpectationToolExpectation.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationToolExpectation(
      expectedToolCall: (() { final guardedValue = map['expectedToolCall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mockToolResponse: (() { final guardedValue = map['mockToolResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationToolExpectationMockToolResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
