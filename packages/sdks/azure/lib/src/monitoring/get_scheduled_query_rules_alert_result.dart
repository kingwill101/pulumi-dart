// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_alert_action.dart';
import 'get_scheduled_query_rules_alert_trigger.dart';

/// Result data returned by getScheduledQueryRulesAlert.
class GetScheduledQueryRulesAlertResult {
  /// supports the following:
  final List<GetScheduledQueryRulesAlertAction> actions;

  /// The list of Resource IDs referred into query.
  final List<String> authorizedResourceIds;

  /// The resource URI over which log search query is to be run.
  final String dataSourceId;

  /// The description of the scheduled query rule.
  final String description;

  /// Whether this scheduled query rule is enabled.
  final bool enabled;

  /// Frequency at which rule condition should be evaluated.
  final int frequency;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Specifies the Azure Region where the resource should exist.
  final String location;
  final String name;

  /// Log search query.
  final String query;

  /// The type of query results.
  final String queryType;
  final String resourceGroupName;

  /// Severity of the alert.
  final int severity;
  final Map<String, String> tags;

  /// Time for which alerts should be throttled or suppressed.
  final int throttling;

  /// Time window for which data needs to be fetched for query.
  final int timeWindow;

  /// A `trigger` block as defined below.
  final List<GetScheduledQueryRulesAlertTrigger> triggers;

  /// Creates a new [GetScheduledQueryRulesAlertResult].
  /// [actions] supports the following:
  /// [authorizedResourceIds] The list of Resource IDs referred into query.
  /// [dataSourceId] The resource URI over which log search query is to be run.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled.
  /// [frequency] Frequency at which rule condition should be evaluated.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the Azure Region where the resource should exist.
  /// [name] Required.
  /// [query] Log search query.
  /// [queryType] The type of query results.
  /// [resourceGroupName] Required.
  /// [severity] Severity of the alert.
  /// [tags] Required.
  /// [throttling] Time for which alerts should be throttled or suppressed.
  /// [timeWindow] Time window for which data needs to be fetched for query.
  /// [triggers] A `trigger` block as defined below.
  GetScheduledQueryRulesAlertResult({
    required this.actions,
    required this.authorizedResourceIds,
    required this.dataSourceId,
    required this.description,
    required this.enabled,
    required this.frequency,
    required this.id,
    required this.location,
    required this.name,
    required this.query,
    required this.queryType,
    required this.resourceGroupName,
    required this.severity,
    required this.tags,
    required this.throttling,
    required this.timeWindow,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.encodeList<
            GetScheduledQueryRulesAlertAction,
            Map<String, dynamic>
          >(actions, (value) => value.toMap()),
      'authorizedResourceIds': authorizedResourceIds,
      'dataSourceId': dataSourceId,
      'description': description,
      'enabled': enabled,
      'frequency': frequency,
      'id': id,
      'location': location,
      'name': name,
      'query': query,
      'queryType': queryType,
      'resourceGroupName': resourceGroupName,
      'severity': severity,
      'tags': tags,
      'throttling': throttling,
      'timeWindow': timeWindow,
      'triggers':
          pulumi.Input.encodeList<
            GetScheduledQueryRulesAlertTrigger,
            Map<String, dynamic>
          >(triggers, (value) => value.toMap()),
    };
  }

  factory GetScheduledQueryRulesAlertResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertResult(
      actions: pulumi.Input.decodeList<GetScheduledQueryRulesAlertAction>(
        map['actions']!,
        (value) => GetScheduledQueryRulesAlertAction.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      authorizedResourceIds: (map['authorizedResourceIds'] as List)
          .cast<String>(),
      dataSourceId: map['dataSourceId'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      frequency: map['frequency'] as int,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      query: map['query'] as String,
      queryType: map['queryType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      severity: map['severity'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      throttling: map['throttling'] as int,
      timeWindow: map['timeWindow'] as int,
      triggers: pulumi.Input.decodeList<GetScheduledQueryRulesAlertTrigger>(
        map['triggers']!,
        (value) => GetScheduledQueryRulesAlertTrigger.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
