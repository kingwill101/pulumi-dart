// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_workflow_invocation_args_doc}
/// Arguments for getWorkflowInvocation.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_workflow_invocation_args_doc}
class GetWorkflowInvocationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowInvocationId;

  /// Creates a new [GetWorkflowInvocationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workflowInvocationId] Required.
  GetWorkflowInvocationArgs({
    required this.location,
    this.project,
    required this.repositoryId,
    required this.workflowInvocationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workflowInvocationId': workflowInvocationId,
    };
  }

  factory GetWorkflowInvocationArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInvocationArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      workflowInvocationId: pulumi.Input.fromValue(map['workflowInvocationId'] as String),
    );
  }
}

