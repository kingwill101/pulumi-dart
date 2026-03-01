// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_scsi_host_source.dart';

class DomainDevicesHostdevSubsysScsiHost {
  /// Sets the model attribute for the SCSI host device.
  final String? model;
  /// Specifies the source configuration for the SCSI host device.
  final DomainDevicesHostdevSubsysScsiHostSource? source;

  /// Creates a new [DomainDevicesHostdevSubsysScsiHost].
  /// [model] Sets the model attribute for the SCSI host device.
  /// [source] Specifies the source configuration for the SCSI host device.
  DomainDevicesHostdevSubsysScsiHost({
    this.model,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysScsiHost.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiHost(
      model: map['model'] == null ? null : map['model'] as String,
      source: map['source'] == null ? null : DomainDevicesHostdevSubsysScsiHostSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

