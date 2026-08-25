// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden.dart';
import 'evaluation_scenario.dart';

/// {@template pulumi_ces_evaluation_evaluation_args_doc}
/// The set of arguments for Evaluation.
/// {@endtemplate}
/// {@macro pulumi_ces_evaluation_evaluation_args_doc}
class EvaluationArgs {
  /// (Required)
  final pulumi.Input<String> app;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined description of the evaluation.
  final pulumi.Input<String?>? description;
  /// User-defined display name of the evaluation.
  final pulumi.Input<String> displayName;
  /// The ID to use for the evaluation, which will become the final component of
  /// the evaluation's resource name. If not provided, a unique ID will be
  /// automatically assigned for the evaluation.
  final pulumi.Input<String> evaluationId;
  /// Golden input.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGolden?>? golden;
  /// (Required)
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Scenario input.
  /// Structure is documented below.
  final pulumi.Input<EvaluationScenario?>? scenario;
  /// User defined tags to categorize the evaluation.
  final pulumi.Input<List<String>?>? tags;

  /// Creates a new [EvaluationArgs].
  /// [app] (Required)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-defined description of the evaluation.
  /// [displayName] User-defined display name of the evaluation.
  /// [evaluationId] The ID to use for the evaluation, which will become the final component of
  /// [golden] Golden input.
  /// [location] (Required)
  /// [project] The ID of the project in which the resource belongs.
  /// [scenario] Scenario input.
  /// [tags] User defined tags to categorize the evaluation.
  const EvaluationArgs({
    required this.app,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    required this.evaluationId,
    this.golden,
    required this.location,
    this.project,
    this.scenario,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'evaluationId': evaluationId,
      'golden': ?pulumi.Input.mapOptionalInputValue<EvaluationGolden, Map<String, dynamic>>(golden, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'scenario': ?pulumi.Input.mapOptionalInputValue<EvaluationScenario, Map<String, dynamic>>(scenario, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory EvaluationArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs(
      app: pulumi.Input.fromValue(map['app'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      evaluationId: pulumi.Input.fromValue(map['evaluationId'] as String),
      golden: (() { final guardedValue = map['golden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGolden.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationScenario.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
