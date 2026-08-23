// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_initiator_iqn.dart';

class DomainDevicesHostdevSubsysScsiSourceIscsiInitiator {
  /// Defines the IQN (iSCSI Qualified Name) for the iSCSI initiator.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn>? iqn;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsiInitiator].
  /// [iqn] Defines the IQN (iSCSI Qualified Name) for the iSCSI initiator.
  const DomainDevicesHostdevSubsysScsiSourceIscsiInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn, Map<String, dynamic>>(iqn, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsiInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsiInitiator(
      iqn: (() { final guardedValue = map['iqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
