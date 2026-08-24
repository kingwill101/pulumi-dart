// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class D1DatabaseReadReplication {
  /// The read replication mode for the database. Use 'auto' to create replicas and allow D1 automatically place them around the world, or 'disabled' to not use any database replicas (it can take a few hours for all replicas to be deleted).
  /// Available values: "auto", "disabled".
  final pulumi.Input<String> mode;

  /// Creates a new [D1DatabaseReadReplication].
  /// [mode] The read replication mode for the database. Use 'auto' to create replicas and allow D1 automatically place them around the world, or 'disabled' to not use any database replicas (it can take a few hours for all replicas to be deleted).
  const D1DatabaseReadReplication({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory D1DatabaseReadReplication.fromMap(Map<String, dynamic> map) {
    return D1DatabaseReadReplication(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
