// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_automation_rule_args_doc}
/// Arguments for getAutomationRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_automation_rule_args_doc}
class GetAutomationRuleArgs {
  /// Automation rule ID
  final pulumi.Input<String> automationRuleId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetAutomationRuleArgs].
  /// [automationRuleId] Automation rule ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetAutomationRuleArgs({
    required this.automationRuleId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationRuleId': automationRuleId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAutomationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationRuleArgs(
      automationRuleId: pulumi.Input.fromValue(
        map['automationRuleId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
