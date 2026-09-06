// ignore_for_file: unused_element, unnecessary_cast

import 'tags_response.dart';

/// Result data returned by getTagAtScope.
class GetTagAtScopeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the tags wrapper resource.
  final String? id;
  /// The name of the tags wrapper resource.
  final String? name;
  /// The set of tags.
  final TagsResponse? properties;
  /// The type of the tags wrapper resource.
  final String? type;

  /// Creates a new [GetTagAtScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the tags wrapper resource.
  /// [name] The name of the tags wrapper resource.
  /// [properties] The set of tags.
  /// [type] The type of the tags wrapper resource.
  const GetTagAtScopeResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetTagAtScopeResult.fromMap(Map<String, dynamic> map) {
    return GetTagAtScopeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return TagsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
