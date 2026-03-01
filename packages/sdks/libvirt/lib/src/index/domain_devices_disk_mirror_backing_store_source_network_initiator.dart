// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_network_initiator_iqn.dart';

class DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiatorIqn? iqn;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator(
      iqn: map['iqn'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}

