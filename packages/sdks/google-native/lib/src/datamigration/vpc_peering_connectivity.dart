// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.
class VpcPeeringConnectivity {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final pulumi.Input<String>? vpc;

  /// Creates a new [VpcPeeringConnectivity].
  /// [vpc] The name of the VPC network to peer with the Cloud SQL private network.
  VpcPeeringConnectivity({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpc': ?vpc,
    };
  }

  factory VpcPeeringConnectivity.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectivity(
      vpc: map['vpc'] == null ? null : (map['vpc'] as String).input(),
    );
  }
}

