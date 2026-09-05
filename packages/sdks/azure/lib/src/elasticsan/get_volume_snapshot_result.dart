// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolumeSnapshot.
class GetVolumeSnapshotResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The resource ID from which the Snapshot is created.
  final String? sourceId;
  /// The size of source volume.
  final int? sourceVolumeSizeInGib;
  final String? volumeGroupId;
  /// The source volume name of the Snapshot.
  final String? volumeName;

  /// Creates a new [GetVolumeSnapshotResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [sourceId] The resource ID from which the Snapshot is created.
  /// [sourceVolumeSizeInGib] The size of source volume.
  /// [volumeGroupId] Optional.
  /// [volumeName] The source volume name of the Snapshot.
  const GetVolumeSnapshotResult({
    this.id,
    this.name,
    this.sourceId,
    this.sourceVolumeSizeInGib,
    this.volumeGroupId,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'sourceId': ?sourceId,
      'sourceVolumeSizeInGib': ?sourceVolumeSizeInGib,
      'volumeGroupId': ?volumeGroupId,
      'volumeName': ?volumeName,
    };
  }

  factory GetVolumeSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceVolumeSizeInGib: (() { final guardedValue = map['sourceVolumeSizeInGib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      volumeGroupId: (() { final guardedValue = map['volumeGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
