// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final pulumi.Input<String> network;
  /// Name of the subnetwork where the additional interface belongs.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs.
  /// [subnetwork] Name of the subnetwork where the additional interface belongs.
  const GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
    required this.network,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

