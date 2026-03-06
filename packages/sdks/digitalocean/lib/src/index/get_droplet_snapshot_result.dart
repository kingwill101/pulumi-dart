// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDropletSnapshot.
class GetDropletSnapshotResult {
  /// The date and time the Droplet snapshot was created.
  final String createdAt;
  /// The ID of the Droplet from which the Droplet snapshot originated.
  final String dropletId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The minimum size in gigabytes required for a Droplet to be created based on this Droplet snapshot.
  final int minDiskSize;
  final bool? mostRecent;
  final String? name;
  final String? nameRegex;
  final String? region;
  /// A list of DigitalOcean region "slugs" indicating where the Droplet snapshot is available.
  final List<String> regions;
  /// The billable size of the Droplet snapshot in gigabytes.
  final double size;

  /// Creates a new [GetDropletSnapshotResult].
  /// [createdAt] The date and time the Droplet snapshot was created.
  /// [dropletId] The ID of the Droplet from which the Droplet snapshot originated.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minDiskSize] The minimum size in gigabytes required for a Droplet to be created based on this Droplet snapshot.
  /// [mostRecent] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [region] Optional.
  /// [regions] A list of DigitalOcean region "slugs" indicating where the Droplet snapshot is available.
  /// [size] The billable size of the Droplet snapshot in gigabytes.
  const GetDropletSnapshotResult({
    required this.createdAt,
    required this.dropletId,
    required this.id,
    required this.minDiskSize,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
    required this.regions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dropletId': dropletId,
      'id': id,
      'minDiskSize': minDiskSize,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'regions': regions,
      'size': size,
    };
  }

  factory GetDropletSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetDropletSnapshotResult(
      createdAt: map['createdAt'] as String,
      dropletId: map['dropletId'] as String,
      id: map['id'] as String,
      minDiskSize: map['minDiskSize'] as int,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (map['regions'] as List).cast<String>(),
      size: map['size'] as double,
    );
  }
}

