// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppConnectionString {
  /// The name of the Connection String.
  final pulumi.Input<String> name;

  /// Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final pulumi.Input<String> type;

  /// The connection string value.
  final pulumi.Input<String> value;

  /// Creates a new [WindowsWebAppConnectionString].
  /// [name] The name of the Connection String.
  /// [type] Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  WindowsWebAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'value': value};
  }

  factory WindowsWebAppConnectionString.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppConnectionString(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
