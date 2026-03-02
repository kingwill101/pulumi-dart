// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_network_initiator_iqn.dart';

class DomainDevicesDiskSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final pulumi.Input<DomainDevicesDiskSourceNetworkInitiatorIqn>? iqn;

  /// Creates a new [DomainDevicesDiskSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  DomainDevicesDiskSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkInitiatorIqn, Map<String, dynamic>>(iqn, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkInitiator(
      iqn: map['iqn'] == null ? null : (DomainDevicesDiskSourceNetworkInitiatorIqn.fromMap((map['iqn']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

