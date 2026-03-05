// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_details_override.dart';
import 'entity_mapping.dart';
import 'event_grouping_settings.dart';
import 'incident_configuration.dart';
import 'trigger_operator.dart';

/// {@template pulumi_securityinsights_scheduled_alert_rule_args_doc}
/// The set of arguments for ScheduledAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_scheduled_alert_rule_args_doc}
class ScheduledAlertRuleArgs {
  /// The alert details override settings
  final pulumi.Input<AlertDetailsOverride>? alertDetailsOverride;
  /// The Name of the alert rule template used to create this rule.
  final pulumi.Input<String>? alertRuleTemplateName;
  /// Dictionary of string key-value pairs of columns to be attached to the alert
  final pulumi.Input<Map<String, String>>? customDetails;
  /// The description of the alert rule.
  final pulumi.Input<String>? description;
  /// The display name for alerts created by this alert rule.
  final pulumi.Input<String> displayName;
  /// Determines whether this alert rule is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// Array of the entity mappings of the alert rule
  final pulumi.Input<List<EntityMapping>>? entityMappings;
  /// The event grouping settings.
  final pulumi.Input<EventGroupingSettings>? eventGroupingSettings;
  /// The settings of the incidents that created from alerts triggered by this analytics rule
  final pulumi.Input<IncidentConfiguration>? incidentConfiguration;
  /// The kind of the alert rule
  /// Expected value is 'Scheduled'.
  final pulumi.Input<String> kind;
  /// The query that creates alerts for this rule.
  final pulumi.Input<String> query;
  /// The frequency (in ISO 8601 duration format) for this alert rule to run.
  final pulumi.Input<String> queryFrequency;
  /// The period (in ISO 8601 duration format) that this alert rule looks at.
  final pulumi.Input<String> queryPeriod;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String>? ruleId;
  /// The severity for alerts created by this alert rule.
  final pulumi.Input<String> severity;
  /// The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  final pulumi.Input<String> suppressionDuration;
  /// Determines whether the suppression for this alert rule is enabled or disabled.
  final pulumi.Input<bool> suppressionEnabled;
  /// The tactics of the alert rule
  final pulumi.Input<List<String>>? tactics;
  /// The techniques of the alert rule
  final pulumi.Input<List<String>>? techniques;
  /// The version of the alert rule template used to create this rule - in format &lt;a.b.c&gt;, where all are numbers, for example 0 &lt;1.0.2&gt;
  final pulumi.Input<String>? templateVersion;
  /// The operation against the threshold that triggers alert rule.
  final pulumi.Input<TriggerOperator> triggerOperator;
  /// The threshold triggers this alert rule.
  final pulumi.Input<int> triggerThreshold;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ScheduledAlertRuleArgs].
  /// [alertDetailsOverride] The alert details override settings
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [customDetails] Dictionary of string key-value pairs of columns to be attached to the alert
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [entityMappings] Array of the entity mappings of the alert rule
  /// [eventGroupingSettings] The event grouping settings.
  /// [incidentConfiguration] The settings of the incidents that created from alerts triggered by this analytics rule
  /// [kind] The kind of the alert rule
  /// [query] The query that creates alerts for this rule.
  /// [queryFrequency] The frequency (in ISO 8601 duration format) for this alert rule to run.
  /// [queryPeriod] The period (in ISO 8601 duration format) that this alert rule looks at.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [severity] The severity for alerts created by this alert rule.
  /// [suppressionDuration] The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  /// [suppressionEnabled] Determines whether the suppression for this alert rule is enabled or disabled.
  /// [tactics] The tactics of the alert rule
  /// [techniques] The techniques of the alert rule
  /// [templateVersion] The version of the alert rule template used to create this rule - in format &lt;a.b.c&gt;, where all are numbers, for example 0 &lt;1.0.2&gt;
  /// [triggerOperator] The operation against the threshold that triggers alert rule.
  /// [triggerThreshold] The threshold triggers this alert rule.
  /// [workspaceName] The name of the workspace.
  ScheduledAlertRuleArgs({
    this.alertDetailsOverride,
    this.alertRuleTemplateName,
    this.customDetails,
    this.description,
    required this.displayName,
    required this.enabled,
    this.entityMappings,
    this.eventGroupingSettings,
    this.incidentConfiguration,
    required this.kind,
    required this.query,
    required this.queryFrequency,
    required this.queryPeriod,
    required this.resourceGroupName,
    this.ruleId,
    required this.severity,
    required this.suppressionDuration,
    required this.suppressionEnabled,
    this.tactics,
    this.techniques,
    this.templateVersion,
    required this.triggerOperator,
    required this.triggerThreshold,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDetailsOverride': ?pulumi.Input.mapOptionalInputValue<AlertDetailsOverride, Map<String, dynamic>>(alertDetailsOverride, (value) => value.toMap()),
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'customDetails': ?customDetails,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'entityMappings': ?pulumi.Input.mapOptionalInputValue<List<EntityMapping>, List<Map<String, dynamic>>>(entityMappings, (value) => pulumi.Input.encodeList<EntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventGroupingSettings': ?pulumi.Input.mapOptionalInputValue<EventGroupingSettings, Map<String, dynamic>>(eventGroupingSettings, (value) => value.toMap()),
      'incidentConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentConfiguration, Map<String, dynamic>>(incidentConfiguration, (value) => value.toMap()),
      'kind': kind,
      'query': query,
      'queryFrequency': queryFrequency,
      'queryPeriod': queryPeriod,
      'resourceGroupName': resourceGroupName,
      'ruleId': ?ruleId,
      'severity': severity,
      'suppressionDuration': suppressionDuration,
      'suppressionEnabled': suppressionEnabled,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'templateVersion': ?templateVersion,
      'triggerOperator': pulumi.Input.mapInputValue<TriggerOperator, String>(triggerOperator, (value) => value.wireValue),
      'triggerThreshold': triggerThreshold,
      'workspaceName': workspaceName,
    };
  }

  factory ScheduledAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledAlertRuleArgs(
      alertDetailsOverride: (() { final guardedValue = map['alertDetailsOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertDetailsOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleTemplateName: (() { final guardedValue = map['alertRuleTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      entityMappings: (() { final guardedValue = map['entityMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntityMapping>(guardedValue, (value) => EntityMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventGroupingSettings: (() { final guardedValue = map['eventGroupingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventGroupingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incidentConfiguration: (() { final guardedValue = map['incidentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      queryFrequency: pulumi.Input.fromValue(map['queryFrequency'] as String),
      queryPeriod: pulumi.Input.fromValue(map['queryPeriod'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      suppressionDuration: pulumi.Input.fromValue(map['suppressionDuration'] as String),
      suppressionEnabled: pulumi.Input.fromValue(map['suppressionEnabled'] as bool),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerOperator: pulumi.Input.fromValue(TriggerOperator.fromValue(map['triggerOperator']! as String)),
      triggerThreshold: pulumi.Input.fromValue(map['triggerThreshold'] as int),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

