// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterNetwork {
  /// Network spec of the cluster.
  /// Structure is documented below.
  final pulumi.Input<String> network;
  /// The name of the subnetwork in the above network to create the cluster.
  /// If not specified:
  /// * for auto mode VPC, the subnet in corresponding region is auto-selected;
  /// * for custom mode VPC, a new subnet will be automatically created.
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [AiModelDevelopmentClusterNetwork].
  /// [network] Network spec of the cluster.
  /// [subnetwork] The name of the subnetwork in the above network to create the cluster.
  const AiModelDevelopmentClusterNetwork({
    required this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': ?subnetwork,
    };
  }

  factory AiModelDevelopmentClusterNetwork.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
