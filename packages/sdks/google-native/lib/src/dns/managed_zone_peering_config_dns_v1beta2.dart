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
  ManagedZonePeeringConfigDnsV1beta2({
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
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      targetNetwork: map['targetNetwork'] == null ? null : (ManagedZonePeeringConfigTargetNetworkDnsV1beta2.fromMap((map['targetNetwork']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

