// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guest disk signature based disk exclusion option when doing enable protection of virtual machine in InMage provider.
class InMageVolumeExclusionOptions {
  /// The value indicating whether to exclude multi volume disk or not. If a disk has multiple volumes and one of the volume has label matching with VolumeLabel this disk will be excluded from replication if OnlyExcludeIfSingleVolume is false.
  final pulumi.Input<String>? onlyExcludeIfSingleVolume;
  /// The volume label. The disk having any volume with this label will be excluded from replication.
  final pulumi.Input<String>? volumeLabel;

  /// Creates a new [InMageVolumeExclusionOptions].
  /// [onlyExcludeIfSingleVolume] The value indicating whether to exclude multi volume disk or not. If a disk has multiple volumes and one of the volume has label matching with VolumeLabel this disk will be excluded from replication if OnlyExcludeIfSingleVolume is false.
  /// [volumeLabel] The volume label. The disk having any volume with this label will be excluded from replication.
  InMageVolumeExclusionOptions({
    this.onlyExcludeIfSingleVolume,
    this.volumeLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onlyExcludeIfSingleVolume': ?onlyExcludeIfSingleVolume,
      'volumeLabel': ?volumeLabel,
    };
  }

  factory InMageVolumeExclusionOptions.fromMap(Map<String, dynamic> map) {
    return InMageVolumeExclusionOptions(
      onlyExcludeIfSingleVolume: map['onlyExcludeIfSingleVolume'] == null ? null : (map['onlyExcludeIfSingleVolume']! as String).input(),
      volumeLabel: map['volumeLabel'] == null ? null : (map['volumeLabel']! as String).input(),
    );
  }
}

