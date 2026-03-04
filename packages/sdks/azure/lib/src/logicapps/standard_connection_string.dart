// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardConnectionString {
  /// The name of the Connection String.
  final pulumi.Input<String> name;

  /// The type of the Connection String. Possible values are `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure` and `SQLServer`.
  final pulumi.Input<String> type;

  /// The value for the Connection String.
  final pulumi.Input<String> value;

  /// Creates a new [StandardConnectionString].
  /// [name] The name of the Connection String.
  /// [type] The type of the Connection String. Possible values are `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure` and `SQLServer`.
  /// [value] The value for the Connection String.
  StandardConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'value': value};
  }

  factory StandardConnectionString.fromMap(Map<String, dynamic> map) {
    return StandardConnectionString(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
