// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation_agent_response.dart';
import 'evaluation_scenario_scenario_expectation_tool_expectation.dart';

class EvaluationScenarioScenarioExpectation {
  /// Agent response.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationAgentResponse>? agentResponse;
  /// Tool expectation.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenarioScenarioExpectationToolExpectation>? toolExpectation;

  /// Creates a new [EvaluationScenarioScenarioExpectation].
  /// [agentResponse] Agent response.
  /// [toolExpectation] Tool expectation.
  const EvaluationScenarioScenarioExpectation({
    this.agentResponse,
    this.toolExpectation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentResponse': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationAgentResponse, Map<String, dynamic>>(agentResponse, (value) => value.toMap()),
      'toolExpectation': ?pulumi.Input.mapOptionalInputValue<EvaluationScenarioScenarioExpectationToolExpectation, Map<String, dynamic>>(toolExpectation, (value) => value.toMap()),
    };
  }

  factory EvaluationScenarioScenarioExpectation.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectation(
      agentResponse: (() { final guardedValue = map['agentResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationAgentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolExpectation: (() { final guardedValue = map['toolExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenarioScenarioExpectationToolExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
