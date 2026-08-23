// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionVpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;
  /// Fully qualified name of the VPC that Datastream will peer to.
  /// Format: projects/{project}/global/{networks}/{name}
  final pulumi.Input<String> vpc;

  /// Creates a new [PrivateConnectionVpcPeeringConfig].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpc] Fully qualified name of the VPC that Datastream will peer to.
  const PrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': subnet,
      'vpc': vpc,
    };
  }

  factory PrivateConnectionVpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionVpcPeeringConfig(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      vpc: pulumi.Input.fromValue(map['vpc'] as String),
    );
  }
}
