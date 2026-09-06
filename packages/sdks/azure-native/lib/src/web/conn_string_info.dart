// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_string_type.dart';

/// Database connection string information.
class ConnStringInfo {
  /// Connection string value.
  final pulumi.Input<String?>? connectionString;
  /// Name of connection string.
  final pulumi.Input<String?>? name;
  /// Type of database.
  final pulumi.Input<ConnectionStringType?>? type;

  /// Creates a new [ConnStringInfo].
  /// [connectionString] Connection string value.
  /// [name] Name of connection string.
  /// [type] Type of database.
  const ConnStringInfo({
    this.connectionString,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<ConnectionStringType, String>(type, (value) => value.wireValue),
    };
  }

  factory ConnStringInfo.fromMap(Map<String, dynamic> map) {
    return ConnStringInfo(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionStringType.fromValue(guardedValue as String)); })(),
    );
  }
}
