// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_host_adapter.dart';
import 'domain_devices_hostdev_subsys_scsi_source_host_address.dart';

class DomainDevicesHostdevSubsysScsiSourceHost {
  /// Defines the adapter settings for the SCSI host source.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceHostAdapter>? adapter;
  /// Specifies the address settings for the SCSI host source.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceHostAddress>? address;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceHost].
  /// [adapter] Defines the adapter settings for the SCSI host source.
  /// [address] Specifies the address settings for the SCSI host source.
  DomainDevicesHostdevSubsysScsiSourceHost({
    this.adapter,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapter': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceHostAdapter, Map<String, dynamic>>(adapter, (value) => value.toMap()),
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceHostAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceHost.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceHost(
      adapter: map['adapter'] == null ? null : (DomainDevicesHostdevSubsysScsiSourceHostAdapter.fromMap((map['adapter']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : (DomainDevicesHostdevSubsysScsiSourceHostAddress.fromMap((map['address']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

