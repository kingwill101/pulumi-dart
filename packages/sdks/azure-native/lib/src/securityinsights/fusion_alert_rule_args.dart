// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_fusion_alert_rule_args_doc}
/// The set of arguments for FusionAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_fusion_alert_rule_args_doc}
class FusionAlertRuleArgs {
  /// The Name of the alert rule template used to create this rule.
  final pulumi.Input<String> alertRuleTemplateName;
  /// Determines whether this alert rule is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// The kind of the alert rule
  /// Expected value is 'Fusion'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String>? ruleId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FusionAlertRuleArgs].
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [kind] The kind of the alert rule
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [workspaceName] The name of the workspace.
  FusionAlertRuleArgs({
    required pulumi.Output<String> alertRuleTemplateName,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleId,
    required pulumi.Output<String> workspaceName,
  }) :
      alertRuleTemplateName = pulumi.Input.asInput<String>(alertRuleTemplateName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateName': alertRuleTemplateName,
      'enabled': enabled,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'ruleId': ?ruleId,
      'workspaceName': workspaceName,
    };
  }

  factory FusionAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return FusionAlertRuleArgs(
      alertRuleTemplateName: pulumi.Output.create<String>(map['alertRuleTemplateName'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

