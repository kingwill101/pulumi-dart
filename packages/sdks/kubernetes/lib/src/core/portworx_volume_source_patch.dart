// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PortworxVolumeSource represents a Portworx volume resource.
class PortworxVolumeSourcePatch {
  /// fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  final pulumi.Input<String>? fsType;

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;

  /// volumeID uniquely identifies a Portworx volume
  final pulumi.Input<String>? volumeID;

  /// Creates a new [PortworxVolumeSourcePatch].
  /// [fsType] fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [volumeID] volumeID uniquely identifies a Portworx volume
  PortworxVolumeSourcePatch({this.fsType, this.readOnly, this.volumeID});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'readOnly': ?readOnly,
      'volumeID': ?volumeID,
    };
  }

  factory PortworxVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return PortworxVolumeSourcePatch(
      fsType: (() {
        final guardedValue = map['fsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      volumeID: (() {
        final guardedValue = map['volumeID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
