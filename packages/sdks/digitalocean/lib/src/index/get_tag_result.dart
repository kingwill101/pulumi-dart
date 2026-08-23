// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTag.
class GetTagResult {
  /// A count of the database clusters that the tag is applied to.
  final int databasesCount;
  /// A count of the Droplets the tag is applied to.
  final int dropletsCount;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A count of the images that the tag is applied to.
  final int imagesCount;
  final String name;
  /// A count of the total number of resources that the tag is applied to.
  final int totalResourceCount;
  /// A count of the volume snapshots that the tag is applied to.
  final int volumeSnapshotsCount;
  /// A count of the volumes that the tag is applied to.
  final int volumesCount;

  /// Creates a new [GetTagResult].
  /// [databasesCount] A count of the database clusters that the tag is applied to.
  /// [dropletsCount] A count of the Droplets the tag is applied to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imagesCount] A count of the images that the tag is applied to.
  /// [name] Required.
  /// [totalResourceCount] A count of the total number of resources that the tag is applied to.
  /// [volumeSnapshotsCount] A count of the volume snapshots that the tag is applied to.
  /// [volumesCount] A count of the volumes that the tag is applied to.
  const GetTagResult({
    required this.databasesCount,
    required this.dropletsCount,
    required this.id,
    required this.imagesCount,
    required this.name,
    required this.totalResourceCount,
    required this.volumeSnapshotsCount,
    required this.volumesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesCount': databasesCount,
      'dropletsCount': dropletsCount,
      'id': id,
      'imagesCount': imagesCount,
      'name': name,
      'totalResourceCount': totalResourceCount,
      'volumeSnapshotsCount': volumeSnapshotsCount,
      'volumesCount': volumesCount,
    };
  }

  factory GetTagResult.fromMap(Map<String, dynamic> map) {
    return GetTagResult(
      databasesCount: map['databasesCount'] as int,
      dropletsCount: map['dropletsCount'] as int,
      id: map['id'] as String,
      imagesCount: map['imagesCount'] as int,
      name: map['name'] as String,
      totalResourceCount: map['totalResourceCount'] as int,
      volumeSnapshotsCount: map['volumeSnapshotsCount'] as int,
      volumesCount: map['volumesCount'] as int,
    );
  }
}
