// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_scheduled_alert_details_override.dart';
import 'alert_rule_scheduled_entity_mapping.dart';
import 'alert_rule_scheduled_event_grouping.dart';
import 'alert_rule_scheduled_incident.dart';
import 'alert_rule_scheduled_sentinel_entity_mapping.dart';

/// {@template pulumi_sentinel_alert_rule_scheduled_alert_rule_scheduled_args_doc}
/// The set of arguments for AlertRuleScheduled.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_scheduled_alert_rule_scheduled_args_doc}
class AlertRuleScheduledArgs {
  /// An `alertDetailsOverride` block as defined below.
  final pulumi.Input<List<AlertRuleScheduledAlertDetailsOverride>>? alertDetailsOverrides;
  /// The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule.
  final pulumi.Input<String>? alertRuleTemplateVersion;
  /// A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  final pulumi.Input<Map<String, String>>? customDetails;
  /// The description of this Sentinel Scheduled Alert Rule.
  final pulumi.Input<String>? description;
  /// The friendly name of this Sentinel Scheduled Alert Rule.
  final pulumi.Input<String> displayName;
  /// Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of `entityMapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleScheduledEntityMapping>>? entityMappings;
  /// A `eventGrouping` block as defined below.
  final pulumi.Input<AlertRuleScheduledEventGrouping>? eventGrouping;
  /// A `incident` block as defined below.
  final pulumi.Input<AlertRuleScheduledIncident>? incident;
  /// The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  final pulumi.Input<String>? name;
  /// The query of this Sentinel Scheduled Alert Rule.
  final pulumi.Input<String> query;
  /// The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`.
  final pulumi.Input<String>? queryFrequency;
  /// The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`.
  ///
  /// &gt; **Note:** `queryPeriod` must larger than or equal to `queryFrequency`, which ensures there is no gaps in the overall query coverage.
  final pulumi.Input<String>? queryPeriod;
  /// A list of `sentinelEntityMapping` blocks as defined below.
  ///
  /// &gt; **Note:** `entityMapping` and `sentinelEntityMapping` together can't exceed 10.
  final pulumi.Input<List<AlertRuleScheduledSentinelEntityMapping>>? sentinelEntityMappings;
  /// The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  final pulumi.Input<String> severity;
  /// If `suppressionEnabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  ///
  /// &gt; **Note:** `suppressionDuration` must larger than or equal to `queryFrequency`, otherwise the suppression has no actual effect since no query will happen during the suppression duration.
  final pulumi.Input<String>? suppressionDuration;
  /// Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`.
  final pulumi.Input<bool>? suppressionEnabled;
  /// A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`.
  final pulumi.Input<List<String>>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? techniques;
  /// The alert trigger operator, combined with `triggerThreshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`.
  final pulumi.Input<String>? triggerOperator;
  /// The baseline number of query results generated, combined with `triggerOperator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`.
  final pulumi.Input<int>? triggerThreshold;

  /// Creates a new [AlertRuleScheduledArgs].
  /// [alertDetailsOverrides] An `alertDetailsOverride` block as defined below.
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [alertRuleTemplateVersion] The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule.
  /// [customDetails] A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  /// [description] The description of this Sentinel Scheduled Alert Rule.
  /// [displayName] The friendly name of this Sentinel Scheduled Alert Rule.
  /// [enabled] Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`.
  /// [entityMappings] A list of `entityMapping` blocks as defined below.
  /// [eventGrouping] A `eventGrouping` block as defined below.
  /// [incident] A `incident` block as defined below.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [query] The query of this Sentinel Scheduled Alert Rule.
  /// [queryFrequency] The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`.
  /// [queryPeriod] The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`.
  /// [sentinelEntityMappings] A list of `sentinelEntityMapping` blocks as defined below.
  /// [severity] The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  /// [suppressionDuration] If `suppressionEnabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  /// [suppressionEnabled] Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`.
  /// [tactics] A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [triggerOperator] The alert trigger operator, combined with `triggerThreshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`.
  /// [triggerThreshold] The baseline number of query results generated, combined with `triggerOperator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`.
  const AlertRuleScheduledArgs({
    this.alertDetailsOverrides,
    this.alertRuleTemplateGuid,
    this.alertRuleTemplateVersion,
    this.customDetails,
    this.description,
    required this.displayName,
    this.enabled,
    this.entityMappings,
    this.eventGrouping,
    this.incident,
    required this.logAnalyticsWorkspaceId,
    this.name,
    required this.query,
    this.queryFrequency,
    this.queryPeriod,
    this.sentinelEntityMappings,
    required this.severity,
    this.suppressionDuration,
    this.suppressionEnabled,
    this.tactics,
    this.techniques,
    this.triggerOperator,
    this.triggerThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDetailsOverrides': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleScheduledAlertDetailsOverride>, List<Map<String, dynamic>>>(alertDetailsOverrides, (value) => pulumi.Input.encodeList<AlertRuleScheduledAlertDetailsOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'alertRuleTemplateVersion': ?alertRuleTemplateVersion,
      'customDetails': ?customDetails,
      'description': ?description,
      'displayName': displayName,
      'enabled': ?enabled,
      'entityMappings': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleScheduledEntityMapping>, List<Map<String, dynamic>>>(entityMappings, (value) => pulumi.Input.encodeList<AlertRuleScheduledEntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventGrouping': ?pulumi.Input.mapOptionalInputValue<AlertRuleScheduledEventGrouping, Map<String, dynamic>>(eventGrouping, (value) => value.toMap()),
      'incident': ?pulumi.Input.mapOptionalInputValue<AlertRuleScheduledIncident, Map<String, dynamic>>(incident, (value) => value.toMap()),
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'query': query,
      'queryFrequency': ?queryFrequency,
      'queryPeriod': ?queryPeriod,
      'sentinelEntityMappings': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleScheduledSentinelEntityMapping>, List<Map<String, dynamic>>>(sentinelEntityMappings, (value) => pulumi.Input.encodeList<AlertRuleScheduledSentinelEntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severity': severity,
      'suppressionDuration': ?suppressionDuration,
      'suppressionEnabled': ?suppressionEnabled,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'triggerOperator': ?triggerOperator,
      'triggerThreshold': ?triggerThreshold,
    };
  }

  factory AlertRuleScheduledArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledArgs(
      alertDetailsOverrides: (() { final guardedValue = map['alertDetailsOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverride>(guardedValue, (value) => AlertRuleScheduledAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alertRuleTemplateGuid: (() { final guardedValue = map['alertRuleTemplateGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertRuleTemplateVersion: (() { final guardedValue = map['alertRuleTemplateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityMappings: (() { final guardedValue = map['entityMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleScheduledEntityMapping>(guardedValue, (value) => AlertRuleScheduledEntityMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventGrouping: (() { final guardedValue = map['eventGrouping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertRuleScheduledEventGrouping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incident: (() { final guardedValue = map['incident']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertRuleScheduledIncident.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      queryFrequency: (() { final guardedValue = map['queryFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryPeriod: (() { final guardedValue = map['queryPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sentinelEntityMappings: (() { final guardedValue = map['sentinelEntityMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleScheduledSentinelEntityMapping>(guardedValue, (value) => AlertRuleScheduledSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      suppressionDuration: (() { final guardedValue = map['suppressionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressionEnabled: (() { final guardedValue = map['suppressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      triggerOperator: (() { final guardedValue = map['triggerOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerThreshold: (() { final guardedValue = map['triggerThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
