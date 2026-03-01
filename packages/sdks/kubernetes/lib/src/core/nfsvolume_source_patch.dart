// ignore_for_file: unused_element, unnecessary_cast


/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
class NFSVolumeSourcePatch {
  /// path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final String? path;
  /// readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final bool? readOnly;
  /// server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final String? server;

  /// Creates a new [NFSVolumeSourcePatch].
  /// [path] path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [readOnly] readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [server] server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  NFSVolumeSourcePatch({
    this.path,
    this.readOnly,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'readOnly': ?readOnly,
      'server': ?server,
    };
  }

  factory NFSVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return NFSVolumeSourcePatch(
      path: map['path'] == null ? null : map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      server: map['server'] == null ? null : map['server'] as String,
    );
  }
}

