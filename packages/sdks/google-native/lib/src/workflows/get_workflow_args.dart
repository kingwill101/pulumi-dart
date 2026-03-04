// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflows_v1_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_v1_get_workflow_args_doc}
class GetWorkflowArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? revisionId;
  final pulumi.Input<String> workflowId;

  /// Creates a new [GetWorkflowArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [revisionId] Optional.
  /// [workflowId] Required.
  GetWorkflowArgs({
    required this.location,
    this.project,
    this.revisionId,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'revisionId': ?revisionId,
      'workflowId': workflowId,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revisionId: (() {
        final guardedValue = map['revisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workflowId: pulumi.Input.fromValue(map['workflowId'] as String),
    );
  }
}
