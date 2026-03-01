// ignore_for_file: unused_element, unnecessary_cast


/// Database connection string information.
class ConnStringInfoResponse {
  /// Connection string value.
  final String? connectionString;
  /// Name of connection string.
  final String? name;
  /// Type of database.
  final String? type;

  /// Creates a new [ConnStringInfoResponse].
  /// [connectionString] Connection string value.
  /// [name] Name of connection string.
  /// [type] Type of database.
  ConnStringInfoResponse({
    this.connectionString,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ConnStringInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnStringInfoResponse(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

