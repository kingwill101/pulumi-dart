// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_peering_config_target_network.dart';

class ManagedZonePeeringConfig {
  /// The network with which to peer.
  /// Structure is documented below.
  final pulumi.Input<ManagedZonePeeringConfigTargetNetwork> targetNetwork;

  /// Creates a new [ManagedZonePeeringConfig].
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfig({
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetNetwork': pulumi.Input.mapInputValue<ManagedZonePeeringConfigTargetNetwork, Map<String, dynamic>>(targetNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig(
      targetNetwork: (ManagedZonePeeringConfigTargetNetwork.fromMap((map['targetNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

