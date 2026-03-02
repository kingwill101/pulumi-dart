// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_reference_patch.dart';

/// FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
class FlexPersistentVolumeSourcePatch {
  /// driver is the name of the driver to use for this volume.
  final pulumi.Input<String>? driver;
  /// fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final pulumi.Input<String>? fsType;
  /// options is Optional: this field holds extra command options if any.
  final pulumi.Input<Map<String, String>>? options;
  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final pulumi.Input<bool>? readOnly;
  /// secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final pulumi.Input<SecretReferencePatch>? secretRef;

  /// Creates a new [FlexPersistentVolumeSourcePatch].
  /// [driver] driver is the name of the driver to use for this volume.
  /// [fsType] fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  /// [options] options is Optional: this field holds extra command options if any.
  /// [readOnly] readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  FlexPersistentVolumeSourcePatch({
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
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretReferencePatch, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
    };
  }

  factory FlexPersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return FlexPersistentVolumeSourcePatch(
      driver: map['driver'] == null ? null : (map['driver']! as String).input(),
      fsType: map['fsType'] == null ? null : (map['fsType']! as String).input(),
      options: map['options'] == null ? null : ((map['options']! as Map).cast<String, String>()).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      secretRef: map['secretRef'] == null ? null : (SecretReferencePatch.fromMap((map['secretRef']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

