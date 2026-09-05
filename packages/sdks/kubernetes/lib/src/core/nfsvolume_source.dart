// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
class NFSVolumeSource {
  /// path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<String> path;
  /// readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<bool?>? readOnly;
  /// server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<String> server;

  /// Creates a new [NFSVolumeSource].
  /// [path] path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [readOnly] readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [server] server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  const NFSVolumeSource({
    required this.path,
    this.readOnly,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'readOnly': ?readOnly,
      'server': server,
    };
  }

  factory NFSVolumeSource.fromMap(Map<String, dynamic> map) {
    return NFSVolumeSource(
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
