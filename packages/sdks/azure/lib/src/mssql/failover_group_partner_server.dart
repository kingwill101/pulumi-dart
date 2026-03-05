// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FailoverGroupPartnerServer {
  /// The ID of a partner SQL server to include in the failover group.
  final pulumi.Input<String> id;
  /// The location of the partner server.
  final pulumi.Input<String>? location;
  /// The replication role of the partner server. Possible values include `Primary` or `Secondary`.
  final pulumi.Input<String>? role;

  /// Creates a new [FailoverGroupPartnerServer].
  /// [id] The ID of a partner SQL server to include in the failover group.
  /// [location] The location of the partner server.
  /// [role] The replication role of the partner server. Possible values include `Primary` or `Secondary`.
  FailoverGroupPartnerServer({
    required this.id,
    this.location,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'role': ?role,
    };
  }

  factory FailoverGroupPartnerServer.fromMap(Map<String, dynamic> map) {
    return FailoverGroupPartnerServer(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

