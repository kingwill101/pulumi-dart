// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_workflow_run_action_expression_traces_args_doc}
/// Arguments for listWorkflowRunActionExpressionTraces.
/// {@endtemplate}
/// {@macro pulumi_web_list_workflow_run_action_expression_traces_args_doc}
class ListWorkflowRunActionExpressionTracesArgs {
  /// The workflow action name.
  final pulumi.Input<String> actionName;
  /// Site name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow run name.
  final pulumi.Input<String> runName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowRunActionExpressionTracesArgs].
  /// [actionName] The workflow action name.
  /// [name] Site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runName] The workflow run name.
  /// [workflowName] The workflow name.
  const ListWorkflowRunActionExpressionTracesArgs({
    required this.actionName,
    required this.name,
    required this.resourceGroupName,
    required this.runName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'runName': runName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowRunActionExpressionTracesArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionExpressionTracesArgs(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runName: pulumi.Input.fromValue(map['runName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
