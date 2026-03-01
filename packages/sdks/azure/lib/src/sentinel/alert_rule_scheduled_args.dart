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
  /// An `alert_details_override` block as defined below.
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
  /// A list of `entity_mapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleScheduledEntityMapping>>? entityMappings;
  /// A `event_grouping` block as defined below.
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
  /// > **Note:** `query_period` must larger than or equal to `query_frequency`, which ensures there is no gaps in the overall query coverage.
  final pulumi.Input<String>? queryPeriod;
  /// A list of `sentinel_entity_mapping` blocks as defined below.
  ///
  /// > **Note:** `entity_mapping` and `sentinel_entity_mapping` together can't exceed 10.
  final pulumi.Input<List<AlertRuleScheduledSentinelEntityMapping>>? sentinelEntityMappings;
  /// The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  final pulumi.Input<String> severity;
  /// If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  ///
  /// > **Note:** `suppression_duration` must larger than or equal to `query_frequency`, otherwise the suppression has no actual effect since no query will happen during the suppression duration.
  final pulumi.Input<String>? suppressionDuration;
  /// Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`.
  final pulumi.Input<bool>? suppressionEnabled;
  /// A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`.
  final pulumi.Input<List<String>>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? techniques;
  /// The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`.
  final pulumi.Input<String>? triggerOperator;
  /// The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`.
  final pulumi.Input<int>? triggerThreshold;

  /// Creates a new [AlertRuleScheduledArgs].
  /// [alertDetailsOverrides] An `alert_details_override` block as defined below.
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [alertRuleTemplateVersion] The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule.
  /// [customDetails] A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts.
  /// [description] The description of this Sentinel Scheduled Alert Rule.
  /// [displayName] The friendly name of this Sentinel Scheduled Alert Rule.
  /// [enabled] Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`.
  /// [entityMappings] A list of `entity_mapping` blocks as defined below.
  /// [eventGrouping] A `event_grouping` block as defined below.
  /// [incident] A `incident` block as defined below.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created.
  /// [query] The query of this Sentinel Scheduled Alert Rule.
  /// [queryFrequency] The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`.
  /// [queryPeriod] The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`.
  /// [sentinelEntityMappings] A list of `sentinel_entity_mapping` blocks as defined below.
  /// [severity] The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`.
  /// [suppressionDuration] If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`.
  /// [suppressionEnabled] Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`.
  /// [tactics] A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [triggerOperator] The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`.
  /// [triggerThreshold] The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`.
  AlertRuleScheduledArgs({
    pulumi.Output<List<AlertRuleScheduledAlertDetailsOverride>>? alertDetailsOverrides,
    pulumi.Output<String>? alertRuleTemplateGuid,
    pulumi.Output<String>? alertRuleTemplateVersion,
    pulumi.Output<Map<String, String>>? customDetails,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<AlertRuleScheduledEntityMapping>>? entityMappings,
    pulumi.Output<AlertRuleScheduledEventGrouping>? eventGrouping,
    pulumi.Output<AlertRuleScheduledIncident>? incident,
    required pulumi.Output<String> logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> query,
    pulumi.Output<String>? queryFrequency,
    pulumi.Output<String>? queryPeriod,
    pulumi.Output<List<AlertRuleScheduledSentinelEntityMapping>>? sentinelEntityMappings,
    required pulumi.Output<String> severity,
    pulumi.Output<String>? suppressionDuration,
    pulumi.Output<bool>? suppressionEnabled,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
    pulumi.Output<String>? triggerOperator,
    pulumi.Output<int>? triggerThreshold,
  }) :
      alertDetailsOverrides = pulumi.Input.asOptionalInput<List<AlertRuleScheduledAlertDetailsOverride>>(alertDetailsOverrides),
      alertRuleTemplateGuid = pulumi.Input.asOptionalInput<String>(alertRuleTemplateGuid),
      alertRuleTemplateVersion = pulumi.Input.asOptionalInput<String>(alertRuleTemplateVersion),
      customDetails = pulumi.Input.asOptionalInput<Map<String, String>>(customDetails),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entityMappings = pulumi.Input.asOptionalInput<List<AlertRuleScheduledEntityMapping>>(entityMappings),
      eventGrouping = pulumi.Input.asOptionalInput<AlertRuleScheduledEventGrouping>(eventGrouping),
      incident = pulumi.Input.asOptionalInput<AlertRuleScheduledIncident>(incident),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asInput<String>(query),
      queryFrequency = pulumi.Input.asOptionalInput<String>(queryFrequency),
      queryPeriod = pulumi.Input.asOptionalInput<String>(queryPeriod),
      sentinelEntityMappings = pulumi.Input.asOptionalInput<List<AlertRuleScheduledSentinelEntityMapping>>(sentinelEntityMappings),
      severity = pulumi.Input.asInput<String>(severity),
      suppressionDuration = pulumi.Input.asOptionalInput<String>(suppressionDuration),
      suppressionEnabled = pulumi.Input.asOptionalInput<bool>(suppressionEnabled),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      triggerOperator = pulumi.Input.asOptionalInput<String>(triggerOperator),
      triggerThreshold = pulumi.Input.asOptionalInput<int>(triggerThreshold);

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
      alertDetailsOverrides: map['alertDetailsOverrides'] == null ? null : pulumi.Output.create<List<AlertRuleScheduledAlertDetailsOverride>>(pulumi.Input.decodeList<AlertRuleScheduledAlertDetailsOverride>(map['alertDetailsOverrides'], (value) => AlertRuleScheduledAlertDetailsOverride.fromMap((value as Map).cast<String, dynamic>()))),
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      alertRuleTemplateVersion: map['alertRuleTemplateVersion'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateVersion'] as String),
      customDetails: map['customDetails'] == null ? null : pulumi.Output.create<Map<String, String>>((map['customDetails'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entityMappings: map['entityMappings'] == null ? null : pulumi.Output.create<List<AlertRuleScheduledEntityMapping>>(pulumi.Input.decodeList<AlertRuleScheduledEntityMapping>(map['entityMappings'], (value) => AlertRuleScheduledEntityMapping.fromMap((value as Map).cast<String, dynamic>()))),
      eventGrouping: map['eventGrouping'] == null ? null : pulumi.Output.create<AlertRuleScheduledEventGrouping>(AlertRuleScheduledEventGrouping.fromMap((map['eventGrouping'] as Map).cast<String, dynamic>())),
      incident: map['incident'] == null ? null : pulumi.Output.create<AlertRuleScheduledIncident>(AlertRuleScheduledIncident.fromMap((map['incident'] as Map).cast<String, dynamic>())),
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      query: pulumi.Output.create<String>(map['query'] as String),
      queryFrequency: map['queryFrequency'] == null ? null : pulumi.Output.create<String>(map['queryFrequency'] as String),
      queryPeriod: map['queryPeriod'] == null ? null : pulumi.Output.create<String>(map['queryPeriod'] as String),
      sentinelEntityMappings: map['sentinelEntityMappings'] == null ? null : pulumi.Output.create<List<AlertRuleScheduledSentinelEntityMapping>>(pulumi.Input.decodeList<AlertRuleScheduledSentinelEntityMapping>(map['sentinelEntityMappings'], (value) => AlertRuleScheduledSentinelEntityMapping.fromMap((value as Map).cast<String, dynamic>()))),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      suppressionDuration: map['suppressionDuration'] == null ? null : pulumi.Output.create<String>(map['suppressionDuration'] as String),
      suppressionEnabled: map['suppressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['suppressionEnabled'] as bool),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
      triggerOperator: map['triggerOperator'] == null ? null : pulumi.Output.create<String>(map['triggerOperator'] as String),
      triggerThreshold: map['triggerThreshold'] == null ? null : pulumi.Output.create<int>(map['triggerThreshold'] as int),
    );
  }
}

