// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sub-segment ranges inside of a VPC Network.
class VpcSubNetworkResponse {
  /// Network name. If the network is not part of the organization, the `compute.network.get` permission must be granted to the caller. Format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}` Example: `//compute.googleapis.com/projects/my-project/global/networks/network-1`
  final pulumi.Input<String> network;
  /// CIDR block IP subnetwork specification. The IP address must be an IPv4 address and can be a public or private IP address. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. If empty, all IP addresses are allowed.
  final pulumi.Input<List<String>> vpcIpSubnetworks;

  /// Creates a new [VpcSubNetworkResponse].
  /// [network] Network name. If the network is not part of the organization, the `compute.network.get` permission must be granted to the caller. Format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}` Example: `//compute.googleapis.com/projects/my-project/global/networks/network-1`
  /// [vpcIpSubnetworks] CIDR block IP subnetwork specification. The IP address must be an IPv4 address and can be a public or private IP address. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. If empty, all IP addresses are allowed.
  VpcSubNetworkResponse({
    required this.network,
    required this.vpcIpSubnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'vpcIpSubnetworks': vpcIpSubnetworks,
    };
  }

  factory VpcSubNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VpcSubNetworkResponse(
      network: (map['network'] as String).input(),
      vpcIpSubnetworks: ((map['vpcIpSubnetworks'] as List).cast<String>()).input(),
    );
  }
}

