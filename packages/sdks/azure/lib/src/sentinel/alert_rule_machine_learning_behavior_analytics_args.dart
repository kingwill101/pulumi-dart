// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_alert_rule_machine_learning_behavior_analytics_alert_rule_machine_learning_behavior_analytics_args_doc}
/// The set of arguments for AlertRuleMachineLearningBehaviorAnalytics.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_machine_learning_behavior_analytics_alert_rule_machine_learning_behavior_analytics_args_doc}
class AlertRuleMachineLearningBehaviorAnalyticsArgs {
  /// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String> alertRuleTemplateGuid;
  /// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertRuleMachineLearningBehaviorAnalyticsArgs].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  /// [enabled] Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  /// [name] The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  AlertRuleMachineLearningBehaviorAnalyticsArgs({
    required pulumi.Output<String> alertRuleTemplateGuid,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
  }) :
      alertRuleTemplateGuid = pulumi.Input.asInput<String>(alertRuleTemplateGuid),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': alertRuleTemplateGuid,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory AlertRuleMachineLearningBehaviorAnalyticsArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleMachineLearningBehaviorAnalyticsArgs(
      alertRuleTemplateGuid: pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

