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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow run name.
  final pulumi.Input<String> runName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowRunActionExpressionTracesArgs].
  /// [actionName] The workflow action name.
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [runName] The workflow run name.
  /// [workflowName] The workflow name.
  ListWorkflowRunActionExpressionTracesArgs({
    required pulumi.Output<String> actionName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> runName,
    required pulumi.Output<String> workflowName,
  }) :
      actionName = pulumi.Input.asInput<String>(actionName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runName = pulumi.Input.asInput<String>(runName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

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
      actionName: pulumi.Output.create<String>(map['actionName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runName: pulumi.Output.create<String>(map['runName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

