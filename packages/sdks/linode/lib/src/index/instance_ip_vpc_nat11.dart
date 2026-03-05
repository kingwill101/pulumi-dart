// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceIpVpcNat11 {
  /// The resulting IPv4 address.
  final pulumi.Input<String> address;
  final pulumi.Input<int> subnetId;
  final pulumi.Input<int> vpcId;

  /// Creates a new [InstanceIpVpcNat11].
  /// [address] The resulting IPv4 address.
  /// [subnetId] Required.
  /// [vpcId] Required.
  InstanceIpVpcNat11({
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

  factory InstanceIpVpcNat11.fromMap(Map<String, dynamic> map) {
    return InstanceIpVpcNat11(
      address: pulumi.Input.fromValue(map['address'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

