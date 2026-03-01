// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsVolumeSourcePatch {
  /// endpoints is the endpoint name that details Glusterfs topology.
  final String? endpoints;
  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String? path;
  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final bool? readOnly;

  /// Creates a new [GlusterfsVolumeSourcePatch].
  /// [endpoints] endpoints is the endpoint name that details Glusterfs topology.
  /// [path] path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [readOnly] readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  GlusterfsVolumeSourcePatch({
    this.endpoints,
    this.path,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints,
      'path': ?path,
      'readOnly': ?readOnly,
    };
  }

  factory GlusterfsVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return GlusterfsVolumeSourcePatch(
      endpoints: map['endpoints'] == null ? null : map['endpoints'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

