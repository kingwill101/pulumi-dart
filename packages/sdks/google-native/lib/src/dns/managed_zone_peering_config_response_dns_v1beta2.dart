// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_peering_config_target_network_response_dns_v1beta2.dart';

class ManagedZonePeeringConfigResponseDnsV1beta2 {
  final pulumi.Input<String> kind;

  /// The network with which to peer.
  final pulumi.Input<ManagedZonePeeringConfigTargetNetworkResponseDnsV1beta2>
  targetNetwork;

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
      'targetNetwork':
          pulumi.Input.mapInputValue<
            ManagedZonePeeringConfigTargetNetworkResponseDnsV1beta2,
            Map<String, dynamic>
          >(targetNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedZonePeeringConfigResponseDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePeeringConfigResponseDnsV1beta2(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      targetNetwork: pulumi.Input.fromValue(
        ManagedZonePeeringConfigTargetNetworkResponseDnsV1beta2.fromMap(
          (map['targetNetwork']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
