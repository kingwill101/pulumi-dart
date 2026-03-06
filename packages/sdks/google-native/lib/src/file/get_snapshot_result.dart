// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// The time when the snapshot was created.
  final String createTime;
  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String description;
  /// The amount of bytes needed to allocate a full copy of the snapshot content
  final String filesystemUsedBytes;
  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  final String name;
  /// The snapshot state.
  final String state;

  /// Creates a new [GetSnapshotResult].
  /// [createTime] The time when the snapshot was created.
  /// [description] A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [filesystemUsedBytes] The amount of bytes needed to allocate a full copy of the snapshot content
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  /// [state] The snapshot state.
  const GetSnapshotResult({
    required this.createTime,
    required this.description,
    required this.filesystemUsedBytes,
    required this.labels,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'filesystemUsedBytes': filesystemUsedBytes,
      'labels': labels,
      'name': name,
      'state': state,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      filesystemUsedBytes: map['filesystemUsedBytes'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}

