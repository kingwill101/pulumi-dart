// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source.dart';

class DomainDevicesHostdevSubsysScsi {
  /// Indicates whether raw I/O access is enabled for the SCSI device.
  final pulumi.Input<String>? rawIo;
  /// Specifies if the SCSI device is set to read-only mode.
  final pulumi.Input<bool>? readOnly;
  /// Controls whether SCSI generic I/O is enabled for the device.
  final pulumi.Input<String>? sgio;
  /// Indicates if the SCSI device can be shared among different guests.
  final pulumi.Input<bool>? shareable;
  /// Specifies the source configuration for the SCSI device being passed through.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSource>? source;

  /// Creates a new [DomainDevicesHostdevSubsysScsi].
  /// [rawIo] Indicates whether raw I/O access is enabled for the SCSI device.
  /// [readOnly] Specifies if the SCSI device is set to read-only mode.
  /// [sgio] Controls whether SCSI generic I/O is enabled for the device.
  /// [shareable] Indicates if the SCSI device can be shared among different guests.
  /// [source] Specifies the source configuration for the SCSI device being passed through.
  const DomainDevicesHostdevSubsysScsi({
    this.rawIo,
    this.readOnly,
    this.sgio,
    this.shareable,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rawIo': ?rawIo,
      'readOnly': ?readOnly,
      'sgio': ?sgio,
      'shareable': ?shareable,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsi(
      rawIo: (() { final guardedValue = map['rawIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sgio: (() { final guardedValue = map['sgio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareable: (() { final guardedValue = map['shareable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysScsiSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
