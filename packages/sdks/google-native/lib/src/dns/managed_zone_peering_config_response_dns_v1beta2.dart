// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network_response_dns_v1beta2.dart';

class ManagedZonePeeringConfigResponseDnsV1beta2 {
  final String kind;
  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetworkResponseDnsV1beta2 targetNetwork;

  /// Creates a new [ManagedZonePeeringConfigResponseDnsV1beta2].
  /// [kind] Required.
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfigResponseDnsV1beta2({
    required this.kind,
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNetwork': targetNetwork.toMap(),
    };
  }

  factory ManagedZonePeeringConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
      targetNetwork: ManagedZonePeeringConfigTargetNetworkResponseDnsV1beta2.fromMap((map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

