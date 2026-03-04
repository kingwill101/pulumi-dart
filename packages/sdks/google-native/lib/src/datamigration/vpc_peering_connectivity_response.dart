// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.
class VpcPeeringConnectivityResponse {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final pulumi.Input<String> vpc;

  /// Creates a new [VpcPeeringConnectivityResponse].
  /// [vpc] The name of the VPC network to peer with the Cloud SQL private network.
  VpcPeeringConnectivityResponse({required this.vpc});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpc': vpc};
  }

  factory VpcPeeringConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectivityResponse(
      vpc: pulumi.Input.fromValue(map['vpc'] as String),
    );
  }
}
