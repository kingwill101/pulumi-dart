// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDiskAccess.
class GetDiskAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetDiskAccessResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  GetDiskAccessResult({
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetDiskAccessResult.fromMap(Map<String, dynamic> map) {
    return GetDiskAccessResult(
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
