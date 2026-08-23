// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AttachedVolume describes a volume attached to a node
class AttachedVolumePatch {
  /// DevicePath represents the device path where the volume should be available
  final pulumi.Input<String>? devicePath;
  /// Name of the attached volume
  final pulumi.Input<String>? name;

  /// Creates a new [AttachedVolumePatch].
  /// [devicePath] DevicePath represents the device path where the volume should be available
  /// [name] Name of the attached volume
  const AttachedVolumePatch({
    this.devicePath,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePath': ?devicePath,
      'name': ?name,
    };
  }

  factory AttachedVolumePatch.fromMap(Map<String, dynamic> map) {
    return AttachedVolumePatch(
      devicePath: (() { final guardedValue = map['devicePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
