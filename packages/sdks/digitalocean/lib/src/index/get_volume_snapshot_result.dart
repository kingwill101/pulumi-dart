// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolumeSnapshot.
class GetVolumeSnapshotResult {
  /// The date and time the volume snapshot was created.
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  final int? minDiskSize;
  final bool? mostRecent;
  final String? name;
  final String? nameRegex;
  final String? region;
  /// A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  final List<String>? regions;
  /// The billable size of the volume snapshot in gigabytes.
  final double? size;
  /// A list of the tags associated to the volume snapshot.
  final List<String>? tags;
  /// The ID of the volume from which the volume snapshot originated.
  final String? volumeId;

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
  const GetVolumeSnapshotResult({
    this.createdAt,
    this.id,
    this.minDiskSize,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
    this.regions,
    this.size,
    this.tags,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'id': ?id,
      'minDiskSize': ?minDiskSize,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'regions': ?regions,
      'size': ?size,
      'tags': ?tags,
      'volumeId': ?volumeId,
    };
  }

  factory GetVolumeSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minDiskSize: (() { final guardedValue = map['minDiskSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
