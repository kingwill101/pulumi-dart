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
  const GetWorkflowConfigArgs({
    required this.location,
    this.project,
    required this.repositoryId,
    required this.workflowConfigId,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      workflowConfigId: pulumi.Input.fromValue(map['workflowConfigId'] as String),
    );
  }
}

