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
    required this.alertRuleTemplateGuid,
    this.enabled,
    required this.logAnalyticsWorkspaceId,
    this.name,
  });

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
      alertRuleTemplateGuid: pulumi.Input.fromValue(map['alertRuleTemplateGuid'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

