// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkResourceConfigExistingNetwork {
  /// Name of the network to import, in the format
  /// `projects/{project}/global/networks/{network}`.
  final pulumi.Input<String> network;
  /// Particular subnetwork to use, in the format
  /// `projects/{project}/regions/{region}/subnetworks/{subnetwork}`.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [ClusterNetworkResourceConfigExistingNetwork].
  /// [network] Name of the network to import, in the format
  /// [subnetwork] Particular subnetwork to use, in the format
  const ClusterNetworkResourceConfigExistingNetwork({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory ClusterNetworkResourceConfigExistingNetwork.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkResourceConfigExistingNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
