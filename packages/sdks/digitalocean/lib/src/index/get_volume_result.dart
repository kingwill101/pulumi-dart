// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolume.
class GetVolumeResult {
  /// Text describing a block storage volume.
  final String? description;
  /// A list of associated Droplet ids.
  final List<int> dropletIds;
  /// Filesystem label currently in-use on the block storage volume.
  final String filesystemLabel;
  /// Filesystem type currently in-use on the block storage volume.
  final String filesystemType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? region;
  /// The size of the block storage volume in GiB.
  final int size;
  /// A list of the tags associated to the Volume.
  final List<String> tags;
  /// The uniform resource name for the storage volume.
  final String urn;

  /// Creates a new [GetVolumeResult].
  /// [description] Text describing a block storage volume.
  /// [dropletIds] A list of associated Droplet ids.
  /// [filesystemLabel] Filesystem label currently in-use on the block storage volume.
  /// [filesystemType] Filesystem type currently in-use on the block storage volume.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Optional.
  /// [size] The size of the block storage volume in GiB.
  /// [tags] A list of the tags associated to the Volume.
  /// [urn] The uniform resource name for the storage volume.
  GetVolumeResult({
    this.description,
    required this.dropletIds,
    required this.filesystemLabel,
    required this.filesystemType,
    required this.id,
    required this.name,
    this.region,
    required this.size,
    required this.tags,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dropletIds': dropletIds,
      'filesystemLabel': filesystemLabel,
      'filesystemType': filesystemType,
      'id': id,
      'name': name,
      'region': ?region,
      'size': size,
      'tags': tags,
      'urn': urn,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      description: map['description'] == null ? null : map['description']! as String,
      dropletIds: (map['dropletIds'] as List).cast<int>(),
      filesystemLabel: map['filesystemLabel'] as String,
      filesystemType: map['filesystemType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region']! as String,
      size: map['size'] as int,
      tags: (map['tags'] as List).cast<String>(),
      urn: map['urn'] as String,
    );
  }
}

