// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_resource_config_existing_network.dart';
import 'cluster_network_resource_config_new_network.dart';

class ClusterNetworkResourceConfig {
  /// When set in a NetworkResourceConfig, indicates that an existing network
  /// should be imported.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkResourceConfigExistingNetwork>? existingNetwork;
  /// When set in a NetworkResourceConfig, indicates that a new network should
  /// be created.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkResourceConfigNewNetwork>? newNetwork;

  /// Creates a new [ClusterNetworkResourceConfig].
  /// [existingNetwork] When set in a NetworkResourceConfig, indicates that an existing network
  /// [newNetwork] When set in a NetworkResourceConfig, indicates that a new network should
  const ClusterNetworkResourceConfig({
    this.existingNetwork,
    this.newNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'existingNetwork': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkResourceConfigExistingNetwork, Map<String, dynamic>>(existingNetwork, (value) => value.toMap()),
      'newNetwork': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkResourceConfigNewNetwork, Map<String, dynamic>>(newNetwork, (value) => value.toMap()),
    };
  }

  factory ClusterNetworkResourceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkResourceConfig(
      existingNetwork: (() { final guardedValue = map['existingNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkResourceConfigExistingNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newNetwork: (() { final guardedValue = map['newNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkResourceConfigNewNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
