// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfigResponse {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;
  /// Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`
  final pulumi.Input<String> vpc;

  /// Creates a new [VpcPeeringConfigResponse].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpc] Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`
  VpcPeeringConfigResponse({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': subnet,
      'vpc': vpc,
    };
  }

  factory VpcPeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfigResponse(
      subnet: (map['subnet'] as String).input(),
      vpc: (map['vpc'] as String).input(),
    );
  }
}

