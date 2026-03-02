// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.
class VpcPeeringConnectivityDatamigrationV1beta1 {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final pulumi.Input<String>? vpc;

  /// Creates a new [VpcPeeringConnectivityDatamigrationV1beta1].
  /// [vpc] The name of the VPC network to peer with the Cloud SQL private network.
  VpcPeeringConnectivityDatamigrationV1beta1({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpc': ?vpc,
    };
  }

  factory VpcPeeringConnectivityDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectivityDatamigrationV1beta1(
      vpc: map['vpc'] == null ? null : (map['vpc'] as String).input(),
    );
  }
}

