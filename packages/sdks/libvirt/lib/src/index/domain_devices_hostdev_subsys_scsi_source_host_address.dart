// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysScsiSourceHostAddress {
  /// Configures the bus number for the SCSI host address.
  final pulumi.Input<double>? bus;
  /// Defines the SCSI controller number for the device's address.
  final pulumi.Input<double>? controller;
  /// Specifies the target ID for the SCSI device's address.
  final pulumi.Input<double>? target;
  /// Indicates the unit number in the SCSI address for the device.
  final pulumi.Input<double>? unit;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceHostAddress].
  /// [bus] Configures the bus number for the SCSI host address.
  /// [controller] Defines the SCSI controller number for the device's address.
  /// [target] Specifies the target ID for the SCSI device's address.
  /// [unit] Indicates the unit number in the SCSI address for the device.
  DomainDevicesHostdevSubsysScsiSourceHostAddress({
    this.bus,
    this.controller,
    this.target,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'controller': ?controller,
      'target': ?target,
      'unit': ?unit,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceHostAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceHostAddress(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      controller: (() { final guardedValue = map['controller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

