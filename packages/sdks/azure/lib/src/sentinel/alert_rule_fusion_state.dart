// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_fusion_source.dart';

/// Input properties used for looking up and filtering AlertRuleFusion resources.
class AlertRuleFusionState {
  /// The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  final pulumi.Input<String>? name;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<AlertRuleFusionSource>>? sources;

  /// Creates a new [AlertRuleFusionState].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  /// [enabled] Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created.
  /// [name] Optional.
  /// [sources] One or more `source` blocks as defined below.
  AlertRuleFusionState({
    pulumi.Output<String>? alertRuleTemplateGuid,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<List<AlertRuleFusionSource>>? sources,
  }) :
      alertRuleTemplateGuid = pulumi.Input.asOptionalInput<String>(alertRuleTemplateGuid),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sources = pulumi.Input.asOptionalInput<List<AlertRuleFusionSource>>(sources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleFusionSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AlertRuleFusionSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleFusionState.fromMap(Map<String, dynamic> map) {
    return AlertRuleFusionState(
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<AlertRuleFusionSource>>(pulumi.Input.decodeList<AlertRuleFusionSource>(map['sources'], (value) => AlertRuleFusionSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

