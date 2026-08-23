// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_reference.dart';

/// Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
class CinderPersistentVolumeSource {
  /// fsType Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<String>? fsType;
  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<bool>? readOnly;
  /// secretRef is Optional: points to a secret object containing parameters used to connect to OpenStack.
  final pulumi.Input<SecretReference>? secretRef;
  /// volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<String> volumeID;

  /// Creates a new [CinderPersistentVolumeSource].
  /// [fsType] fsType Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [readOnly] readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [secretRef] secretRef is Optional: points to a secret object containing parameters used to connect to OpenStack.
  /// [volumeID] volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  const CinderPersistentVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    required this.volumeID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'readOnly': ?readOnly,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'volumeID': volumeID,
    };
  }

  factory CinderPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return CinderPersistentVolumeSource(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeID: pulumi.Input.fromValue(map['volumeID'] as String),
    );
  }
}
