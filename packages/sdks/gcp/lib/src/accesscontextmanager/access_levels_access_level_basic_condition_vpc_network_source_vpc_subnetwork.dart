// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork {
  /// Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires `compute.network.get` permission to be granted to caller.
  final pulumi.Input<String> network;
  /// CIDR block IP subnetwork specification. Must be IPv4.
  final pulumi.Input<List<String>>? vpcIpSubnetworks;

  /// Creates a new [AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork].
  /// [network] Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires `compute.network.get` permission to be granted to caller.
  /// [vpcIpSubnetworks] CIDR block IP subnetwork specification. Must be IPv4.
  AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork({
    required this.network,
    this.vpcIpSubnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'vpcIpSubnetworks': ?vpcIpSubnetworks,
    };
  }

  factory AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork(
      network: (map['network'] as String).input(),
      vpcIpSubnetworks: map['vpcIpSubnetworks'] == null ? null : ((map['vpcIpSubnetworks']! as List).cast<String>()).input(),
    );
  }
}

