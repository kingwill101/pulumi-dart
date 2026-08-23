// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsVolumeSource {
  /// endpoints is the endpoint name that details Glusterfs topology.
  final pulumi.Input<String> endpoints;
  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final pulumi.Input<String> path;
  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [GlusterfsVolumeSource].
  /// [endpoints] endpoints is the endpoint name that details Glusterfs topology.
  /// [path] path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [readOnly] readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  const GlusterfsVolumeSource({
    required this.endpoints,
    required this.path,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': endpoints,
      'path': path,
      'readOnly': ?readOnly,
    };
  }

  factory GlusterfsVolumeSource.fromMap(Map<String, dynamic> map) {
    return GlusterfsVolumeSource(
      endpoints: pulumi.Input.fromValue(map['endpoints'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
