// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Path within the container at which the volume should be mounted.  Must not contain ':'.
  final pulumi.Input<String> mountPath;

  /// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None or unspecified (which defaults to None).
  final pulumi.Input<String>? mountPropagation;

  /// This must match the Name of a Volume.
  final pulumi.Input<String> name;

  /// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  final pulumi.Input<bool>? readOnly;

  /// RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
  ///
  /// If ReadOnly is false, this field has no meaning and must be unspecified.
  ///
  /// If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively read-only.  If this field is set to IfPossible, the mount is made recursively read-only, if it is supported by the container runtime.  If this field is set to Enabled, the mount is made recursively read-only if it is supported by the container runtime, otherwise the pod will not be started and an error will be generated to indicate the reason.
  ///
  /// If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or be unspecified, which defaults to None).
  ///
  /// If this field is not specified, it is treated as an equivalent of Disabled.
  final pulumi.Input<String>? recursiveReadOnly;

  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final pulumi.Input<String>? subPath;

  /// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  final pulumi.Input<String>? subPathExpr;

  /// Creates a new [VolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.  Must not contain ':'.
  /// [mountPropagation] mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None or unspecified (which defaults to None).
  /// [name] This must match the Name of a Volume.
  /// [readOnly] Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  /// [recursiveReadOnly] RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
  /// [subPath] Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  /// [subPathExpr] Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  VolumeMount({
    required this.mountPath,
    this.mountPropagation,
    required this.name,
    this.readOnly,
    this.recursiveReadOnly,
    this.subPath,
    this.subPathExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'mountPropagation': ?mountPropagation,
      'name': name,
      'readOnly': ?readOnly,
      'recursiveReadOnly': ?recursiveReadOnly,
      'subPath': ?subPath,
      'subPathExpr': ?subPathExpr,
    };
  }

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      mountPropagation: (() {
        final guardedValue = map['mountPropagation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      recursiveReadOnly: (() {
        final guardedValue = map['recursiveReadOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subPath: (() {
        final guardedValue = map['subPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subPathExpr: (() {
        final guardedValue = map['subPathExpr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
