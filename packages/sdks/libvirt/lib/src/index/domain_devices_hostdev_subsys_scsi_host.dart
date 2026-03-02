// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_host_source.dart';

class DomainDevicesHostdevSubsysScsiHost {
  /// Sets the model attribute for the SCSI host device.
  final pulumi.Input<String>? model;
  /// Specifies the source configuration for the SCSI host device.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiHostSource>? source;

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
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiHostSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsiHost.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiHost(
      model: map['model'] == null ? null : (map['model']! as String).input(),
      source: map['source'] == null ? null : (DomainDevicesHostdevSubsysScsiHostSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

