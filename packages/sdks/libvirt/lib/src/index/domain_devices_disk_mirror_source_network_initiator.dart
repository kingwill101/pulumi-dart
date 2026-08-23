// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_network_initiator_iqn.dart';

class DomainDevicesDiskMirrorSourceNetworkInitiator {
  /// Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkInitiatorIqn>? iqn;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkInitiator].
  /// [iqn] Configures the iSCSI qualified name (IQN) used for the initiator in network block device configurations.
  const DomainDevicesDiskMirrorSourceNetworkInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkInitiatorIqn, Map<String, dynamic>>(iqn, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkInitiator(
      iqn: (() { final guardedValue = map['iqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkInitiatorIqn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
