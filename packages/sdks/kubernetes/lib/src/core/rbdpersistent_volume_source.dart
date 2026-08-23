// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_reference.dart';

/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
class RBDPersistentVolumeSource {
  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  final pulumi.Input<String>? fsType;
  /// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<String> image;
  /// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<String>? keyring;
  /// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<List<String>> monitors;
  /// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<String>? pool;
  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<bool>? readOnly;
  /// secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<SecretReference>? secretRef;
  /// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final pulumi.Input<String>? user;

  /// Creates a new [RBDPersistentVolumeSource].
  /// [fsType] fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  /// [image] image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [keyring] keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [monitors] monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [pool] pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [readOnly] readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [secretRef] secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [user] user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  const RBDPersistentVolumeSource({
    this.fsType,
    required this.image,
    this.keyring,
    required this.monitors,
    this.pool,
    this.readOnly,
    this.secretRef,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'image': image,
      'keyring': ?keyring,
      'monitors': monitors,
      'pool': ?pool,
      'readOnly': ?readOnly,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'user': ?user,
    };
  }

  factory RBDPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return RBDPersistentVolumeSource(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      keyring: (() { final guardedValue = map['keyring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitors: pulumi.Input.fromValue((map['monitors'] as List).cast<String>()),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
