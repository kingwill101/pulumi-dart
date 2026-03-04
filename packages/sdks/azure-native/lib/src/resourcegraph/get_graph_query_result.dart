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

  /// Azure resource Id
  final String id;

  /// The location of the resource
  final String? location;

  /// Azure resource name. This is GUID value. The display name should be assigned within properties field.
  final String name;

  /// KQL query that will be graph.
  final String query;

  /// Enum indicating a type of graph query.
  final String resultKind;

  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;

  /// Resource tags
  final Map<String, String>? tags;

  /// Date and time in UTC of the last modification that was made to this graph query definition.
  final String timeModified;

  /// Azure resource type
  final String type;

  /// Creates a new [GetGraphQueryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of a graph query.
  /// [etag] This will be used to handle Optimistic Concurrency. If not present, it will always overwrite the existing resource without checking conflict.
  /// [id] Azure resource Id
  /// [location] The location of the resource
  /// [name] Azure resource name. This is GUID value. The display name should be assigned within properties field.
  /// [query] KQL query that will be graph.
  /// [resultKind] Enum indicating a type of graph query.
  /// [systemData] The system metadata relating to this resource.
  /// [tags] Resource tags
  /// [timeModified] Date and time in UTC of the last modification that was made to this graph query definition.
  /// [type] Azure resource type
  GetGraphQueryResult({
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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      query: map['query'] as String,
      resultKind: map['resultKind'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      timeModified: map['timeModified'] as String,
      type: map['type'] as String,
    );
  }
}
