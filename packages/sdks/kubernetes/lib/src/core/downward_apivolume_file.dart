// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_field_selector.dart';
import 'resource_field_selector.dart';

/// DownwardAPIVolumeFile represents information to create the file containing the pod field
class DownwardAPIVolumeFile {
  /// Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported.
  final pulumi.Input<ObjectFieldSelector?>? fieldRef;
  /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int?>? mode;
  /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  final pulumi.Input<String> path;
  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  final pulumi.Input<ResourceFieldSelector?>? resourceFieldRef;
  /// user is Optional: The owner UID of the created file. If specified, the item-level user field takes precedence over defaultUser. (Alpha) This field requires the AtomicWriteVolumeUserFields feature gate to be enabled.
  final pulumi.Input<int?>? user;

  /// Creates a new [DownwardAPIVolumeFile].
  /// [fieldRef] Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported.
  /// [mode] Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [path] Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  /// [resourceFieldRef] Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  /// [user] user is Optional: The owner UID of the created file. If specified, the item-level user field takes precedence over defaultUser. (Alpha) This field requires the AtomicWriteVolumeUserFields feature gate to be enabled.
  const DownwardAPIVolumeFile({
    this.fieldRef,
    this.mode,
    required this.path,
    this.resourceFieldRef,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldRef': ?pulumi.Input.mapOptionalInputValue<ObjectFieldSelector, Map<String, dynamic>>(fieldRef, (value) => value.toMap()),
      'mode': ?mode,
      'path': path,
      'resourceFieldRef': ?pulumi.Input.mapOptionalInputValue<ResourceFieldSelector, Map<String, dynamic>>(resourceFieldRef, (value) => value.toMap()),
      'user': ?user,
    };
  }

  factory DownwardAPIVolumeFile.fromMap(Map<String, dynamic> map) {
    return DownwardAPIVolumeFile(
      fieldRef: (() { final guardedValue = map['fieldRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectFieldSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      resourceFieldRef: (() { final guardedValue = map['resourceFieldRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceFieldSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
