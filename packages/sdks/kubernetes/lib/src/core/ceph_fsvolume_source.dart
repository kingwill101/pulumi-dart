// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
class CephFSVolumeSource {
  /// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final pulumi.Input<List<String>> monitors;
  /// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  final pulumi.Input<String>? path;
  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final pulumi.Input<bool>? readOnly;
  /// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final pulumi.Input<String>? secretFile;
  /// secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final pulumi.Input<LocalObjectReference>? secretRef;
  /// user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final pulumi.Input<String>? user;

  /// Creates a new [CephFSVolumeSource].
  /// [monitors] monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [path] path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  /// [readOnly] readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [secretFile] secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [secretRef] secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [user] user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  CephFSVolumeSource({
    required this.monitors,
    this.path,
    this.readOnly,
    this.secretFile,
    this.secretRef,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitors': monitors,
      'path': ?path,
      'readOnly': ?readOnly,
      'secretFile': ?secretFile,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<LocalObjectReference, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'user': ?user,
    };
  }

  factory CephFSVolumeSource.fromMap(Map<String, dynamic> map) {
    return CephFSVolumeSource(
      monitors: ((map['monitors'] as List).cast<String>()).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      secretFile: map['secretFile'] == null ? null : (map['secretFile']! as String).input(),
      secretRef: map['secretRef'] == null ? null : (LocalObjectReference.fromMap((map['secretRef']! as Map).cast<String, dynamic>())).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

