// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_peering_config_target_network.dart';

class ManagedZonePeeringConfig {
  final pulumi.Input<String>? kind;

  /// The network with which to peer.
  final pulumi.Input<ManagedZonePeeringConfigTargetNetwork>? targetNetwork;

  /// Creates a new [ManagedZonePeeringConfig].
  /// [kind] Optional.
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfig({this.kind, this.targetNetwork});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePeeringConfigTargetNetwork,
            Map<String, dynamic>
          >(targetNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetNetwork: (() {
        final guardedValue = map['targetNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZonePeeringConfigTargetNetwork.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
