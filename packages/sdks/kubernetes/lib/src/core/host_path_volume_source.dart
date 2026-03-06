// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
class HostPathVolumeSource {
  /// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<String> path;
  /// type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<String>? type;

  /// Creates a new [HostPathVolumeSource].
  /// [path] path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  /// [type] type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  const HostPathVolumeSource({
    required this.path,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'type': ?type,
    };
  }

  factory HostPathVolumeSource.fromMap(Map<String, dynamic> map) {
    return HostPathVolumeSource(
      path: pulumi.Input.fromValue(map['path'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

