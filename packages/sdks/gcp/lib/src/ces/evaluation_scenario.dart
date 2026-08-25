// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_scenario_scenario_expectation.dart';
import 'evaluation_scenario_user_fact.dart';

class EvaluationScenario {
  /// Evaluation expectations.
  final pulumi.Input<List<String>?>? evaluationExpectations;
  /// Max turns.
  final pulumi.Input<int?>? maxTurns;
  /// Rubrics.
  final pulumi.Input<List<String>> rubrics;
  /// Scenario expectations.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationScenarioScenarioExpectation>> scenarioExpectations;
  /// The task to evaluate.
  final pulumi.Input<String> task;
  /// Task completion behavior.
  final pulumi.Input<String?>? taskCompletionBehavior;
  /// Facts about the user as a key value pair.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationScenarioUserFact>?>? userFacts;
  /// User goal behavior.
  final pulumi.Input<String?>? userGoalBehavior;
  /// Variables / Session Parameters as context for the session, keyed by variable names. Members of this struct will override any default values set by the system.
  final pulumi.Input<Map<String, String>?>? variableOverrides;

  /// Creates a new [EvaluationScenario].
  /// [evaluationExpectations] Evaluation expectations.
  /// [maxTurns] Max turns.
  /// [rubrics] Rubrics.
  /// [scenarioExpectations] Scenario expectations.
  /// [task] The task to evaluate.
  /// [taskCompletionBehavior] Task completion behavior.
  /// [userFacts] Facts about the user as a key value pair.
  /// [userGoalBehavior] User goal behavior.
  /// [variableOverrides] Variables / Session Parameters as context for the session, keyed by variable names. Members of this struct will override any default values set by the system.
  const EvaluationScenario({
    this.evaluationExpectations,
    this.maxTurns,
    required this.rubrics,
    required this.scenarioExpectations,
    required this.task,
    this.taskCompletionBehavior,
    this.userFacts,
    this.userGoalBehavior,
    this.variableOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationExpectations': ?evaluationExpectations,
      'maxTurns': ?maxTurns,
      'rubrics': rubrics,
      'scenarioExpectations': pulumi.Input.mapInputValue<List<EvaluationScenarioScenarioExpectation>, List<Map<String, dynamic>>>(scenarioExpectations, (value) => pulumi.Input.encodeList<EvaluationScenarioScenarioExpectation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'task': task,
      'taskCompletionBehavior': ?taskCompletionBehavior,
      'userFacts': ?pulumi.Input.mapOptionalInputValue<List<EvaluationScenarioUserFact>, List<Map<String, dynamic>>>(userFacts, (value) => pulumi.Input.encodeList<EvaluationScenarioUserFact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userGoalBehavior': ?userGoalBehavior,
      'variableOverrides': ?variableOverrides,
    };
  }

  factory EvaluationScenario.fromMap(Map<String, dynamic> map) {
    return EvaluationScenario(
      evaluationExpectations: (() { final guardedValue = map['evaluationExpectations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxTurns: (() { final guardedValue = map['maxTurns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rubrics: pulumi.Input.fromValue((map['rubrics'] as List).cast<String>()),
      scenarioExpectations: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationScenarioScenarioExpectation>(map['scenarioExpectations']!, (value) => EvaluationScenarioScenarioExpectation.fromMap((value as Map).cast<String, dynamic>()))),
      task: pulumi.Input.fromValue(map['task'] as String),
      taskCompletionBehavior: (() { final guardedValue = map['taskCompletionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userFacts: (() { final guardedValue = map['userFacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationScenarioUserFact>(guardedValue, (value) => EvaluationScenarioUserFact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userGoalBehavior: (() { final guardedValue = map['userGoalBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableOverrides: (() { final guardedValue = map['variableOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
