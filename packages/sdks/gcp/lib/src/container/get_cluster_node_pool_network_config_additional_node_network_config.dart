// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig {
  /// Name of the VPC where the additional interface belongs.
  final pulumi.Input<String> network;
  /// The IP stack type of the additional node interface. Possible values are IPV4, IPV4_IPV6 and IPV6. If unset, the value is inferred from the additional subnetwork.
  final pulumi.Input<String> stackType;
  /// Name of the subnetwork where the additional interface belongs.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig].
  /// [network] Name of the VPC where the additional interface belongs.
  /// [stackType] The IP stack type of the additional node interface. Possible values are IPV4, IPV4_IPV6 and IPV6. If unset, the value is inferred from the additional subnetwork.
  /// [subnetwork] Name of the subnetwork where the additional interface belongs.
  const GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig({
    required this.network,
    required this.stackType,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'stackType': stackType,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigAdditionalNodeNetworkConfig(
      network: pulumi.Input.fromValue(map['network'] as String),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
