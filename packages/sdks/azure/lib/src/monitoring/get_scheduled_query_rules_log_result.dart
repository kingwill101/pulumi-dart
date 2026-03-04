// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_log_criteria.dart';

/// Result data returned by getScheduledQueryRulesLog.
class GetScheduledQueryRulesLogResult {
  /// A list of IDs of Resources referred into query.
  final List<String> authorizedResourceIds;

  /// A `criteria` block as defined below.
  final List<GetScheduledQueryRulesLogCriteria> criterias;

  /// The resource URI over which log search query is to be run.
  final String dataSourceId;

  /// The description of the scheduled query rule.
  final String description;

  /// Whether this scheduled query rule is enabled.
  final bool enabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Specifies the Azure Region where the resource should exist.
  final String location;

  /// Name of the dimension.
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetScheduledQueryRulesLogResult].
  /// [authorizedResourceIds] A list of IDs of Resources referred into query.
  /// [criterias] A `criteria` block as defined below.
  /// [dataSourceId] The resource URI over which log search query is to be run.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the Azure Region where the resource should exist.
  /// [name] Name of the dimension.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  GetScheduledQueryRulesLogResult({
    required this.authorizedResourceIds,
    required this.criterias,
    required this.dataSourceId,
    required this.description,
    required this.enabled,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedResourceIds': authorizedResourceIds,
      'criterias':
          pulumi.Input.encodeList<
            GetScheduledQueryRulesLogCriteria,
            Map<String, dynamic>
          >(criterias, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'description': description,
      'enabled': enabled,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetScheduledQueryRulesLogResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesLogResult(
      authorizedResourceIds: (map['authorizedResourceIds'] as List)
          .cast<String>(),
      criterias: pulumi.Input.decodeList<GetScheduledQueryRulesLogCriteria>(
        map['criterias']!,
        (value) => GetScheduledQueryRulesLogCriteria.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dataSourceId: map['dataSourceId'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
