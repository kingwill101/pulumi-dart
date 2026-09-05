// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_alert_action.dart';
import 'get_scheduled_query_rules_alert_trigger.dart';

/// Result data returned by getScheduledQueryRulesAlert.
class GetScheduledQueryRulesAlertResult {
  /// supports the following:
  final List<GetScheduledQueryRulesAlertAction>? actions;
  /// The list of Resource IDs referred into query.
  final List<String>? authorizedResourceIds;
  /// The resource URI over which log search query is to be run.
  final String? dataSourceId;
  /// The description of the scheduled query rule.
  final String? description;
  /// Whether this scheduled query rule is enabled.
  final bool? enabled;
  /// Frequency at which rule condition should be evaluated.
  final int? frequency;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the Azure Region where the resource should exist.
  final String? location;
  final String? name;
  /// Log search query.
  final String? query;
  /// The type of query results.
  final String? queryType;
  final String? resourceGroupName;
  /// Severity of the alert.
  final int? severity;
  final Map<String, String>? tags;
  /// Time for which alerts should be throttled or suppressed.
  final int? throttling;
  /// Time window for which data needs to be fetched for query.
  final int? timeWindow;
  /// A `trigger` block as defined below.
  final List<GetScheduledQueryRulesAlertTrigger>? triggers;

  /// Creates a new [GetScheduledQueryRulesAlertResult].
  /// [actions] supports the following:
  /// [authorizedResourceIds] The list of Resource IDs referred into query.
  /// [dataSourceId] The resource URI over which log search query is to be run.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled.
  /// [frequency] Frequency at which rule condition should be evaluated.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the Azure Region where the resource should exist.
  /// [name] Optional.
  /// [query] Log search query.
  /// [queryType] The type of query results.
  /// [resourceGroupName] Optional.
  /// [severity] Severity of the alert.
  /// [tags] Optional.
  /// [throttling] Time for which alerts should be throttled or suppressed.
  /// [timeWindow] Time window for which data needs to be fetched for query.
  /// [triggers] A `trigger` block as defined below.
  const GetScheduledQueryRulesAlertResult({
    this.actions,
    this.authorizedResourceIds,
    this.dataSourceId,
    this.description,
    this.enabled,
    this.frequency,
    this.id,
    this.location,
    this.name,
    this.query,
    this.queryType,
    this.resourceGroupName,
    this.severity,
    this.tags,
    this.throttling,
    this.timeWindow,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetScheduledQueryRulesAlertAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authorizedResourceIds': ?authorizedResourceIds,
      'dataSourceId': ?dataSourceId,
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'query': ?query,
      'queryType': ?queryType,
      'resourceGroupName': ?resourceGroupName,
      'severity': ?severity,
      'tags': ?tags,
      'throttling': ?throttling,
      'timeWindow': ?timeWindow,
      'triggers': ?(() { final guardedValue = triggers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetScheduledQueryRulesAlertTrigger, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetScheduledQueryRulesAlertResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetScheduledQueryRulesAlertAction>(guardedValue, (value) => GetScheduledQueryRulesAlertAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      authorizedResourceIds: (() { final guardedValue = map['authorizedResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryType: (() { final guardedValue = map['queryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throttling: (() { final guardedValue = map['throttling']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetScheduledQueryRulesAlertTrigger>(guardedValue, (value) => GetScheduledQueryRulesAlertTrigger.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
