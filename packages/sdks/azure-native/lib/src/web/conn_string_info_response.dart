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
  const ConnStringInfoResponse({
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
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

