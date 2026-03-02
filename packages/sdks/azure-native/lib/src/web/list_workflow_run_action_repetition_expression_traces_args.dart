// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_workflow_run_action_repetition_expression_traces_args_doc}
/// Arguments for listWorkflowRunActionRepetitionExpressionTraces.
/// {@endtemplate}
/// {@macro pulumi_web_list_workflow_run_action_repetition_expression_traces_args_doc}
class ListWorkflowRunActionRepetitionExpressionTracesArgs {
  /// The workflow action name.
  final pulumi.Input<String> actionName;
  /// Site name.
  final pulumi.Input<String> name;
  /// The workflow repetition.
  final pulumi.Input<String> repetitionName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow run name.
  final pulumi.Input<String> runName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowRunActionRepetitionExpressionTracesArgs].
  /// [actionName] The workflow action name.
  /// [name] Site name.
  /// [repetitionName] The workflow repetition.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [runName] The workflow run name.
  /// [workflowName] The workflow name.
  ListWorkflowRunActionRepetitionExpressionTracesArgs({
    required this.actionName,
    required this.name,
    required this.repetitionName,
    required this.resourceGroupName,
    required this.runName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'name': name,
      'repetitionName': repetitionName,
      'resourceGroupName': resourceGroupName,
      'runName': runName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowRunActionRepetitionExpressionTracesArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionRepetitionExpressionTracesArgs(
      actionName: (map['actionName'] as String).input(),
      name: (map['name'] as String).input(),
      repetitionName: (map['repetitionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runName: (map['runName'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}

