// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfigResponseDatastreamV1alpha1 {
  /// A free subnet for peering. (CIDR of /29)
  final pulumi.Input<String> subnet;

  /// fully qualified name of the VPC Datastream will peer to.
  final pulumi.Input<String> vpcName;

  /// Creates a new [VpcPeeringConfigResponseDatastreamV1alpha1].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpcName] fully qualified name of the VPC Datastream will peer to.
  VpcPeeringConfigResponseDatastreamV1alpha1({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnet': subnet, 'vpcName': vpcName};
  }

  factory VpcPeeringConfigResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcPeeringConfigResponseDatastreamV1alpha1(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}
