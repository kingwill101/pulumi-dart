// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDevice {
  /// The path in the container where the device will be bound. If not set, it defaults to the value of `hostPath`.
  final pulumi.Input<String>? containerPath;
  /// The path on the host where the device is located.
  final pulumi.Input<String> hostPath;
  /// The cgroup permissions given to the container to access the device. Defaults to `rwm`.
  final pulumi.Input<String>? permissions;

  /// Creates a new [ContainerDevice].
  /// [containerPath] The path in the container where the device will be bound. If not set, it defaults to the value of `hostPath`.
  /// [hostPath] The path on the host where the device is located.
  /// [permissions] The cgroup permissions given to the container to access the device. Defaults to `rwm`.
  const ContainerDevice({
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
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPath: pulumi.Input.fromValue(map['hostPath'] as String),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
