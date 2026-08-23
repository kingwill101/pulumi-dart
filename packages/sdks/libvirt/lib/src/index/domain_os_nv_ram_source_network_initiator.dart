// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_network_initiator_iqn.dart';

class DomainOsNvRamSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final pulumi.Input<DomainOsNvRamSourceNetworkInitiatorIqn>? iqn;

  /// Creates a new [DomainOsNvRamSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  const DomainOsNvRamSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceNetworkInitiatorIqn, Map<String, dynamic>>(iqn, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkInitiator(
      iqn: (() { final guardedValue = map['iqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceNetworkInitiatorIqn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
