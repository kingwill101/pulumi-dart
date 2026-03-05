// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKubernetesNodePoolSnapshot.
class GetKubernetesNodePoolSnapshotResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;

  /// The ID of the source Node Pool.
  final String sourceNodePoolId;
  final Map<String, String> tags;

  /// Creates a new [GetKubernetesNodePoolSnapshotResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sourceNodePoolId] The ID of the source Node Pool.
  /// [tags] Required.
  GetKubernetesNodePoolSnapshotResult({
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.sourceNodePoolId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sourceNodePoolId': sourceNodePoolId,
      'tags': tags,
    };
  }

  factory GetKubernetesNodePoolSnapshotResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesNodePoolSnapshotResult(
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceNodePoolId: map['sourceNodePoolId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
