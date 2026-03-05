// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_get_workflow_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_logicapps_get_workflow_get_workflow_args_doc}
class GetWorkflowArgs {
  /// The name of the Logic App Workflow.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Logic App Workflow exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkflowArgs].
  /// [name] The name of the Logic App Workflow.
  /// [resourceGroupName] The name of the Resource Group in which the Logic App Workflow exists.
  GetWorkflowArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

