// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Discovery Scope. This had added validations
class StorageDiscoveryScopeResponse {
  /// Display name of the collection
  final pulumi.Input<String> displayName;
  /// Resource types for the collection
  final pulumi.Input<List<String>> resourceTypes;
  /// The storage account tags keys to filter
  final pulumi.Input<List<String>>? tagKeysOnly;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageDiscoveryScopeResponse].
  /// [displayName] Display name of the collection
  /// [resourceTypes] Resource types for the collection
  /// [tagKeysOnly] The storage account tags keys to filter
  /// [tags] Resource tags.
  const StorageDiscoveryScopeResponse({
    required this.displayName,
    required this.resourceTypes,
    this.tagKeysOnly,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'resourceTypes': resourceTypes,
      'tagKeysOnly': ?tagKeysOnly,
      'tags': ?tags,
    };
  }

  factory StorageDiscoveryScopeResponse.fromMap(Map<String, dynamic> map) {
    return StorageDiscoveryScopeResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      resourceTypes: pulumi.Input.fromValue((map['resourceTypes'] as List).cast<String>()),
      tagKeysOnly: (() { final guardedValue = map['tagKeysOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
