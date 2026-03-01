// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppConnectionString {
  /// The name which should be used for this Connection.
  final String name;
  /// Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final String type;
  /// The connection string value.
  final String value;

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
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory WindowsFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

