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
    required pulumi.Output<String> executionId,
    required pulumi.Output<String> historyId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> stepId,
  }) :
      executionId = pulumi.Input.asInput<String>(executionId),
      historyId = pulumi.Input.asInput<String>(historyId),
      project = pulumi.Input.asOptionalInput<String>(project),
      stepId = pulumi.Input.asInput<String>(stepId);

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
      executionId: pulumi.Output.create<String>(map['executionId'] as String),
      historyId: pulumi.Output.create<String>(map['historyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      stepId: pulumi.Output.create<String>(map['stepId'] as String),
    );
  }
}

