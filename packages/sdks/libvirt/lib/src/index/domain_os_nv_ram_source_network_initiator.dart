// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_network_initiator_iqn.dart';

class DomainOsNvRamSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final DomainOsNvRamSourceNetworkInitiatorIqn? iqn;

  /// Creates a new [DomainOsNvRamSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  DomainOsNvRamSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory DomainOsNvRamSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkInitiator(
      iqn: map['iqn'] == null ? null : DomainOsNvRamSourceNetworkInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}

