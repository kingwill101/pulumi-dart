// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network_response.dart';

class ManagedZonePeeringConfigResponse {
  final String kind;
  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetworkResponse targetNetwork;

  /// Creates a new [ManagedZonePeeringConfigResponse].
  /// [kind] Required.
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfigResponse({
    required this.kind,
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNetwork': targetNetwork.toMap(),
    };
  }

  factory ManagedZonePeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigResponse(
      kind: map['kind'] as String,
      targetNetwork: ManagedZonePeeringConfigTargetNetworkResponse.fromMap((map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

