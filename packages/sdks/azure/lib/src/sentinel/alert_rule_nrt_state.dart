// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_alert_details_override.dart';
import 'alert_rule_nrt_entity_mapping.dart';
import 'alert_rule_nrt_event_grouping.dart';
import 'alert_rule_nrt_incident.dart';
import 'alert_rule_nrt_sentinel_entity_mapping.dart';

/// Input properties used for looking up and filtering AlertRuleNrt resources.
class AlertRuleNrtState {
  /// An `alert_details_override` block as defined below.
  final pulumi.Input<List<AlertRuleNrtAlertDetailsOverride>>? alertDetailsOverrides;
  /// The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateVersion;
  /// A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  final pulumi.Input<Map<String, String>>? customDetails;
  /// The description of this Sentinel NRT Alert Rule.
  final pulumi.Input<String>? description;
  /// The friendly name of this Sentinel NRT Alert Rule.
  final pulumi.Input<String>? displayName;
  /// Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of `entity_mapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleNrtEntityMapping>>? entityMappings;
  /// A `event_grouping` block as defined below.
  final pulumi.Input<AlertRuleNrtEventGrouping>? eventGrouping;
  /// A `incident` block as defined below.
  final pulumi.Input<AlertRuleNrtIncident>? incident;
  /// The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String>? name;
  /// The query of this Sentinel NRT Alert Rule.
  final pulumi.Input<String>? query;
  /// A list of `sentinel_entity_mapping` blocks as defined below.
  ///
  /// > **Note:** `entity_mapping` and `sentinel_entity_mapping` together can't exceed 5.
  final pulumi.Input<List<AlertRuleNrtSentinelEntityMapping>>? sentinelEntityMappings;
  /// The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  final pulumi.Input<String>? severity;
  /// If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  final pulumi.Input<String>? suppressionDuration;
  /// Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`.
  final pulumi.Input<bool>? suppressionEnabled;
  /// A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`.
  final pulumi.Input<List<String>>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? techniques;

