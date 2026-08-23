// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecVolumeNf {
  /// Path exported by the NFS server
  final pulumi.Input<String> path;
  /// If true, mount the NFS volume as read only in all mounts. Defaults to false.
  final pulumi.Input<bool> readOnly;
  /// IP address or hostname of the NFS server
  final pulumi.Input<String> server;

  /// Creates a new [GetServiceTemplateSpecVolumeNf].
  /// [path] Path exported by the NFS server
  /// [readOnly] If true, mount the NFS volume as read only in all mounts. Defaults to false.
  /// [server] IP address or hostname of the NFS server
  const GetServiceTemplateSpecVolumeNf({
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

  factory GetServiceTemplateSpecVolumeNf.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeNf(
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
