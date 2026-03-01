// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloadmanager_v1_get_evaluation_args_doc}
/// Arguments for getEvaluation.
/// {@endtemplate}
/// {@macro pulumi_workloadmanager_v1_get_evaluation_args_doc}
class GetEvaluationArgs {
  final pulumi.Input<String> evaluationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEvaluationArgs].
  /// [evaluationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEvaluationArgs({
    required pulumi.Output<String> evaluationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      evaluationId = pulumi.Input.asInput<String>(evaluationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationId': evaluationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationArgs(
      evaluationId: pulumi.Output.create<String>(map['evaluationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

