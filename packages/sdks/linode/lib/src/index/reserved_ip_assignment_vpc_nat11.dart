// ignore_for_file: unused_element, unnecessary_cast


class ReservedIpAssignmentVpcNat11 {
  final String address;
  final int subnetId;
  final int vpcId;

  /// Creates a new [ReservedIpAssignmentVpcNat11].
  /// [address] Required.
  /// [subnetId] Required.
  /// [vpcId] Required.
  ReservedIpAssignmentVpcNat11({
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
      address: map['address'] as String,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}

