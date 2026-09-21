// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolume.
class GetVolumeResult {
  /// Text describing a block storage volume.
  final String? description;
  /// A list of associated Droplet ids.
  final List<int>? dropletIds;
  /// Filesystem label currently in-use on the block storage volume.
  final String? filesystemLabel;
  /// Filesystem type currently in-use on the block storage volume.
  final String? filesystemType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// The size of the block storage volume in GiB.
  final int? size;
  /// A list of the tags associated to the Volume.
  final List<String>? tags;
  /// The uniform resource name for the storage volume.
  final String? urn;

  /// Creates a new [GetVolumeResult].
  /// [description] Text describing a block storage volume.
  /// [dropletIds] A list of associated Droplet ids.
  /// [filesystemLabel] Filesystem label currently in-use on the block storage volume.
  /// [filesystemType] Filesystem type currently in-use on the block storage volume.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [size] The size of the block storage volume in GiB.
  /// [tags] A list of the tags associated to the Volume.
  /// [urn] The uniform resource name for the storage volume.
  const GetVolumeResult({
    this.description,
    this.dropletIds,
    this.filesystemLabel,
    this.filesystemType,
    this.id,
    this.name,
    this.region,
    this.size,
    this.tags,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dropletIds': ?dropletIds,
      'filesystemLabel': ?filesystemLabel,
      'filesystemType': ?filesystemType,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'size': ?size,
      'tags': ?tags,
      'urn': ?urn,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      filesystemLabel: (() { final guardedValue = map['filesystemLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filesystemType: (() { final guardedValue = map['filesystemType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
