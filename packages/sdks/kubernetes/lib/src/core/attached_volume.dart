// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AttachedVolume describes a volume attached to a node
class AttachedVolume {
  /// DevicePath represents the device path where the volume should be available
  final pulumi.Input<String> devicePath;
  /// Name of the attached volume
  final pulumi.Input<String> name;

  /// Creates a new [AttachedVolume].
  /// [devicePath] DevicePath represents the device path where the volume should be available
  /// [name] Name of the attached volume
  AttachedVolume({
    required this.devicePath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePath': devicePath,
      'name': name,
    };
  }

  factory AttachedVolume.fromMap(Map<String, dynamic> map) {
    return AttachedVolume(
      devicePath: (map['devicePath'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

