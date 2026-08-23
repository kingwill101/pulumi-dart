// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// The name or selfLink of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final pulumi.Input<String>? network;
  /// The name or selfLink of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] The name or selfLink of the Google Compute Engine
  /// [subnetwork] The name or selfLink of the Google Compute Engine
  const ClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
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
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
