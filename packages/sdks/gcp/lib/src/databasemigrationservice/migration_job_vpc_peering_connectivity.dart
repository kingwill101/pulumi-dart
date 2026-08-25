// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobVpcPeeringConnectivity {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final pulumi.Input<String?>? vpc;

  /// Creates a new [MigrationJobVpcPeeringConnectivity].
  /// [vpc] The name of the VPC network to peer with the Cloud SQL private network.
  const MigrationJobVpcPeeringConnectivity({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpc': ?vpc,
    };
  }

  factory MigrationJobVpcPeeringConnectivity.fromMap(Map<String, dynamic> map) {
    return MigrationJobVpcPeeringConnectivity(
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
