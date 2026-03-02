// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_host.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi.dart';

class DomainDevicesHostdevSubsysScsiSource {
  /// Configures the host settings for the SCSI device source.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceHost>? host;
  /// Defines the iSCSI source parameters for the SCSI device.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceIscsi>? iscsi;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSource].
  /// [host] Configures the host settings for the SCSI device source.
  /// [iscsi] Defines the iSCSI source parameters for the SCSI device.
  DomainDevicesHostdevSubsysScsiSource({
    this.host,
    this.iscsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'iscsi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceIscsi, Map<String, dynamic>>(iscsi, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSource(
      host: map['host'] == null ? null : (DomainDevicesHostdevSubsysScsiSourceHost.fromMap((map['host'] as Map).cast<String, dynamic>())).input(),
      iscsi: map['iscsi'] == null ? null : (DomainDevicesHostdevSubsysScsiSourceIscsi.fromMap((map['iscsi'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

