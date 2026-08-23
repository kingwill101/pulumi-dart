// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateVolumeNf {
  /// Path that is exported by the NFS server.
  final pulumi.Input<String> path;
  /// If true, mount this volume as read-only in all mounts.
  final pulumi.Input<bool> readOnly;
  /// Hostname or IP address of the NFS server.
  final pulumi.Input<String> server;

  /// Creates a new [GetJobTemplateTemplateVolumeNf].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount this volume as read-only in all mounts.
  /// [server] Hostname or IP address of the NFS server.
  const GetJobTemplateTemplateVolumeNf({
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

  factory GetJobTemplateTemplateVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolumeNf(
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
