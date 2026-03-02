// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_query_pack_query_properties_response_related.dart';
import 'system_data_response.dart';

/// Result data returned by getQuery.
class GetQueryResult {
  /// Object Id of user creating the query.
  final String author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Body of the query.
  final String body;
  /// Description of the query.
  final String? description;
  /// Unique display name for your query within the Query Pack.
  final String displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Additional properties that can be set for the query.
  final dynamic properties;
  /// The related metadata items for the function.
  final LogAnalyticsQueryPackQueryPropertiesResponseRelated? related;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tags associated with the query.
  final Map<String, List<String>>? tags;
  /// Creation Date for the Log Analytics Query, in ISO 8601 format.
  final String timeCreated;
  /// Last modified date of the Log Analytics Query, in ISO 8601 format.
  final String timeModified;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetQueryResult].
  /// [author] Object Id of user creating the query.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [body] Body of the query.
  /// [description] Description of the query.
  /// [displayName] Unique display name for your query within the Query Pack.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [properties] Additional properties that can be set for the query.
  /// [related] The related metadata items for the function.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Tags associated with the query.
  /// [timeCreated] Creation Date for the Log Analytics Query, in ISO 8601 format.
  /// [timeModified] Last modified date of the Log Analytics Query, in ISO 8601 format.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetQueryResult({
    required this.author,
    required this.azureApiVersion,
    required this.body,
    this.description,
    required this.displayName,
    required this.id,
    required this.name,
    required this.properties,
    this.related,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.timeModified,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
      'azureApiVersion': azureApiVersion,
      'body': body,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'name': name,
      'properties': properties,
      'related': ?related == null ? null : related!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'timeModified': timeModified,
      'type': type,
    };
  }

  factory GetQueryResult.fromMap(Map<String, dynamic> map) {
    return GetQueryResult(
      author: map['author'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      body: map['body'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'],
      related: map['related'] == null ? null : LogAnalyticsQueryPackQueryPropertiesResponseRelated.fromMap((map['related']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, List<String>>(),
      timeCreated: map['timeCreated'] as String,
      timeModified: map['timeModified'] as String,
      type: map['type'] as String,
    );
  }
}

