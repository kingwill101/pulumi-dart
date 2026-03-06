// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservedIpAssignmentVpcNat11 {
  final pulumi.Input<String> address;
  final pulumi.Input<int> subnetId;
  final pulumi.Input<int> vpcId;

  /// Creates a new [ReservedIpAssignmentVpcNat11].
  /// [address] Required.
  /// [subnetId] Required.
  /// [vpcId] Required.
  const ReservedIpAssignmentVpcNat11({
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

  factory ReservedIpAssignmentVpcNat11.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentVpcNat11(
      address: pulumi.Input.fromValue(map['address'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

