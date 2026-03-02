// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumesVolume {
  /// When this Volume was created.
  final pulumi.Input<String> created;
  /// Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  final pulumi.Input<String> encryption;
  /// The full filesystem path for the Volume based on the Volume's label. Path is /dev/disk/by-id/scsi-0LinodeVolume + Volume label.
  final pulumi.Input<String> filesystemPath;
  /// The unique ID of this Volume.
  final pulumi.Input<int> id;
  /// This Volume's label is for display purposes only.
  final pulumi.Input<String> label;
  /// If a Volume is attached to a specific Linode, the ID of that Linode will be displayed here. If the Volume is unattached, this value will be null.
  final pulumi.Input<int> linodeId;
  /// The datacenter in which this Volume is located. See all regions [here](https://api.linode.com/v4/regions).
  final pulumi.Input<String> region;
  /// The Volume's size, in GiB.
  final pulumi.Input<int> size;
  /// The current status of the Volume. (`creating`, `active`, `resizing`, `contact_support`)
  final pulumi.Input<String> status;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// When this Volume was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetVolumesVolume].
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
  GetVolumesVolume({
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

  factory GetVolumesVolume.fromMap(Map<String, dynamic> map) {
    return GetVolumesVolume(
      created: (map['created'] as String).input(),
      encryption: (map['encryption'] as String).input(),
      filesystemPath: (map['filesystemPath'] as String).input(),
      id: (map['id'] as int).input(),
      label: (map['label'] as String).input(),
      linodeId: (map['linodeId'] as int).input(),
      region: (map['region'] as String).input(),
      size: (map['size'] as int).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      updated: (map['updated'] as String).input(),
    );
  }
}

