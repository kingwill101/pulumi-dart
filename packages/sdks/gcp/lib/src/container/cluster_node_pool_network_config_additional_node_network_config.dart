// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// The name or self_link of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final pulumi.Input<String>? network;
  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] The name or self_link of the Google Compute Engine
  /// [subnetwork] The name or self_link of the Google Compute Engine
  ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: map['network'] == null ? null : (map['network'] as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
    );
  }
}

