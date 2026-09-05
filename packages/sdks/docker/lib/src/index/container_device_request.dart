// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerDeviceRequest {
  /// List of device capabilities. Only used with `nvidia` driver (e.g., `gpu`, `compute`, `utility`).
  final pulumi.Input<List<String>?>? capabilities;
  /// Number of devices to request. Use -1 for all devices. Only used with `nvidia` driver.
  final pulumi.Input<int?>? count;
  /// List of device IDs or CDI device identifiers (e.g., `nvidia.com/gpu=all`).
  final pulumi.Input<List<String>?>? deviceIds;
  /// The device driver to use. Common values: `cdi` for CDI devices, `nvidia` for NVIDIA GPU requests.
  final pulumi.Input<String?>? driver;
  /// Driver-specific options.
  final pulumi.Input<Map<String, String>?>? options;

  /// Creates a new [ContainerDeviceRequest].
  /// [capabilities] List of device capabilities. Only used with `nvidia` driver (e.g., `gpu`, `compute`, `utility`).
  /// [count] Number of devices to request. Use -1 for all devices. Only used with `nvidia` driver.
  /// [deviceIds] List of device IDs or CDI device identifiers (e.g., `nvidia.com/gpu=all`).
  /// [driver] The device driver to use. Common values: `cdi` for CDI devices, `nvidia` for NVIDIA GPU requests.
  /// [options] Driver-specific options.
  const ContainerDeviceRequest({
    this.capabilities,
    this.count,
    this.deviceIds,
    this.driver,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'count': ?count,
      'deviceIds': ?deviceIds,
      'driver': ?driver,
      'options': ?options,
    };
  }

  factory ContainerDeviceRequest.fromMap(Map<String, dynamic> map) {
    return ContainerDeviceRequest(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deviceIds: (() { final guardedValue = map['deviceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
