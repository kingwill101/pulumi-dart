// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppConnectionString {
  /// The name of the Connection String.
  final String name;
  /// Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
  final String type;
  /// The connection string value.
  final String value;

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
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

