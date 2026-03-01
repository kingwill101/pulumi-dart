// ignore_for_file: unused_element, unnecessary_cast


class FailoverGroupPartnerServer {
  /// The ID of a partner SQL server to include in the failover group.
  final String id;
  /// The location of the partner server.
  final String? location;
  /// The replication role of the partner server. Possible values include `Primary` or `Secondary`.
  final String? role;

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
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

