// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_status.dart';

/// VolumeMountStatus shows status of volume mounts.
class VolumeMountStatus {
  /// MountPath corresponds to the original VolumeMount.
  final pulumi.Input<String> mountPath;
  /// Name corresponds to the name of the original VolumeMount.
  final pulumi.Input<String> name;
  /// ReadOnly corresponds to the original VolumeMount.
  final pulumi.Input<bool>? readOnly;
  /// RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  final pulumi.Input<String>? recursiveReadOnly;
  /// volumeStatus represents volume-type-specific status about the mounted volume.
  final pulumi.Input<VolumeStatus>? volumeStatus;

  /// Creates a new [VolumeMountStatus].
  /// [mountPath] MountPath corresponds to the original VolumeMount.
  /// [name] Name corresponds to the name of the original VolumeMount.
  /// [readOnly] ReadOnly corresponds to the original VolumeMount.
  /// [recursiveReadOnly] RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
  /// [volumeStatus] volumeStatus represents volume-type-specific status about the mounted volume.
  const VolumeMountStatus({
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.recursiveReadOnly,
    this.volumeStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
      'recursiveReadOnly': ?recursiveReadOnly,
      'volumeStatus': ?pulumi.Input.mapOptionalInputValue<VolumeStatus, Map<String, dynamic>>(volumeStatus, (value) => value.toMap()),
    };
  }

  factory VolumeMountStatus.fromMap(Map<String, dynamic> map) {
    return VolumeMountStatus(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recursiveReadOnly: (() { final guardedValue = map['recursiveReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeStatus: (() { final guardedValue = map['volumeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
