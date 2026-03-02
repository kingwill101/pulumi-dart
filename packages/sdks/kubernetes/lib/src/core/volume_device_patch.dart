// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// volumeDevice describes a mapping of a raw block device within a container.
class VolumeDevicePatch {
  /// devicePath is the path inside of the container that the device will be mapped to.
  final pulumi.Input<String>? devicePath;
  /// name must match the name of a persistentVolumeClaim in the pod
  final pulumi.Input<String>? name;

  /// Creates a new [VolumeDevicePatch].
  /// [devicePath] devicePath is the path inside of the container that the device will be mapped to.
  /// [name] name must match the name of a persistentVolumeClaim in the pod
  VolumeDevicePatch({
    this.devicePath,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePath': ?devicePath,
      'name': ?name,
    };
  }

  factory VolumeDevicePatch.fromMap(Map<String, dynamic> map) {
    return VolumeDevicePatch(
      devicePath: map['devicePath'] == null ? null : (map['devicePath']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

