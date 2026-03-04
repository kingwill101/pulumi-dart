// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_action_args_doc}
/// Arguments for getAction.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_action_args_doc}
class GetActionArgs {
  /// Action ID
  final pulumi.Input<String> actionId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Alert rule ID
  final pulumi.Input<String> ruleId;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetActionArgs].
  /// [actionId] Action ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [workspaceName] The name of the workspace.
  GetActionArgs({
    required this.actionId,
    required this.resourceGroupName,
    required this.ruleId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': actionId,
      'resourceGroupName': resourceGroupName,
      'ruleId': ruleId,
      'workspaceName': workspaceName,
    };
  }

  factory GetActionArgs.fromMap(Map<String, dynamic> map) {
    return GetActionArgs(
      actionId: pulumi.Input.fromValue(map['actionId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
