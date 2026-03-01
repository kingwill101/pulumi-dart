// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertRuleThreatIntelligence resources.
class AlertRuleThreatIntelligenceState {
  /// The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// Whether the Threat Intelligence Alert rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertRuleThreatIntelligenceState].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  /// [enabled] Whether the Threat Intelligence Alert rule enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  AlertRuleThreatIntelligenceState({
    pulumi.Output<String>? alertRuleTemplateGuid,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
  }) :
      alertRuleTemplateGuid = pulumi.Input.asOptionalInput<String>(alertRuleTemplateGuid),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory AlertRuleThreatIntelligenceState.fromMap(Map<String, dynamic> map) {
    return AlertRuleThreatIntelligenceState(
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

