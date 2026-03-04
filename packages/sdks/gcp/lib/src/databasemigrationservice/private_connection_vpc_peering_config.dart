// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionVpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;

  /// Fully qualified name of the VPC that Database Migration Service will peer to.
  /// Format: projects/{project}/global/{networks}/{name}
  final pulumi.Input<String> vpcName;

  /// Creates a new [PrivateConnectionVpcPeeringConfig].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpcName] Fully qualified name of the VPC that Database Migration Service will peer to.
  PrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnet': subnet, 'vpcName': vpcName};
  }

  factory PrivateConnectionVpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionVpcPeeringConfig(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}
