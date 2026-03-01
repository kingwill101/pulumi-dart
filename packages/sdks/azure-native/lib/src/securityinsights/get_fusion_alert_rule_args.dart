// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_fusion_alert_rule_args_doc}
/// Arguments for getFusionAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_fusion_alert_rule_args_doc}
class GetFusionAlertRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String> ruleId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFusionAlertRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [workspaceName] The name of the workspace.
  GetFusionAlertRuleArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleId,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleId = pulumi.Input.asInput<String>(ruleId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleId': ruleId,
      'workspaceName': workspaceName,
    };
  }

  factory GetFusionAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFusionAlertRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleId: pulumi.Output.create<String>(map['ruleId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

