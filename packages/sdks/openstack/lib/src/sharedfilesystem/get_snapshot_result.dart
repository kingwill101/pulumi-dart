// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// See Argument Reference above.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String projectId;
  final String region;
  /// The UUID of the source share that was used to create the snapshot.
  final String shareId;
  /// The file system protocol of a share snapshot.
  final String shareProto;
  /// The share snapshot size, in GBs.
  final int shareSize;
  /// The snapshot size, in GBs.
  final int size;
  /// See Argument Reference above.
  final String status;

  /// Creates a new [GetSnapshotResult].
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] Required.
  /// [shareId] The UUID of the source share that was used to create the snapshot.
  /// [shareProto] The file system protocol of a share snapshot.
  /// [shareSize] The share snapshot size, in GBs.
  /// [size] The snapshot size, in GBs.
  /// [status] See Argument Reference above.
  const GetSnapshotResult({
    required this.description,
    required this.id,
    required this.name,
    required this.projectId,
    required this.region,
    required this.shareId,
    required this.shareProto,
    required this.shareSize,
    required this.size,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'projectId': projectId,
      'region': region,
      'shareId': shareId,
      'shareProto': shareProto,
      'shareSize': shareSize,
      'size': size,
      'status': status,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      shareId: map['shareId'] as String,
      shareProto: map['shareProto'] as String,
      shareSize: map['shareSize'] as int,
      size: map['size'] as int,
      status: map['status'] as String,
    );
  }
}

