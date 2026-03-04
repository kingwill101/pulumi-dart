// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflowexecutions_v1_get_execution_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_workflowexecutions_v1_get_execution_args_doc}
class GetExecutionArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> workflowId;

  /// Creates a new [GetExecutionArgs].
  /// [executionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [workflowId] Required.
  GetExecutionArgs({
    required this.executionId,
    required this.location,
    this.project,
    this.view,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'location': location,
      'project': ?project,
      'view': ?view,
      'workflowId': workflowId,
    };
  }

  factory GetExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      view: (() {
        final guardedValue = map['view'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workflowId: pulumi.Input.fromValue(map['workflowId'] as String),
    );
  }
}
