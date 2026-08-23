// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskTarget {
  /// Sets the bus type for the disk device target, determining how it connects to the guest.
  final pulumi.Input<String>? bus;
  /// Specifies the target device name for the disk device within the guest.
  final pulumi.Input<String>? dev;
  /// Indicates whether the disk device is removable within the guest.
  final pulumi.Input<String>? removable;
  /// Sets the rotational speed for the disk device, affecting its performance characteristics.
  final pulumi.Input<double>? rotationRate;
  /// Configures the tray setting for the disk device, indicating whether the tray is open or closed.
  final pulumi.Input<String>? tray;

  /// Creates a new [DomainDevicesDiskTarget].
  /// [bus] Sets the bus type for the disk device target, determining how it connects to the guest.
  /// [dev] Specifies the target device name for the disk device within the guest.
  /// [removable] Indicates whether the disk device is removable within the guest.
  /// [rotationRate] Sets the rotational speed for the disk device, affecting its performance characteristics.
  /// [tray] Configures the tray setting for the disk device, indicating whether the tray is open or closed.
  const DomainDevicesDiskTarget({
    this.bus,
    this.dev,
    this.removable,
    this.rotationRate,
    this.tray,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'dev': ?dev,
      'removable': ?removable,
      'rotationRate': ?rotationRate,
      'tray': ?tray,
    };
  }

  factory DomainDevicesDiskTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskTarget(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      removable: (() { final guardedValue = map['removable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotationRate: (() { final guardedValue = map['rotationRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tray: (() { final guardedValue = map['tray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
