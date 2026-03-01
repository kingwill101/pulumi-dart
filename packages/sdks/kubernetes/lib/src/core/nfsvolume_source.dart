// ignore_for_file: unused_element, unnecessary_cast


/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
class NFSVolumeSource {
  /// path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final String path;
  /// readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final bool? readOnly;
  /// server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final String server;

  /// Creates a new [NFSVolumeSource].
  /// [path] path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [readOnly] readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [server] server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  NFSVolumeSource({
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
      path: map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}

