// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork {
  /// Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires `compute.network.get` permission to be granted to caller.
  final pulumi.Input<String> network;
  /// A list of CIDR block IP subnetwork specification. Must be IPv4.
  final pulumi.Input<List<String>?>? vpcIpSubnetworks;

  /// Creates a new [AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork].
  /// [network] Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires `compute.network.get` permission to be granted to caller.
  /// [vpcIpSubnetworks] A list of CIDR block IP subnetwork specification. Must be IPv4.
  const AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork({
    required this.network,
    this.vpcIpSubnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'vpcIpSubnetworks': ?vpcIpSubnetworks,
    };
  }

  factory AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork.fromMap(Map<String, dynamic> map) {
    return AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
      vpcIpSubnetworks: (() { final guardedValue = map['vpcIpSubnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
