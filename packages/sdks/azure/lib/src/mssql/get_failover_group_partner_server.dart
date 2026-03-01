// ignore_for_file: unused_element, unnecessary_cast


class GetFailoverGroupPartnerServer {
  /// The ID of the partner SQL server.
  final String id;
  /// The location of the partner server.
  final String location;
  /// The replication role of the partner server.
  final String role;

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
      id: map['id'] as String,
      location: map['location'] as String,
      role: map['role'] as String,
    );
  }
}

