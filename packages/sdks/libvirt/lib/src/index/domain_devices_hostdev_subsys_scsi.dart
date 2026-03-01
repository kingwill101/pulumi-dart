// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_scsi_source.dart';

class DomainDevicesHostdevSubsysScsi {
  /// Indicates whether raw I/O access is enabled for the SCSI device.
  final String? rawIo;
  /// Specifies if the SCSI device is set to read-only mode.
  final bool? readOnly;
  /// Controls whether SCSI generic I/O is enabled for the device.
  final String? sgio;
  /// Indicates if the SCSI device can be shared among different guests.
  final bool? shareable;
  /// Specifies the source configuration for the SCSI device being passed through.
  final DomainDevicesHostdevSubsysScsiSource? source;

  /// Creates a new [DomainDevicesHostdevSubsysScsi].
  /// [rawIo] Indicates whether raw I/O access is enabled for the SCSI device.
  /// [readOnly] Specifies if the SCSI device is set to read-only mode.
  /// [sgio] Controls whether SCSI generic I/O is enabled for the device.
  /// [shareable] Indicates if the SCSI device can be shared among different guests.
  /// [source] Specifies the source configuration for the SCSI device being passed through.
  DomainDevicesHostdevSubsysScsi({
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
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysScsi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsi(
      rawIo: map['rawIo'] == null ? null : map['rawIo'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sgio: map['sgio'] == null ? null : map['sgio'] as String,
      shareable: map['shareable'] == null ? null : map['shareable'] as bool,
      source: map['source'] == null ? null : DomainDevicesHostdevSubsysScsiSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

