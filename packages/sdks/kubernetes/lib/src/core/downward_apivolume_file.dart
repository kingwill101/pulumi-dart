// ignore_for_file: unused_element, unnecessary_cast

import 'object_field_selector.dart';
import 'resource_field_selector.dart';

/// DownwardAPIVolumeFile represents information to create the file containing the pod field
class DownwardAPIVolumeFile {
  /// Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported.
  final ObjectFieldSelector? fieldRef;
  /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;
  /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  final String path;
  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  final ResourceFieldSelector? resourceFieldRef;

  /// Creates a new [DownwardAPIVolumeFile].
  /// [fieldRef] Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported.
  /// [mode] Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [path] Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  /// [resourceFieldRef] Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  DownwardAPIVolumeFile({
    this.fieldRef,
    this.mode,
    required this.path,
    this.resourceFieldRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldRef': ?fieldRef == null ? null : fieldRef!.toMap(),
      'mode': ?mode,
      'path': path,
      'resourceFieldRef': ?resourceFieldRef == null ? null : resourceFieldRef!.toMap(),
    };
  }

  factory DownwardAPIVolumeFile.fromMap(Map<String, dynamic> map) {
    return DownwardAPIVolumeFile(
      fieldRef: map['fieldRef'] == null ? null : ObjectFieldSelector.fromMap((map['fieldRef'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
      resourceFieldRef: map['resourceFieldRef'] == null ? null : ResourceFieldSelector.fromMap((map['resourceFieldRef'] as Map).cast<String, dynamic>()),
    );
  }
}

