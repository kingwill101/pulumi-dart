// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_usb_source.dart';

class DomainDevicesHostdevSubsysUsb {
  /// Specifies the source attributes for the USB subsystem device, detailing its origin.
  final pulumi.Input<DomainDevicesHostdevSubsysUsbSource>? source;

  /// Creates a new [DomainDevicesHostdevSubsysUsb].
  /// [source] Specifies the source attributes for the USB subsystem device, detailing its origin.
  DomainDevicesHostdevSubsysUsb({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysUsbSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsb(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysUsbSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

