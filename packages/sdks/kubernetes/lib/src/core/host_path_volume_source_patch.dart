// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
class HostPathVolumeSourcePatch {
  /// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<String>? path;
  /// type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<String>? type;

  /// Creates a new [HostPathVolumeSourcePatch].
  /// [path] path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  /// [type] type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  HostPathVolumeSourcePatch({
    this.path,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'type': ?type,
    };
  }

  factory HostPathVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return HostPathVolumeSourcePatch(
      path: map['path'] == null ? null : (map['path'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

