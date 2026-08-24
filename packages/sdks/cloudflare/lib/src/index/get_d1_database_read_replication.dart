// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetD1DatabaseReadReplication {
  /// The read replication mode for the database. Mode 'auto' denotes that D1 creates replicas and automatically places them around the world. Mode 'disabled' denotes that no database replicas are used.
  /// Available values: "auto", "disabled".
  final pulumi.Input<String> mode;

  /// Creates a new [GetD1DatabaseReadReplication].
  /// [mode] The read replication mode for the database. Mode 'auto' denotes that D1 creates replicas and automatically places them around the world. Mode 'disabled' denotes that no database replicas are used.
  const GetD1DatabaseReadReplication({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetD1DatabaseReadReplication.fromMap(Map<String, dynamic> map) {
    return GetD1DatabaseReadReplication(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
