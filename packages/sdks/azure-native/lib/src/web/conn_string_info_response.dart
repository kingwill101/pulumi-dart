// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database connection string information.
class ConnStringInfoResponse {
  /// Connection string value.
  final pulumi.Input<String>? connectionString;
  /// Name of connection string.
  final pulumi.Input<String>? name;
  /// Type of database.
  final pulumi.Input<String>? type;

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
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

