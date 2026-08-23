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
  const GetEvaluationArgs({
    required this.evaluationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationId': evaluationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationArgs(
      evaluationId: pulumi.Input.fromValue(map['evaluationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
