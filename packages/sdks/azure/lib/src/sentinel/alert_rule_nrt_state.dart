// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_alert_details_override.dart';
import 'alert_rule_nrt_entity_mapping.dart';
import 'alert_rule_nrt_event_grouping.dart';
import 'alert_rule_nrt_incident.dart';
import 'alert_rule_nrt_sentinel_entity_mapping.dart';

/// Input properties used for looking up and filtering AlertRuleNrt resources.
class AlertRuleNrtState {
  /// An `alertDetailsOverride` block as defined below.
  final pulumi.Input<List<AlertRuleNrtAlertDetailsOverride>?>? alertDetailsOverrides;
  /// The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String?>? alertRuleTemplateGuid;
  /// The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String?>? alertRuleTemplateVersion;
  /// A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  final pulumi.Input<Map<String, String>?>? customDetails;
  /// The description of this Sentinel NRT Alert Rule.
  final pulumi.Input<String?>? description;
  /// The friendly name of this Sentinel NRT Alert Rule.
  final pulumi.Input<String?>? displayName;
  /// Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// A list of `entityMapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleNrtEntityMapping>?>? entityMappings;
  /// A `eventGrouping` block as defined below.
  final pulumi.Input<AlertRuleNrtEventGrouping?>? eventGrouping;
  /// A `incident` block as defined below.
  final pulumi.Input<AlertRuleNrtIncident?>? incident;
  /// The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String?>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  final pulumi.Input<String?>? name;
  /// The query of this Sentinel NRT Alert Rule.
  final pulumi.Input<String?>? query;
  /// A list of `sentinelEntityMapping` blocks as defined below.
  ///
  /// &gt; **Note:** `entityMapping` and `sentinelEntityMapping` together can't exceed 5.
  final pulumi.Input<List<AlertRuleNrtSentinelEntityMapping>?>? sentinelEntityMappings;
  /// The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  final pulumi.Input<String?>? severity;
  /// If `suppressionEnabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  final pulumi.Input<String?>? suppressionDuration;
  /// Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`.
  final pulumi.Input<bool?>? suppressionEnabled;
  /// A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`.
  final pulumi.Input<List<String>?>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>?>? techniques;

  /// Creates a new [AlertRuleNrtState].
  /// [alertDetailsOverrides] An `alertDetailsOverride` block as defined below.
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [alertRuleTemplateVersion] The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [customDetails] A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  /// [description] The description of this Sentinel NRT Alert Rule.
  /// [displayName] The friendly name of this Sentinel NRT Alert Rule.
  /// [enabled] Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`.
  /// [entityMappings] A list of `entityMapping` blocks as defined below.
  /// [eventGrouping] A `eventGrouping` block as defined below.
  /// [incident] A `incident` block as defined below.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created.
  /// [query] The query of this Sentinel NRT Alert Rule.
  /// [sentinelEntityMappings] A list of `sentinelEntityMapping` blocks as defined below.
  /// [severity] The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  /// [suppressionDuration] If `suppressionEnabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  /// [suppressionEnabled] Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`.
  /// [tactics] A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  const AlertRuleNrtState({
    this.alertDetailsOverrides,
    this.alertRuleTemplateGuid,
    this.alertRuleTemplateVersion,
    this.customDetails,
    this.description,
    this.displayName,
    this.enabled,
    this.entityMappings,
    this.eventGrouping,
    this.incident,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.query,
    this.sentinelEntityMappings,
    this.severity,
    this.suppressionDuration,
    this.suppressionEnabled,
    this.tactics,
    this.techniques,
  });

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
      alertDetailsOverrides: (() { final guardedValue = map['alertDetailsOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleNrtAlertDetailsOverride>(guardedValue, (value) => AlertRuleNrtAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alertRuleTemplateGuid: (() { final guardedValue = map['alertRuleTemplateGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertRuleTemplateVersion: (() { final guardedValue = map['alertRuleTemplateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityMappings: (() { final guardedValue = map['entityMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleNrtEntityMapping>(guardedValue, (value) => AlertRuleNrtEntityMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventGrouping: (() { final guardedValue = map['eventGrouping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertRuleNrtEventGrouping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incident: (() { final guardedValue = map['incident']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertRuleNrtIncident.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sentinelEntityMappings: (() { final guardedValue = map['sentinelEntityMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleNrtSentinelEntityMapping>(guardedValue, (value) => AlertRuleNrtSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressionDuration: (() { final guardedValue = map['suppressionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressionEnabled: (() { final guardedValue = map['suppressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
