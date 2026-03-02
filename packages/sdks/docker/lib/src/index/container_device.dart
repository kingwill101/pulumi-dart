// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDevice {
  /// The path in the container where the device will be bound.
  final pulumi.Input<String>? containerPath;
  /// The path on the host where the device is located.
  final pulumi.Input<String> hostPath;
  /// The cgroup permissions given to the container to access the device. Defaults to `rwm`.
  final pulumi.Input<String>? permissions;

  /// Creates a new [ContainerDevice].
  /// [containerPath] The path in the container where the device will be bound.
  /// [hostPath] The path on the host where the device is located.
  /// [permissions] The cgroup permissions given to the container to access the device. Defaults to `rwm`.
  ContainerDevice({
    this.containerPath,
    required this.hostPath,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'hostPath': hostPath,
      'permissions': ?permissions,
    };
  }

  factory ContainerDevice.fromMap(Map<String, dynamic> map) {
    return ContainerDevice(
      containerPath: map['containerPath'] == null ? null : (map['containerPath']! as String).input(),
      hostPath: (map['hostPath'] as String).input(),
      permissions: map['permissions'] == null ? null : (map['permissions']! as String).input(),
    );
  }
}

