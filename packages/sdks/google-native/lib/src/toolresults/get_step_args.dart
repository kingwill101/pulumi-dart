// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_toolresults_v1beta3_get_step_args_doc}
/// Arguments for getStep.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_get_step_args_doc}
class GetStepArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> stepId;

  /// Creates a new [GetStepArgs].
  /// [executionId] Required.
  /// [historyId] Required.
  /// [project] Optional.
  /// [stepId] Required.
  GetStepArgs({
    required this.executionId,
    required this.historyId,
    this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'historyId': historyId,
      'project': ?project,
      'stepId': stepId,
    };
  }

  factory GetStepArgs.fromMap(Map<String, dynamic> map) {
    return GetStepArgs(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      historyId: pulumi.Input.fromValue(map['historyId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}
