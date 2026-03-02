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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      workflowConfigId: (map['workflowConfigId'] as String).input(),
    );
  }
}

