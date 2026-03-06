// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflows_v1beta_get_workflow_workflows_v1beta_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_v1beta_get_workflow_workflows_v1beta_args_doc}
class GetWorkflowWorkflowsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  /// Creates a new [GetWorkflowWorkflowsV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workflowId] Required.
  const GetWorkflowWorkflowsV1betaArgs({
    required this.location,
    this.project,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workflowId': workflowId,
    };
  }

  factory GetWorkflowWorkflowsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowWorkflowsV1betaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowId: pulumi.Input.fromValue(map['workflowId'] as String),
    );
  }
}

