// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_fusion_source.dart';

/// {@template pulumi_sentinel_alert_rule_fusion_alert_rule_fusion_args_doc}
/// The set of arguments for AlertRuleFusion.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_fusion_alert_rule_fusion_args_doc}
class AlertRuleFusionArgs {
  /// The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  final pulumi.Input<String> alertRuleTemplateGuid;
  /// Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  final pulumi.Input<String?>? name;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<AlertRuleFusionSource>?>? sources;

  /// Creates a new [AlertRuleFusionArgs].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  /// [enabled] Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  /// [name] Optional.
  /// [sources] One or more `source` blocks as defined below.
  const AlertRuleFusionArgs({
    required this.alertRuleTemplateGuid,
    this.enabled,
    required this.logAnalyticsWorkspaceId,
    this.name,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': alertRuleTemplateGuid,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleFusionSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AlertRuleFusionSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleFusionArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleFusionArgs(
      alertRuleTemplateGuid: pulumi.Input.fromValue(map['alertRuleTemplateGuid'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleFusionSource>(guardedValue, (value) => AlertRuleFusionSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
