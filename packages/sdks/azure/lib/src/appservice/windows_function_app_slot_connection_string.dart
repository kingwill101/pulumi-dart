// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSlotConnectionString {
  /// The name which should be used for this Connection.
  final String name;
  /// Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [WindowsFunctionAppSlotConnectionString].
  /// [name] The name which should be used for this Connection.
  /// [type] Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  WindowsFunctionAppSlotConnectionString({
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

  factory WindowsFunctionAppSlotConnectionString.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

