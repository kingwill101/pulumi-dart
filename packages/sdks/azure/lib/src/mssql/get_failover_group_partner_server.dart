// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFailoverGroupPartnerServer {
  /// The ID of the partner SQL server.
  final pulumi.Input<String> id;
  /// The location of the partner server.
  final pulumi.Input<String> location;
  /// The replication role of the partner server.
  final pulumi.Input<String> role;

  /// Creates a new [GetFailoverGroupPartnerServer].
  /// [id] The ID of the partner SQL server.
  /// [location] The location of the partner server.
  /// [role] The replication role of the partner server.
  GetFailoverGroupPartnerServer({
    required this.id,
    required this.location,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'role': role,
    };
  }

  factory GetFailoverGroupPartnerServer.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupPartnerServer(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

