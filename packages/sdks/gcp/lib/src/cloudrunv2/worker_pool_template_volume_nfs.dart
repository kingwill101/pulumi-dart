// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateVolumeNfs {
  /// Path that is exported by the NFS server.
  final pulumi.Input<String> path;
  /// If true, mount the NFS volume as read only
  final pulumi.Input<bool>? readOnly;
  /// Hostname or IP address of the NFS server
  final pulumi.Input<String> server;

  /// Creates a new [WorkerPoolTemplateVolumeNfs].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount the NFS volume as read only
  /// [server] Hostname or IP address of the NFS server
  WorkerPoolTemplateVolumeNfs({
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

  factory WorkerPoolTemplateVolumeNfs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolumeNfs(
      path: (map['path'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      server: (map['server'] as String).input(),
    );
  }
}

