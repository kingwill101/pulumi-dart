// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecVolumeNfs {
  /// Path exported by the NFS server
  final pulumi.Input<String> path;
  /// If true, mount the NFS volume as read only in all mounts. Defaults to false.
  final pulumi.Input<bool>? readOnly;
  /// IP address or hostname of the NFS server
  final pulumi.Input<String> server;

  /// Creates a new [ServiceTemplateSpecVolumeNfs].
  /// [path] Path exported by the NFS server
  /// [readOnly] If true, mount the NFS volume as read only in all mounts. Defaults to false.
  /// [server] IP address or hostname of the NFS server
  ServiceTemplateSpecVolumeNfs({
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

  factory ServiceTemplateSpecVolumeNfs.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecVolumeNfs(
      path: (map['path'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      server: (map['server'] as String).input(),
    );
  }
}

