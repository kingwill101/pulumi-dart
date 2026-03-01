// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_workflow_config_args_doc}
/// Arguments for getWorkflowConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_workflow_config_args_doc}
class GetWorkflowConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowConfigId;

  /// Creates a new [GetWorkflowConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workflowConfigId] Required.
  GetWorkflowConfigArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    required pulumi.Output<String> workflowConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      workflowConfigId = pulumi.Input.asInput<String>(workflowConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workflowConfigId': workflowConfigId,
    };
  }

  factory GetWorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowConfigArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      workflowConfigId: pulumi.Output.create<String>(map['workflowConfigId'] as String),
    );
  }
}

