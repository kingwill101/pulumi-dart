// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_details_override_response.dart';
import 'entity_mapping_response.dart';
import 'event_grouping_settings_response.dart';
import 'incident_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScheduledAlertRule.
class GetScheduledAlertRuleResult {
  /// The alert details override settings
  final AlertDetailsOverrideResponse? alertDetailsOverride;
  /// The Name of the alert rule template used to create this rule.
  final String? alertRuleTemplateName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Dictionary of string key-value pairs of columns to be attached to the alert
  final Map<String, String>? customDetails;
  /// The description of the alert rule.
  final String? description;
  /// The display name for alerts created by this alert rule.
  final String displayName;
  /// Determines whether this alert rule is enabled or disabled.
  final bool enabled;
  /// Array of the entity mappings of the alert rule
  final List<EntityMappingResponse>? entityMappings;
  /// Etag of the azure resource
  final String? etag;
  /// The event grouping settings.
  final EventGroupingSettingsResponse? eventGroupingSettings;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The settings of the incidents that created from alerts triggered by this analytics rule
  final IncidentConfigurationResponse? incidentConfiguration;
  /// The kind of the alert rule
  /// Expected value is 'Scheduled'.
  final String kind;
  /// The last time that this alert rule has been modified.
  final String lastModifiedUtc;
  /// The name of the resource
  final String name;
  /// The query that creates alerts for this rule.
  final String query;
  /// The frequency (in ISO 8601 duration format) for this alert rule to run.
  final String queryFrequency;
  /// The period (in ISO 8601 duration format) that this alert rule looks at.
  final String queryPeriod;
  /// The severity for alerts created by this alert rule.
  final String severity;
  /// The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  final String suppressionDuration;
  /// Determines whether the suppression for this alert rule is enabled or disabled.
  final bool suppressionEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tactics of the alert rule
  final List<String>? tactics;
  /// The techniques of the alert rule
  final List<String>? techniques;
  /// The version of the alert rule template used to create this rule - in format &lt;a.b.c&gt;, where all are numbers, for example 0 &lt;1.0.2&gt;
  final String? templateVersion;
  /// The operation against the threshold that triggers alert rule.
  final String triggerOperator;
  /// The threshold triggers this alert rule.
  final int triggerThreshold;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScheduledAlertRuleResult].
  /// [alertDetailsOverride] The alert details override settings
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customDetails] Dictionary of string key-value pairs of columns to be attached to the alert
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [entityMappings] Array of the entity mappings of the alert rule
  /// [etag] Etag of the azure resource
  /// [eventGroupingSettings] The event grouping settings.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [incidentConfiguration] The settings of the incidents that created from alerts triggered by this analytics rule
  /// [kind] The kind of the alert rule
  /// [lastModifiedUtc] The last time that this alert rule has been modified.
  /// [name] The name of the resource
  /// [query] The query that creates alerts for this rule.
  /// [queryFrequency] The frequency (in ISO 8601 duration format) for this alert rule to run.
  /// [queryPeriod] The period (in ISO 8601 duration format) that this alert rule looks at.
  /// [severity] The severity for alerts created by this alert rule.
  /// [suppressionDuration] The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  /// [suppressionEnabled] Determines whether the suppression for this alert rule is enabled or disabled.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tactics] The tactics of the alert rule
  /// [techniques] The techniques of the alert rule
  /// [templateVersion] The version of the alert rule template used to create this rule - in format &lt;a.b.c&gt;, where all are numbers, for example 0 &lt;1.0.2&gt;
  /// [triggerOperator] The operation against the threshold that triggers alert rule.
  /// [triggerThreshold] The threshold triggers this alert rule.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetScheduledAlertRuleResult({
    this.alertDetailsOverride,
    this.alertRuleTemplateName,
    required this.azureApiVersion,
    this.customDetails,
    this.description,
    required this.displayName,
    required this.enabled,
    this.entityMappings,
    this.etag,
    this.eventGroupingSettings,
    required this.id,
    this.incidentConfiguration,
    required this.kind,
    required this.lastModifiedUtc,
    required this.name,
    required this.query,
    required this.queryFrequency,
    required this.queryPeriod,
    required this.severity,
    required this.suppressionDuration,
    required this.suppressionEnabled,
    required this.systemData,
    this.tactics,
    this.techniques,
    this.templateVersion,
    required this.triggerOperator,
    required this.triggerThreshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDetailsOverride': ?alertDetailsOverride?.toMap(),
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'azureApiVersion': azureApiVersion,
      'customDetails': ?customDetails,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'entityMappings': ?(() { final guardedValue = entityMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<EntityMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'eventGroupingSettings': ?eventGroupingSettings?.toMap(),
      'id': id,
      'incidentConfiguration': ?incidentConfiguration?.toMap(),
      'kind': kind,
      'lastModifiedUtc': lastModifiedUtc,
      'name': name,
      'query': query,
      'queryFrequency': queryFrequency,
      'queryPeriod': queryPeriod,
      'severity': severity,
      'suppressionDuration': suppressionDuration,
      'suppressionEnabled': suppressionEnabled,
      'systemData': systemData.toMap(),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'templateVersion': ?templateVersion,
      'triggerOperator': triggerOperator,
      'triggerThreshold': triggerThreshold,
      'type': type,
    };
  }

  factory GetScheduledAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledAlertRuleResult(
      alertDetailsOverride: (() { final guardedValue = map['alertDetailsOverride']; if (guardedValue == null) return null; return AlertDetailsOverrideResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      alertRuleTemplateName: (() { final guardedValue = map['alertRuleTemplateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      entityMappings: (() { final guardedValue = map['entityMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityMappingResponse>(guardedValue, (value) => EntityMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventGroupingSettings: (() { final guardedValue = map['eventGroupingSettings']; if (guardedValue == null) return null; return EventGroupingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      incidentConfiguration: (() { final guardedValue = map['incidentConfiguration']; if (guardedValue == null) return null; return IncidentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: map['kind'] as String,
      lastModifiedUtc: map['lastModifiedUtc'] as String,
      name: map['name'] as String,
      query: map['query'] as String,
      queryFrequency: map['queryFrequency'] as String,
      queryPeriod: map['queryPeriod'] as String,
      severity: map['severity'] as String,
      suppressionDuration: map['suppressionDuration'] as String,
      suppressionEnabled: map['suppressionEnabled'] as bool,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerOperator: map['triggerOperator'] as String,
      triggerThreshold: map['triggerThreshold'] as int,
      type: map['type'] as String,
    );
  }
}
