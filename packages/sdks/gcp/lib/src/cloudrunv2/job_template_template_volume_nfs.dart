// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateTemplateVolumeNfs {
  /// Path that is exported by the NFS server.
  final pulumi.Input<String>? path;

  /// If true, mount this volume as read-only in all mounts.
  final pulumi.Input<bool>? readOnly;

  /// Hostname or IP address of the NFS server.
  final pulumi.Input<String> server;

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
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
