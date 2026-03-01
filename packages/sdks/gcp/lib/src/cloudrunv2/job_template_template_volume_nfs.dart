// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateTemplateVolumeNfs {
  /// Path that is exported by the NFS server.
  final String? path;
  /// If true, mount this volume as read-only in all mounts.
  final bool? readOnly;
  /// Hostname or IP address of the NFS server.
  final String server;

  /// Creates a new [JobTemplateTemplateVolumeNfs].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount this volume as read-only in all mounts.
  /// [server] Hostname or IP address of the NFS server.
  JobTemplateTemplateVolumeNfs({
    this.path,
    this.readOnly,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'readOnly': ?readOnly,
      'server': server,
    };
  }

  factory JobTemplateTemplateVolumeNfs.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeNfs(
      path: map['path'] == null ? null : map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      server: map['server'] as String,
    );
  }
}

