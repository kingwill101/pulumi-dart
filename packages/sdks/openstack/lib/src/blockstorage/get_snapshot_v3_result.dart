// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshotV3.
class GetSnapshotV3Result {
  /// The snapshot's description.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The snapshot's metadata.
  final Map<String, String> metadata;
  final bool? mostRecent;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String region;
  /// The size of the snapshot.
  final int size;
  /// See Argument Reference above.
  final String status;
  /// See Argument Reference above.
  final String volumeId;

  /// Creates a new [GetSnapshotV3Result].
  /// [description] The snapshot's description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] The snapshot's metadata.
  /// [mostRecent] Optional.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [size] The size of the snapshot.
  /// [status] See Argument Reference above.
  /// [volumeId] See Argument Reference above.
  GetSnapshotV3Result({
    required this.description,
    required this.id,
    required this.metadata,
    this.mostRecent,
    required this.name,
    required this.region,
    required this.size,
    required this.status,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'metadata': metadata,
      'mostRecent': ?mostRecent,
      'name': name,
      'region': region,
      'size': size,
      'status': status,
      'volumeId': volumeId,
    };
  }

  factory GetSnapshotV3Result.fromMap(Map<String, dynamic> map) {
    return GetSnapshotV3Result(
      description: map['description'] as String,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent']! as bool,
      name: map['name'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}

