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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workflowId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workflowId = pulumi.Input.asInput<String>(workflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workflowId': workflowId,
    };
  }

  factory GetWorkflowWorkflowsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowWorkflowsV1betaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workflowId: pulumi.Output.create<String>(map['workflowId'] as String),
    );
  }
}

