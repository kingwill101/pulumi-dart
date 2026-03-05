// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVolume.
class GetVolumeResult {
  /// When this Volume was created.
  final String created;

  /// Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  final String encryption;

  /// The full filesystem path for the Volume based on the Volume's label. Path is /dev/disk/by-id/scsi-0LinodeVolume + Volume label.
  final String filesystemPath;

  /// The unique ID of this Volume.
  final int id;

  /// This Volume's label is for display purposes only.
  final String label;

  /// If a Volume is attached to a specific Linode, the ID of that Linode will be displayed here. If the Volume is unattached, this value will be null.
  final int linodeId;

  /// The datacenter in which this Volume is located. See all regions [here](https://api.linode.com/v4/regions).
  final String region;

  /// The Volume's size, in GiB.
  final int size;

  /// The current status of the Volume. (`creating`, `active`, `resizing`, `contact_support`)
  final String status;

  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;

  /// When this Volume was last updated.
  final String updated;

  /// Creates a new [GetVolumeResult].
  /// [created] When this Volume was created.
  /// [encryption] Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  /// [filesystemPath] The full filesystem path for the Volume based on the Volume's label. Path is /dev/disk/by-id/scsi-0LinodeVolume + Volume label.
  /// [id] The unique ID of this Volume.
  /// [label] This Volume's label is for display purposes only.
  /// [linodeId] If a Volume is attached to a specific Linode, the ID of that Linode will be displayed here. If the Volume is unattached, this value will be null.
  /// [region] The datacenter in which this Volume is located. See all regions [here](https://api.linode.com/v4/regions).
  /// [size] The Volume's size, in GiB.
  /// [status] The current status of the Volume. (`creating`, `active`, `resizing`, `contact_support`)
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this Volume was last updated.
  GetVolumeResult({
    required this.created,
    required this.encryption,
    required this.filesystemPath,
    required this.id,
    required this.label,
    required this.linodeId,
    required this.region,
    required this.size,
    required this.status,
    required this.tags,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'encryption': encryption,
      'filesystemPath': filesystemPath,
      'id': id,
      'label': label,
      'linodeId': linodeId,
      'region': region,
      'size': size,
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      created: map['created'] as String,
      encryption: map['encryption'] as String,
      filesystemPath: map['filesystemPath'] as String,
      id: map['id'] as int,
      label: map['label'] as String,
      linodeId: map['linodeId'] as int,
      region: map['region'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
    );
  }
}
