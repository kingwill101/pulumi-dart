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

  factory AlertRuleThreatIntelligenceArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleThreatIntelligenceArgs(
      alertRuleTemplateGuid: (map['alertRuleTemplateGuid'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

