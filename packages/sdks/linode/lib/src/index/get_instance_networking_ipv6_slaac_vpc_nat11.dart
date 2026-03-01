// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceNetworkingIpv6SlaacVpcNat11 {
  /// The address.
  final String address;
  /// The unique globally general API entity identifier for the VPC subnet.
  final int subnetId;
  /// The unique globally general API entity identifier for the VPC.
  final int vpcId;

  /// Creates a new [GetInstanceNetworkingIpv6SlaacVpcNat11].
  /// [address] The address.
  /// [subnetId] The unique globally general API entity identifier for the VPC subnet.
  /// [vpcId] The unique globally general API entity identifier for the VPC.
  GetInstanceNetworkingIpv6SlaacVpcNat11({
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

  factory GetInstanceNetworkingIpv6SlaacVpcNat11.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6SlaacVpcNat11(
      address: map['address'] as String,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}

