// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;
  /// Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`
  final pulumi.Input<String> vpc;

  /// Creates a new [VpcPeeringConfig].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpc] Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`
  VpcPeeringConfig({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': subnet,
      'vpc': vpc,
    };
  }

  factory VpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfig(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      vpc: pulumi.Input.fromValue(map['vpc'] as String),
    );
  }
}

