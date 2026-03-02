// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotConnectionString {
  /// The name of the Connection String.
  final pulumi.Input<String> name;
  /// Type of database. Possible values include `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final pulumi.Input<String> type;
  /// The connection string value.
  final pulumi.Input<String> value;

  /// Creates a new [LinuxWebAppSlotConnectionString].
  /// [name] The name of the Connection String.
  /// [type] Type of database. Possible values include `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  LinuxWebAppSlotConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory LinuxWebAppSlotConnectionString.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotConnectionString(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

