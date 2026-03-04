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
  DomainDevicesHostdevSubsysScsiSource({this.host, this.iscsi});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsiSourceHost,
            Map<String, dynamic>
          >(host, (value) => value.toMap()),
      'iscsi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsiSourceIscsi,
            Map<String, dynamic>
          >(iscsi, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesHostdevSubsysScsiSource(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsiSourceHost.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      iscsi: (() {
        final guardedValue = map['iscsi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsiSourceIscsi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
