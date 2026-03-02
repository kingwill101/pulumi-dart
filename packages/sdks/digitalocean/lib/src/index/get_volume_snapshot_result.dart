// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolumeSnapshot.
class GetVolumeSnapshotResult {
  /// The date and time the volume snapshot was created.
  final String createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  final int minDiskSize;
  final bool? mostRecent;
  final String? name;
  final String? nameRegex;
  final String? region;
  /// A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  final List<String> regions;
  /// The billable size of the volume snapshot in gigabytes.
  final double size;
  /// A list of the tags associated to the volume snapshot.
  final List<String> tags;
  /// The ID of the volume from which the volume snapshot originated.
  final String volumeId;

  /// Creates a new [GetVolumeSnapshotResult].
  /// [createdAt] The date and time the volume snapshot was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minDiskSize] The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  /// [mostRecent] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [region] Optional.
  /// [regions] A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  /// [size] The billable size of the volume snapshot in gigabytes.
  /// [tags] A list of the tags associated to the volume snapshot.
  /// [volumeId] The ID of the volume from which the volume snapshot originated.
  GetVolumeSnapshotResult({
    required this.createdAt,
    required this.id,
    required this.minDiskSize,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
    required this.regions,
    required this.size,
    required this.tags,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'minDiskSize': minDiskSize,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'regions': regions,
      'size': size,
      'tags': tags,
      'volumeId': volumeId,
    };
  }

  factory GetVolumeSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotResult(
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      minDiskSize: map['minDiskSize'] as int,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent']! as bool,
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      region: map['region'] == null ? null : map['region']! as String,
      regions: (map['regions'] as List).cast<String>(),
      size: map['size'] as double,
      tags: (map['tags'] as List).cast<String>(),
      volumeId: map['volumeId'] as String,
    );
  }
}

