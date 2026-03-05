// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVolumeSnapshot.
class GetVolumeSnapshotResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The resource ID from which the Snapshot is created.
  final String sourceId;

  /// The size of source volume.
  final int sourceVolumeSizeInGib;
  final String volumeGroupId;

  /// The source volume name of the Snapshot.
  final String volumeName;

  /// Creates a new [GetVolumeSnapshotResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [sourceId] The resource ID from which the Snapshot is created.
  /// [sourceVolumeSizeInGib] The size of source volume.
  /// [volumeGroupId] Required.
  /// [volumeName] The source volume name of the Snapshot.
  GetVolumeSnapshotResult({
    required this.id,
    required this.name,
    required this.sourceId,
    required this.sourceVolumeSizeInGib,
    required this.volumeGroupId,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'sourceId': sourceId,
      'sourceVolumeSizeInGib': sourceVolumeSizeInGib,
      'volumeGroupId': volumeGroupId,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotResult(
      id: map['id'] as String,
      name: map['name'] as String,
      sourceId: map['sourceId'] as String,
      sourceVolumeSizeInGib: map['sourceVolumeSizeInGib'] as int,
      volumeGroupId: map['volumeGroupId'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}
