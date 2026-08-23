// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGraphQuery.
class GetGraphQueryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of a graph query.
  final String? description;
  /// This will be used to handle Optimistic Concurrency. If not present, it will always overwrite the existing resource without checking conflict.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The location of the resource
  final String? location;
  /// The name of the resource
  final String name;
  /// KQL query that will be graph.
  final String query;
  /// Enum indicating a type of graph query.
  final String resultKind;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Date and time in UTC of the last modification that was made to this graph query definition.
  final String timeModified;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGraphQueryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of a graph query.
  /// [etag] This will be used to handle Optimistic Concurrency. If not present, it will always overwrite the existing resource without checking conflict.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The location of the resource
  /// [name] The name of the resource
  /// [query] KQL query that will be graph.
  /// [resultKind] Enum indicating a type of graph query.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeModified] Date and time in UTC of the last modification that was made to this graph query definition.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGraphQueryResult({
    required this.azureApiVersion,
    this.description,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.query,
    required this.resultKind,
    required this.systemData,
    this.tags,
    required this.timeModified,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'query': query,
      'resultKind': resultKind,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeModified': timeModified,
      'type': type,
    };
  }

  factory GetGraphQueryResult.fromMap(Map<String, dynamic> map) {
    return GetGraphQueryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      query: map['query'] as String,
      resultKind: map['resultKind'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeModified: map['timeModified'] as String,
      type: map['type'] as String,
    );
  }
}
