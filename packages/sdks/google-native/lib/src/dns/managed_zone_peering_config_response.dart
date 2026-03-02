// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_peering_config_target_network_response.dart';

class ManagedZonePeeringConfigResponse {
  final pulumi.Input<String> kind;
  /// The network with which to peer.
  final pulumi.Input<ManagedZonePeeringConfigTargetNetworkResponse> targetNetwork;

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
      'targetNetwork': pulumi.Input.mapInputValue<ManagedZonePeeringConfigTargetNetworkResponse, Map<String, dynamic>>(targetNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedZonePeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigResponse(
      kind: (map['kind'] as String).input(),
      targetNetwork: (ManagedZonePeeringConfigTargetNetworkResponse.fromMap((map['targetNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

