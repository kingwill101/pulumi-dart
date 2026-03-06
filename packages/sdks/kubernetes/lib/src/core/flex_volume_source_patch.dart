// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference_patch.dart';

/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
class FlexVolumeSourcePatch {
  /// driver is the name of the driver to use for this volume.
  final pulumi.Input<String>? driver;
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final pulumi.Input<String>? fsType;
  /// options is Optional: this field holds extra command options if any.
  final pulumi.Input<Map<String, String>>? options;
  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final pulumi.Input<LocalObjectReferencePatch>? secretRef;

  /// Creates a new [FlexVolumeSourcePatch].
  /// [driver] driver is the name of the driver to use for this volume.
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  /// [options] options is Optional: this field holds extra command options if any.
  /// [readOnly] readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  const FlexVolumeSourcePatch({
    this.driver,
    this.fsType,
    this.options,
    this.readOnly,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'fsType': ?fsType,
      'options': ?options,
      'readOnly': ?readOnly,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<LocalObjectReferencePatch, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory FlexVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return FlexVolumeSourcePatch(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

