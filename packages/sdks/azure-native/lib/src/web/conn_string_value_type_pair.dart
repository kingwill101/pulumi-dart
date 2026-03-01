// ignore_for_file: unused_element, unnecessary_cast

import 'connection_string_type.dart';

/// Database connection string value to type pair.
class ConnStringValueTypePair {
  /// Type of database.
  final ConnectionStringType type;
  /// Value of pair.
  final String value;

  /// Creates a new [ConnStringValueTypePair].
  /// [type] Type of database.
  /// [value] Value of pair.
  ConnStringValueTypePair({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
      'value': value,
    };
  }

  factory ConnStringValueTypePair.fromMap(Map<String, dynamic> map) {
    return ConnStringValueTypePair(
      type: ConnectionStringType.fromValue(map['type'] as String),
      value: map['value'] as String,
    );
  }
}

