// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateVolumeNf {
  /// Path that is exported by the NFS server.
  final pulumi.Input<String> path;
  /// If true, mount the NFS volume as read only
  final pulumi.Input<bool> readOnly;
  /// Hostname or IP address of the NFS server
  final pulumi.Input<String> server;

  /// Creates a new [GetWorkerPoolTemplateVolumeNf].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount the NFS volume as read only
  /// [server] Hostname or IP address of the NFS server
  GetWorkerPoolTemplateVolumeNf({
    required this.path,
    required this.readOnly,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'readOnly': readOnly,
      'server': server,
    };
  }

  factory GetWorkerPoolTemplateVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolumeNf(
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}

