// ignore_for_file: unused_element, unnecessary_cast

import 'workload_crr_access_token_response.dart';

/// Result data returned by getRecoveryPointAccessToken.
class GetRecoveryPointAccessTokenResult {
  /// Optional ETag.
  final String? eTag;
  /// Resource Id represents the complete path to the resource.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name associated with the resource.
  final String name;
  /// CrrAccessTokenResource properties
  final WorkloadCrrAccessTokenResponse properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetRecoveryPointAccessTokenResult].
  /// [eTag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] CrrAccessTokenResource properties
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  GetRecoveryPointAccessTokenResult({
    this.eTag,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRecoveryPointAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetRecoveryPointAccessTokenResult(
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: WorkloadCrrAccessTokenResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

