// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_log_criteria.dart';

/// Result data returned by getScheduledQueryRulesLog.
class GetScheduledQueryRulesLogResult {
  /// A list of IDs of Resources referred into query.
  final List<String>? authorizedResourceIds;
  /// A `criteria` block as defined below.
  final List<GetScheduledQueryRulesLogCriteria>? criterias;
  /// The resource URI over which log search query is to be run.
  final String? dataSourceId;
  /// The description of the scheduled query rule.
  final String? description;
  /// Whether this scheduled query rule is enabled.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the Azure Region where the resource should exist.
  final String? location;
  /// Name of the dimension.
  final String? name;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetScheduledQueryRulesLogResult].
  /// [authorizedResourceIds] A list of IDs of Resources referred into query.
  /// [criterias] A `criteria` block as defined below.
  /// [dataSourceId] The resource URI over which log search query is to be run.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the Azure Region where the resource should exist.
  /// [name] Name of the dimension.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetScheduledQueryRulesLogResult({
    this.authorizedResourceIds,
    this.criterias,
    this.dataSourceId,
    this.description,
    this.enabled,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedResourceIds': ?authorizedResourceIds,
      'criterias': ?(() { final guardedValue = criterias; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetScheduledQueryRulesLogCriteria, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSourceId': ?dataSourceId,
      'description': ?description,
      'enabled': ?enabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetScheduledQueryRulesLogResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesLogResult(
      authorizedResourceIds: (() { final guardedValue = map['authorizedResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetScheduledQueryRulesLogCriteria>(guardedValue, (value) => GetScheduledQueryRulesLogCriteria.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
