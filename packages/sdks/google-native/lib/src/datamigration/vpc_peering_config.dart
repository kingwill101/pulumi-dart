// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VPC peering configuration is used to create VPC peering with the consumer's VPC.
class VpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;

  /// Fully qualified name of the VPC that Database Migration Service will peer to.
  final pulumi.Input<String> vpcName;

  /// Creates a new [VpcPeeringConfig].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpcName] Fully qualified name of the VPC that Database Migration Service will peer to.
  VpcPeeringConfig({required this.subnet, required this.vpcName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnet': subnet, 'vpcName': vpcName};
  }

  factory VpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfig(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}
