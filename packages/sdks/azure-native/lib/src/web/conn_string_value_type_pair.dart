// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_string_type.dart';

/// Database connection string value to type pair.
class ConnStringValueTypePair {
  /// Type of database.
  final pulumi.Input<ConnectionStringType> type;
  /// Value of pair.
  final pulumi.Input<String> value;

  /// Creates a new [ConnStringValueTypePair].
  /// [type] Type of database.
  /// [value] Value of pair.
  ConnStringValueTypePair({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<ConnectionStringType, String>(type, (value) => value.wireValue),
      'value': value,
    };
  }

  factory ConnStringValueTypePair.fromMap(Map<String, dynamic> map) {
    return ConnStringValueTypePair(
      type: pulumi.Input.fromValue(ConnectionStringType.fromValue(map['type']! as String)),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

