// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertRuleMachineLearningBehaviorAnalytics resources.
class AlertRuleMachineLearningBehaviorAnalyticsState {
  /// The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertRuleMachineLearningBehaviorAnalyticsState].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  /// [enabled] Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  /// [name] The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created.
  AlertRuleMachineLearningBehaviorAnalyticsState({
    this.alertRuleTemplateGuid,
    this.enabled,
    this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory AlertRuleMachineLearningBehaviorAnalyticsState.fromMap(Map<String, dynamic> map) {
    return AlertRuleMachineLearningBehaviorAnalyticsState(
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : (map['alertRuleTemplateGuid']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

