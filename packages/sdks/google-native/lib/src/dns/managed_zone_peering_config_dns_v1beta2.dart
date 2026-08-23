// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_peering_config_target_network_dns_v1beta2.dart';

class ManagedZonePeeringConfigDnsV1beta2 {
  final pulumi.Input<String>? kind;
  /// The network with which to peer.
  final pulumi.Input<ManagedZonePeeringConfigTargetNetworkDnsV1beta2>? targetNetwork;

  /// Creates a new [ManagedZonePeeringConfigDnsV1beta2].
  /// [kind] Optional.
  /// [targetNetwork] The network with which to peer.
  const ManagedZonePeeringConfigDnsV1beta2({
    this.kind,
    this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedZonePeeringConfigTargetNetworkDnsV1beta2, Map<String, dynamic>>(targetNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedZonePeeringConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigDnsV1beta2(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNetwork: (() { final guardedValue = map['targetNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZonePeeringConfigTargetNetworkDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
