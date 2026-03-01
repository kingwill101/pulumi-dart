// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_alert_rule_threat_intelligence_alert_rule_threat_intelligence_args_doc}
/// The set of arguments for AlertRuleThreatIntelligence.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_threat_intelligence_alert_rule_threat_intelligence_args_doc}
class AlertRuleThreatIntelligenceArgs {
  /// The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String> alertRuleTemplateGuid;
  /// Whether the Threat Intelligence Alert rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertRuleThreatIntelligenceArgs].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  /// [enabled] Whether the Threat Intelligence Alert rule enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created.
  AlertRuleThreatIntelligenceArgs({
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

  factory AlertRuleThreatIntelligenceArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleThreatIntelligenceArgs(
      alertRuleTemplateGuid: pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

