// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
class FCVolumeSource {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final pulumi.Input<String>? fsType;
  /// lun is Optional: FC target lun number
  final pulumi.Input<int>? lun;
  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// targetWWNs is Optional: FC target worldwide names (WWNs)
  final pulumi.Input<List<String>>? targetWWNs;
  /// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  final pulumi.Input<List<String>>? wwids;

  /// Creates a new [FCVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [lun] lun is Optional: FC target lun number
  /// [readOnly] readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [targetWWNs] targetWWNs is Optional: FC target worldwide names (WWNs)
  /// [wwids] wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  const FCVolumeSource({
    this.fsType,
    this.lun,
    this.readOnly,
    this.targetWWNs,
    this.wwids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'lun': ?lun,
      'readOnly': ?readOnly,
      'targetWWNs': ?targetWWNs,
      'wwids': ?wwids,
    };
  }

  factory FCVolumeSource.fromMap(Map<String, dynamic> map) {
    return FCVolumeSource(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetWWNs: (() { final guardedValue = map['targetWWNs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      wwids: (() { final guardedValue = map['wwids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
