// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateVolumeNfs {
  /// Path that is exported by the NFS server.
  final pulumi.Input<String> path;
  /// If true, mount the NFS volume as read only
  final pulumi.Input<bool?>? readOnly;
  /// Hostname or IP address of the NFS server
  final pulumi.Input<String> server;

  /// Creates a new [ServiceTemplateVolumeNfs].
  /// [path] Path that is exported by the NFS server.
  /// [readOnly] If true, mount the NFS volume as read only
  /// [server] Hostname or IP address of the NFS server
  const ServiceTemplateVolumeNfs({
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

  factory ServiceTemplateVolumeNfs.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolumeNfs(
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
