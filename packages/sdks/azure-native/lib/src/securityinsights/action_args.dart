// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_action_args_doc}
/// The set of arguments for Action.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_action_args_doc}
class ActionArgs {
  /// Action ID
  final pulumi.Input<String>? actionId;
  /// Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}.
  final pulumi.Input<String> logicAppResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String> ruleId;
  /// Logic App Callback URL for this specific workflow.
  final pulumi.Input<String> triggerUri;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ActionArgs].
  /// [actionId] Action ID
  /// [logicAppResourceId] Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [triggerUri] Logic App Callback URL for this specific workflow.
  /// [workspaceName] The name of the workspace.
  const ActionArgs({
    this.actionId,
    required this.logicAppResourceId,
    required this.resourceGroupName,
    required this.ruleId,
    required this.triggerUri,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': ?actionId,
      'logicAppResourceId': logicAppResourceId,
      'resourceGroupName': resourceGroupName,
      'ruleId': ruleId,
      'triggerUri': triggerUri,
      'workspaceName': workspaceName,
    };
  }

  factory ActionArgs.fromMap(Map<String, dynamic> map) {
    return ActionArgs(
      actionId: (() { final guardedValue = map['actionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicAppResourceId: pulumi.Input.fromValue(map['logicAppResourceId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      triggerUri: pulumi.Input.fromValue(map['triggerUri'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
