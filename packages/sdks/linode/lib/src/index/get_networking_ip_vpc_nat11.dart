// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkingIpVpcNat11 {
  /// The IP Address to access.  The address must be associated with the account and a resource that the user has access to view.
  final pulumi.Input<String> address;
  /// The `id` of the VPC Subnet for this Interface.
  final pulumi.Input<int> subnetId;
  /// The `id` of the VPC configured for this Interface.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetNetworkingIpVpcNat11].
  /// [address] The IP Address to access.  The address must be associated with the account and a resource that the user has access to view.
  /// [subnetId] The `id` of the VPC Subnet for this Interface.
  /// [vpcId] The `id` of the VPC configured for this Interface.
  GetNetworkingIpVpcNat11({
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

  factory GetNetworkingIpVpcNat11.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpVpcNat11(
      address: (map['address'] as String).input(),
      subnetId: (map['subnetId'] as int).input(),
      vpcId: (map['vpcId'] as int).input(),
    );
  }
}

