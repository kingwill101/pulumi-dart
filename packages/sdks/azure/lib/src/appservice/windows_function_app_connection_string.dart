// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppConnectionString {
  /// The name which should be used for this Connection.
  final pulumi.Input<String> name;

  /// Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final pulumi.Input<String> type;

  /// The connection string value.
  final pulumi.Input<String> value;

  /// Creates a new [WindowsFunctionAppConnectionString].
  /// [name] The name which should be used for this Connection.
  /// [type] Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  WindowsFunctionAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'value': value};
  }

  factory WindowsFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppConnectionString(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
