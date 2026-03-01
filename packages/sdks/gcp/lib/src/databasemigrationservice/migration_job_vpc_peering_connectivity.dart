// ignore_for_file: unused_element, unnecessary_cast


class MigrationJobVpcPeeringConnectivity {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final String? vpc;

  /// Creates a new [MigrationJobVpcPeeringConnectivity].
  /// [vpc] The name of the VPC network to peer with the Cloud SQL private network.
  MigrationJobVpcPeeringConnectivity({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpc': ?vpc,
    };
  }

  factory MigrationJobVpcPeeringConnectivity.fromMap(Map<String, dynamic> map) {
    return MigrationJobVpcPeeringConnectivity(
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
    );
  }
}

