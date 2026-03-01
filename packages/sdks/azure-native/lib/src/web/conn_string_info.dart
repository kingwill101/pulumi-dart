// ignore_for_file: unused_element, unnecessary_cast

import 'connection_string_type.dart';

/// Database connection string information.
class ConnStringInfo {
  /// Connection string value.
  final String? connectionString;
  /// Name of connection string.
  final String? name;
  /// Type of database.
  final ConnectionStringType? type;

  /// Creates a new [ConnStringInfo].
  /// [connectionString] Connection string value.
  /// [name] Name of connection string.
  /// [type] Type of database.
  ConnStringInfo({
    this.connectionString,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'name': ?name,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ConnStringInfo.fromMap(Map<String, dynamic> map) {
    return ConnStringInfo(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : ConnectionStringType.fromValue(map['type'] as String),
    );
  }
}