  /// Creates a new [AlertRuleNrtState].
  /// [alertDetailsOverrides] An `alert_details_override` block as defined below.
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [alertRuleTemplateVersion] The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [customDetails] A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  /// [description] The description of this Sentinel NRT Alert Rule.
  /// [displayName] The friendly name of this Sentinel NRT Alert Rule.
  /// [enabled] Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`.
  /// [entityMappings] A list of `entity_mapping` blocks as defined below.
  /// [eventGrouping] A `event_grouping` block as defined below.
  /// [incident] A `incident` block as defined below.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [query] The query of this Sentinel NRT Alert Rule.
  /// [sentinelEntityMappings] A list of `sentinel_entity_mapping` blocks as defined below.
  /// [severity] The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  /// [suppressionDuration] If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  /// [suppressionEnabled] Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`.
  /// [tactics] A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  AlertRuleNrtState({
    pulumi.Output<List<AlertRuleNrtAlertDetailsOverride>>? alertDetailsOverrides,
    pulumi.Output<String>? alertRuleTemplateGuid,
    pulumi.Output<String>? alertRuleTemplateVersion,
    pulumi.Output<Map<String, String>>? customDetails,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<AlertRuleNrtEntityMapping>>? entityMappings,
    pulumi.Output<AlertRuleNrtEventGrouping>? eventGrouping,
    pulumi.Output<AlertRuleNrtIncident>? incident,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? query,
    pulumi.Output<List<AlertRuleNrtSentinelEntityMapping>>? sentinelEntityMappings,
    pulumi.Output<String>? severity,
    pulumi.Output<String>? suppressionDuration,
    pulumi.Output<bool>? suppressionEnabled,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
  }) :
      alertDetailsOverrides = pulumi.Input.asOptionalInput<List<AlertRuleNrtAlertDetailsOverride>>(alertDetailsOverrides),
      alertRuleTemplateGuid = pulumi.Input.asOptionalInput<String>(alertRuleTemplateGuid),
      alertRuleTemplateVersion = pulumi.Input.asOptionalInput<String>(alertRuleTemplateVersion),
      customDetails = pulumi.Input.asOptionalInput<Map<String, String>>(customDetails),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entityMappings = pulumi.Input.asOptionalInput<List<AlertRuleNrtEntityMapping>>(entityMappings),
      eventGrouping = pulumi.Input.asOptionalInput<AlertRuleNrtEventGrouping>(eventGrouping),
      incident = pulumi.Input.asOptionalInput<AlertRuleNrtIncident>(incident),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asOptionalInput<String>(query),
      sentinelEntityMappings = pulumi.Input.asOptionalInput<List<AlertRuleNrtSentinelEntityMapping>>(sentinelEntityMappings),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      suppressionDuration = pulumi.Input.asOptionalInput<String>(suppressionDuration),
      suppressionEnabled = pulumi.Input.asOptionalInput<bool>(suppressionEnabled),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDetailsOverrides': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleNrtAlertDetailsOverride>, List<Map<String, dynamic>>>(alertDetailsOverrides, (value) => pulumi.Input.encodeList<AlertRuleNrtAlertDetailsOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'alertRuleTemplateVersion': ?alertRuleTemplateVersion,
      'customDetails': ?customDetails,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'entityMappings': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleNrtEntityMapping>, List<Map<String, dynamic>>>(entityMappings, (value) => pulumi.Input.encodeList<AlertRuleNrtEntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventGrouping': ?pulumi.Input.mapOptionalInputValue<AlertRuleNrtEventGrouping, Map<String, dynamic>>(eventGrouping, (value) => value.toMap()),
      'incident': ?pulumi.Input.mapOptionalInputValue<AlertRuleNrtIncident, Map<String, dynamic>>(incident, (value) => value.toMap()),
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'query': ?query,
      'sentinelEntityMappings': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleNrtSentinelEntityMapping>, List<Map<String, dynamic>>>(sentinelEntityMappings, (value) => pulumi.Input.encodeList<AlertRuleNrtSentinelEntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severity': ?severity,
      'suppressionDuration': ?suppressionDuration,
      'suppressionEnabled': ?suppressionEnabled,
      'tactics': ?tactics,
      'techniques': ?techniques,
    };
  }

  factory AlertRuleNrtState.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtState(
      alertDetailsOverrides: map['alertDetailsOverrides'] == null ? null : pulumi.Output.create<List<AlertRuleNrtAlertDetailsOverride>>(pulumi.Input.decodeList<AlertRuleNrtAlertDetailsOverride>(map['alertDetailsOverrides'], (value) => AlertRuleNrtAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>()))),
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      alertRuleTemplateVersion: map['alertRuleTemplateVersion'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateVersion'] as String),
      customDetails: map['customDetails'] == null ? null : pulumi.Output.create<Map<String, String>>((map['customDetails'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entityMappings: map['entityMappings'] == null ? null : pulumi.Output.create<List<AlertRuleNrtEntityMapping>>(pulumi.Input.decodeList<AlertRuleNrtEntityMapping>(map['entityMappings'], (value) => AlertRuleNrtEntityMapping.fromMap((value as Map).cast<String, dynamic>()))),
      eventGrouping: map['eventGrouping'] == null ? null : pulumi.Output.create<AlertRuleNrtEventGrouping>(AlertRuleNrtEventGrouping.fromMap((map['eventGrouping'] as Map).cast<String, dynamic>())),
      incident: map['incident'] == null ? null : pulumi.Output.create<AlertRuleNrtIncident>(AlertRuleNrtIncident.fromMap((map['incident'] as Map).cast<String, dynamic>())),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
      sentinelEntityMappings: map['sentinelEntityMappings'] == null ? null : pulumi.Output.create<List<AlertRuleNrtSentinelEntityMapping>>(pulumi.Input.decodeList<AlertRuleNrtSentinelEntityMapping>(map['sentinelEntityMappings'], (value) => AlertRuleNrtSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>()))),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      suppressionDuration: map['suppressionDuration'] == null ? null : pulumi.Output.create<String>(map['suppressionDuration'] as String),
      suppressionEnabled: map['suppressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['suppressionEnabled'] as bool),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
    );
  }
}

