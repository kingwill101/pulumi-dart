// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkingIpsIpAddressVpcNat11 {
  /// The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  final pulumi.Input<String> address;
  /// The `id` of the VPC Subnet for this Interface.
  final pulumi.Input<int> subnetId;
  /// The `id` of the VPC configured for this Interface.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetNetworkingIpsIpAddressVpcNat11].
  /// [address] The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  /// [subnetId] The `id` of the VPC Subnet for this Interface.
  /// [vpcId] The `id` of the VPC configured for this Interface.
  GetNetworkingIpsIpAddressVpcNat11({
    required this.address,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetNetworkingIpsIpAddressVpcNat11.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpsIpAddressVpcNat11(
      address: pulumi.Input.fromValue(map['address'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

