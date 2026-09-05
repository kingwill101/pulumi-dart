// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesNodePoolSnapshot.
class GetKubernetesNodePoolSnapshotResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The ID of the source Node Pool.
  final String? sourceNodePoolId;
  final Map<String, String>? tags;

  /// Creates a new [GetKubernetesNodePoolSnapshotResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sourceNodePoolId] The ID of the source Node Pool.
  /// [tags] Optional.
  const GetKubernetesNodePoolSnapshotResult({
    this.id,
    this.name,
    this.resourceGroupName,
    this.sourceNodePoolId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sourceNodePoolId': ?sourceNodePoolId,
      'tags': ?tags,
    };
  }

  factory GetKubernetesNodePoolSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolSnapshotResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceNodePoolId: (() { final guardedValue = map['sourceNodePoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
