// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_action.dart';
import 'scheduled_query_rules_alert_trigger.dart';

/// {@template pulumi_monitoring_scheduled_query_rules_alert_scheduled_query_rules_alert_args_doc}
/// The set of arguments for ScheduledQueryRulesAlert.
/// {@endtemplate}
/// {@macro pulumi_monitoring_scheduled_query_rules_alert_scheduled_query_rules_alert_args_doc}
class ScheduledQueryRulesAlertArgs {
  /// An `action` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertAction> action;
  /// List of Resource IDs referred into query.
  final pulumi.Input<List<String>>? authorizedResourceIds;
  /// Should the alerts in this Metric Alert be auto resolved? Defaults to `false`.
  /// &gt; **Note:** `auto_mitigation_enabled` and `throttling` are mutually exclusive and cannot both be set.
  final pulumi.Input<bool>? autoMitigationEnabled;
  /// The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataSourceId;
  /// The description of the scheduled query rule.
  final pulumi.Input<String>? description;
  /// Whether this scheduled query rule is enabled. Default is `true`.
  final pulumi.Input<bool>? enabled;
  /// Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive).
  final pulumi.Input<int> frequency;
  /// Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the scheduled query rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Log search query.
  final pulumi.Input<String> query;
  /// The type of query results. Possible values are `ResultCount` and `Number`. Default is `ResultCount`. If set to `ResultCount`, `query` must include an `AggregatedValue` column of a numeric type, for example, `Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)`.
  final pulumi.Input<String>? queryType;
  /// The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Severity of the alert. Possible values include: 0, 1, 2, 3, or 4.
  final pulumi.Input<int>? severity;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive).
  final pulumi.Input<int>? throttling;
  /// Time window for which data needs to be fetched for query (must be greater than or equal to `frequency`). Values must be between 5 and 2880 (inclusive).
  final pulumi.Input<int> timeWindow;
  /// A `trigger` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertTrigger> trigger;

  /// Creates a new [ScheduledQueryRulesAlertArgs].
  /// [action] An `action` block as defined below.
  /// [authorizedResourceIds] List of Resource IDs referred into query.
  /// [autoMitigationEnabled] Should the alerts in this Metric Alert be auto resolved? Defaults to `false`.
  /// [dataSourceId] The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled. Default is `true`.
  /// [frequency] Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive).
  /// [location] Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  /// [name] The name of the scheduled query rule. Changing this forces a new resource to be created.
  /// [query] Log search query.
  /// [queryType] The type of query results. Possible values are `ResultCount` and `Number`. Default is `ResultCount`. If set to `ResultCount`, `query` must include an `AggregatedValue` column of a numeric type, for example, `Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)`.
  /// [resourceGroupName] The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  /// [severity] Severity of the alert. Possible values include: 0, 1, 2, 3, or 4.
  /// [tags] A mapping of tags to assign to the resource.
  /// [throttling] Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive).
  /// [timeWindow] Time window for which data needs to be fetched for query (must be greater than or equal to `frequency`). Values must be between 5 and 2880 (inclusive).
  /// [trigger] A `trigger` block as defined below.
  ScheduledQueryRulesAlertArgs({
    required this.action,
    this.authorizedResourceIds,
    this.autoMitigationEnabled,
    required this.dataSourceId,
    this.description,
    this.enabled,
    required this.frequency,
    this.location,
    this.name,
    required this.query,
    this.queryType,
    required this.resourceGroupName,
    this.severity,
    this.tags,
    this.throttling,
    required this.timeWindow,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<ScheduledQueryRulesAlertAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'authorizedResourceIds': ?authorizedResourceIds,
      'autoMitigationEnabled': ?autoMitigationEnabled,
      'dataSourceId': dataSourceId,
      'description': ?description,
      'enabled': ?enabled,
      'frequency': frequency,
      'location': ?location,
      'name': ?name,
      'query': query,
      'queryType': ?queryType,
      'resourceGroupName': resourceGroupName,
      'severity': ?severity,
      'tags': ?tags,
      'throttling': ?throttling,
      'timeWindow': timeWindow,
      'trigger': pulumi.Input.mapInputValue<ScheduledQueryRulesAlertTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryRulesAlertArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertArgs(
      action: pulumi.Input.fromValue(ScheduledQueryRulesAlertAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      authorizedResourceIds: (() { final guardedValue = map['authorizedResourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autoMitigationEnabled: (() { final guardedValue = map['autoMitigationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as int),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      queryType: (() { final guardedValue = map['queryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throttling: (() { final guardedValue = map['throttling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeWindow: pulumi.Input.fromValue(map['timeWindow'] as int),
      trigger: pulumi.Input.fromValue(ScheduledQueryRulesAlertTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

