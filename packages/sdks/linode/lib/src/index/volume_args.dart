// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_timeouts.dart';

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
  /// Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  final pulumi.Input<String>? encryption;
  /// The label of the Linode Volume
  final pulumi.Input<String> label;
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
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<VolumeTimeouts>? timeouts;

  /// Creates a new [VolumeArgs].
  /// [encryption] Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  /// [label] The label of the Linode Volume
  /// [linodeId] The ID of a Linode Instance where the Volume should be attached.
  /// [region] The region where this volume will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). This field is optional for cloned volumes. *Changing `region` forces the creation of a new Linode Volume.*.
  /// [size] Size of the Volume in GB.
  /// [sourceVolumeId] The ID of a Linode Volume to clone. NOTE: Cloned volumes must be in the same region as the source volume.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [timeouts] Optional.
  const VolumeArgs({
    this.encryption,
    required this.label,
    this.linodeId,
    this.region,
    this.size,
    this.sourceVolumeId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption,
      'label': label,
      'linodeId': ?linodeId,
      'region': ?region,
      'size': ?size,
      'sourceVolumeId': ?sourceVolumeId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VolumeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceVolumeId: (() { final guardedValue = map['sourceVolumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

