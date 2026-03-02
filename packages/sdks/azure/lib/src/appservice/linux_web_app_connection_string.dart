// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppConnectionString {
  /// The name of the Connection String.
  final pulumi.Input<String> name;
  /// Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
  final pulumi.Input<String> type;
  /// The connection string value.
  final pulumi.Input<String> value;

  /// Creates a new [LinuxWebAppConnectionString].
  /// [name] The name of the Connection String.
  /// [type] Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
  /// [value] The connection string value.
  LinuxWebAppConnectionString({
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

  factory LinuxWebAppConnectionString.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppConnectionString(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

