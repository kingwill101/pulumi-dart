// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkingIpv4ReservedVpcNat11 {
  /// The address.
  final pulumi.Input<String> address;
  /// The unique globally general API entity identifier for the VPC subnet.
  final pulumi.Input<int> subnetId;
  /// The unique globally general API entity identifier for the VPC.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetInstanceNetworkingIpv4ReservedVpcNat11].
  /// [address] The address.
  /// [subnetId] The unique globally general API entity identifier for the VPC subnet.
  /// [vpcId] The unique globally general API entity identifier for the VPC.
  GetInstanceNetworkingIpv4ReservedVpcNat11({
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

  factory GetInstanceNetworkingIpv4ReservedVpcNat11.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv4ReservedVpcNat11(
      address: (map['address'] as String).input(),
      subnetId: (map['subnetId'] as int).input(),
      vpcId: (map['vpcId'] as int).input(),
    );
  }
}

