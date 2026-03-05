// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_timeouts.dart';

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  final pulumi.Input<String>? encryption;
  /// The full filesystem path for the Volume based on the Volume's label. The path is "/dev/disk/by-id/scsi-0Linode_Volume_" + the Volume label
  final pulumi.Input<String>? filesystemPath;
  /// The label of the Linode Volume
  final pulumi.Input<String>? label;
  /// The ID of a Linode Instance where the Volume should be attached.
  final pulumi.Input<int>? linodeId;
  /// The region where this volume will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). This field is optional for cloned volumes. *Changing `region` forces the creation of a new Linode Volume.*.
  ///
  /// - - -
  final pulumi.Input<String>? region;
  /// Size of the Volume in GB.
  final pulumi.Input<int>? size;
  /// The ID of a Linode Volume to clone. NOTE: Cloned volumes must be in the same region as the source volume.
  final pulumi.Input<int>? sourceVolumeId;
  /// The status of the Linode Volume. (`creating`, `active`, `resizing`, `contact_support`)
  final pulumi.Input<String>? status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<VolumeTimeouts>? timeouts;

  /// Creates a new [VolumeState].
  /// [encryption] Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  /// [filesystemPath] The full filesystem path for the Volume based on the Volume's label. The path is "/dev/disk/by-id/scsi-0Linode_Volume_" + the Volume label
  /// [label] The label of the Linode Volume
  /// [linodeId] The ID of a Linode Instance where the Volume should be attached.
  /// [region] The region where this volume will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). This field is optional for cloned volumes. *Changing `region` forces the creation of a new Linode Volume.*.
  /// [size] Size of the Volume in GB.
  /// [sourceVolumeId] The ID of a Linode Volume to clone. NOTE: Cloned volumes must be in the same region as the source volume.
  /// [status] The status of the Linode Volume. (`creating`, `active`, `resizing`, `contact_support`)
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [timeouts] Optional.
  VolumeState({
    this.encryption,
    this.filesystemPath,
    this.label,
    this.linodeId,
    this.region,
    this.size,
    this.sourceVolumeId,
    this.status,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption,
      'filesystemPath': ?filesystemPath,
      'label': ?label,
      'linodeId': ?linodeId,
      'region': ?region,
      'size': ?size,
      'sourceVolumeId': ?sourceVolumeId,
      'status': ?status,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VolumeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesystemPath: (() { final guardedValue = map['filesystemPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceVolumeId: (() { final guardedValue = map['sourceVolumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

