// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkingIpv6LinkLocalVpcNat11 {
  /// The address.
  final pulumi.Input<String> address;
  /// The unique globally general API entity identifier for the VPC subnet.
  final pulumi.Input<int> subnetId;
  /// The unique globally general API entity identifier for the VPC.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetInstanceNetworkingIpv6LinkLocalVpcNat11].
  /// [address] The address.
  /// [subnetId] The unique globally general API entity identifier for the VPC subnet.
  /// [vpcId] The unique globally general API entity identifier for the VPC.
  GetInstanceNetworkingIpv6LinkLocalVpcNat11({
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

  factory GetInstanceNetworkingIpv6LinkLocalVpcNat11.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6LinkLocalVpcNat11(
      address: pulumi.Input.fromValue(map['address'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

