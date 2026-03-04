// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesShmemMsi {
  /// Enables or disables MSI for the shared memory device, controlling interrupt generation.
  final pulumi.Input<String>? enabled;

  /// Configures the IO event file descriptor for MSI handling in the shared memory device.
  final pulumi.Input<String>? ioEventFd;

  /// Sets the number of IRQ vectors available for the MSI configuration of the shared memory device.
  final pulumi.Input<double>? vectors;

  /// Creates a new [DomainDevicesShmemMsi].
  /// [enabled] Enables or disables MSI for the shared memory device, controlling interrupt generation.
  /// [ioEventFd] Configures the IO event file descriptor for MSI handling in the shared memory device.
  /// [vectors] Sets the number of IRQ vectors available for the MSI configuration of the shared memory device.
  DomainDevicesShmemMsi({this.enabled, this.ioEventFd, this.vectors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'ioEventFd': ?ioEventFd,
      'vectors': ?vectors,
    };
  }

  factory DomainDevicesShmemMsi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemMsi(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ioEventFd: (() {
        final guardedValue = map['ioEventFd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vectors: (() {
        final guardedValue = map['vectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
