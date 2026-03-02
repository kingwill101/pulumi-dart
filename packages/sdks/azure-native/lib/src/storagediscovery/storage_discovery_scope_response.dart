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
  StorageDiscoveryScopeResponse({
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
      displayName: (map['displayName'] as String).input(),
      resourceTypes: ((map['resourceTypes'] as List).cast<String>()).input(),
      tagKeysOnly: map['tagKeysOnly'] == null ? null : ((map['tagKeysOnly']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

