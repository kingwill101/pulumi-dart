// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceTaintSelector defines which device(s) a DeviceTaintRule applies to. The empty selector matches all devices. Without a selector, no devices are matched.
class DeviceTaintSelector {
  /// If device is set, only devices with that name are selected. This field corresponds to slice.spec.devices[].name.
  ///
  /// Setting also driver and pool may be required to avoid ambiguity, but is not required.
  final pulumi.Input<String>? device;
  /// If driver is set, only devices from that driver are selected. This fields corresponds to slice.spec.driver.
  final pulumi.Input<String>? driver;
  /// If pool is set, only devices in that pool are selected.
  ///
  /// Also setting the driver name may be useful to avoid ambiguity when different drivers use the same pool name, but this is not required because selecting pools from different drivers may also be useful, for example when drivers with node-local devices use the node name as their pool name.
  final pulumi.Input<String>? pool;

  /// Creates a new [DeviceTaintSelector].
  /// [device] If device is set, only devices with that name are selected. This field corresponds to slice.spec.devices[].name.
  /// [driver] If driver is set, only devices from that driver are selected. This fields corresponds to slice.spec.driver.
  /// [pool] If pool is set, only devices in that pool are selected.
  const DeviceTaintSelector({
    this.device,
    this.driver,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'driver': ?driver,
      'pool': ?pool,
    };
  }

  factory DeviceTaintSelector.fromMap(Map<String, dynamic> map) {
    return DeviceTaintSelector(
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
