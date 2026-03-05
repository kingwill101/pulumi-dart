// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseMysqlV2PrivateNetwork {
  /// Set to `true` to allow clients outside of the VPC to connect to the database using a public IP address.
  final pulumi.Input<bool>? publicAccess;
  /// The ID of the VPC subnet to restrict access to this database using.
  final pulumi.Input<int> subnetId;
  /// The ID of the virtual private cloud (VPC) to restrict access to this database using.
  final pulumi.Input<int> vpcId;

  /// Creates a new [DatabaseMysqlV2PrivateNetwork].
  /// [publicAccess] Set to `true` to allow clients outside of the VPC to connect to the database using a public IP address.
  /// [subnetId] The ID of the VPC subnet to restrict access to this database using.
  /// [vpcId] The ID of the virtual private cloud (VPC) to restrict access to this database using.
  DatabaseMysqlV2PrivateNetwork({
    this.publicAccess,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicAccess': ?publicAccess,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory DatabaseMysqlV2PrivateNetwork.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlV2PrivateNetwork(
      publicAccess: (() { final guardedValue = map['publicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

