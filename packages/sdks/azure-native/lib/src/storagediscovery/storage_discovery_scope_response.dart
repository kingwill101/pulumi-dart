// ignore_for_file: unused_element, unnecessary_cast


/// Storage Discovery Scope. This had added validations
class StorageDiscoveryScopeResponse {
  /// Display name of the collection
  final String displayName;
  /// Resource types for the collection
  final List<String> resourceTypes;
  /// The storage account tags keys to filter
  final List<String>? tagKeysOnly;
  /// Resource tags.
  final Map<String, String>? tags;

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
      displayName: map['displayName'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      tagKeysOnly: map['tagKeysOnly'] == null ? null : (map['tagKeysOnly'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

