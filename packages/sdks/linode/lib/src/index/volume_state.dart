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
    pulumi.Output<String>? encryption,
    pulumi.Output<String>? filesystemPath,
    pulumi.Output<String>? label,
    pulumi.Output<int>? linodeId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? size,
    pulumi.Output<int>? sourceVolumeId,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<VolumeTimeouts>? timeouts,
  }) :
      encryption = pulumi.Input.asOptionalInput<String>(encryption),
      filesystemPath = pulumi.Input.asOptionalInput<String>(filesystemPath),
      label = pulumi.Input.asOptionalInput<String>(label),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<int>(size),
      sourceVolumeId = pulumi.Input.asOptionalInput<int>(sourceVolumeId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<VolumeTimeouts>(timeouts);

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
      encryption: map['encryption'] == null ? null : pulumi.Output.create<String>(map['encryption'] as String),
      filesystemPath: map['filesystemPath'] == null ? null : pulumi.Output.create<String>(map['filesystemPath'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      sourceVolumeId: map['sourceVolumeId'] == null ? null : pulumi.Output.create<int>(map['sourceVolumeId'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VolumeTimeouts>(VolumeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

