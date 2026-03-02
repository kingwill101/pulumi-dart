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
  GetWorkflowWorkflowsV1betaArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      workflowId: (map['workflowId'] as String).input(),
    );
  }
}

