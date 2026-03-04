// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlV2PrivateNetwork {
  /// If true, clients outside of the VPC can connect to the database using a public IP address.
  final pulumi.Input<bool> publicAccess;

  /// The ID of the VPC subnet to restrict access to this database using.
  final pulumi.Input<int> subnetId;

  /// The ID of the virtual private cloud (VPC) to restrict access to this database using.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetDatabaseMysqlV2PrivateNetwork].
  /// [publicAccess] If true, clients outside of the VPC can connect to the database using a public IP address.
  /// [subnetId] The ID of the VPC subnet to restrict access to this database using.
  /// [vpcId] The ID of the virtual private cloud (VPC) to restrict access to this database using.
  GetDatabaseMysqlV2PrivateNetwork({
    required this.publicAccess,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicAccess': publicAccess,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetDatabaseMysqlV2PrivateNetwork.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlV2PrivateNetwork(
      publicAccess: pulumi.Input.fromValue(map['publicAccess'] as bool),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}
