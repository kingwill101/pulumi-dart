// ignore_for_file: unused_element, unnecessary_cast

import 'secret_reference_patch.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
class CephFSPersistentVolumeSourcePatch {
  /// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final List<String>? monitors;
  /// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  final String? path;
  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final bool? readOnly;
  /// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final String? secretFile;
  /// secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final SecretReferencePatch? secretRef;
  /// user is Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final String? user;

  /// Creates a new [CephFSPersistentVolumeSourcePatch].
  /// [monitors] monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [path] path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  /// [readOnly] readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [secretFile] secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [secretRef] secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  /// [user] user is Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  CephFSPersistentVolumeSourcePatch({
    this.monitors,
    this.path,
    this.readOnly,
    this.secretFile,
    this.secretRef,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitors': ?monitors,
      'path': ?path,
      'readOnly': ?readOnly,
      'secretFile': ?secretFile,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
      'user': ?user,
    };
  }

  factory CephFSPersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return CephFSPersistentVolumeSourcePatch(
      monitors: map['monitors'] == null ? null : (map['monitors'] as List).cast<String>(),
      path: map['path'] == null ? null : map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretFile: map['secretFile'] == null ? null : map['secretFile'] as String,
      secretRef: map['secretRef'] == null ? null : SecretReferencePatch.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

