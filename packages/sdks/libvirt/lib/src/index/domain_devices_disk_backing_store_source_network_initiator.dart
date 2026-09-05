// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_network_initiator_iqn.dart';

class DomainDevicesDiskBackingStoreSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn?>? iqn;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  const DomainDevicesDiskBackingStoreSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn, Map<String, dynamic>>(iqn, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkInitiator(
      iqn: (() { final guardedValue = map['iqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
