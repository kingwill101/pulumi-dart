// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workflow_workflow_v2_workflow_workflow_v2_args_doc}
/// Arguments for workflowWorkflowV2.
/// {@endtemplate}
/// {@macro pulumi_index_workflow_workflow_v2_workflow_workflow_v2_args_doc}
class WorkflowWorkflowV2Args {
  /// The name of the workflow.
  final pulumi.Input<String>? name;
  /// The namespace of the workflow.
  final pulumi.Input<String>? namespace;
  /// The id of the project to retrieve the workflow.
  /// Requires admin privileges.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Workflow client.
  final pulumi.Input<String>? region;

  /// Creates a new [WorkflowWorkflowV2Args].
  /// [name] The name of the workflow.
  /// [namespace] The namespace of the workflow.
  /// [projectId] The id of the project to retrieve the workflow.
  /// [region] The region in which to obtain the V2 Workflow client.
  WorkflowWorkflowV2Args({
    this.name,
    this.namespace,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory WorkflowWorkflowV2Args.fromMap(Map<String, dynamic> map) {
    return WorkflowWorkflowV2Args(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

