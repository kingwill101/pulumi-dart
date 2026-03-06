// ignore_for_file: unused_element, unnecessary_cast

import 'tags_response.dart';

/// Result data returned by getTagAtScope.
class GetTagAtScopeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ID of the tags wrapper resource.
  final String id;
  /// The name of the tags wrapper resource.
  final String name;
  /// The set of tags.
  final TagsResponse properties;
  /// The type of the tags wrapper resource.
  final String type;

  /// Creates a new [GetTagAtScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the tags wrapper resource.
  /// [name] The name of the tags wrapper resource.
  /// [properties] The set of tags.
  /// [type] The type of the tags wrapper resource.
  const GetTagAtScopeResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetTagAtScopeResult.fromMap(Map<String, dynamic> map) {
    return GetTagAtScopeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: TagsResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

