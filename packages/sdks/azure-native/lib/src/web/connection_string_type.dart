/// Type of database.
enum ConnectionStringType {
  valueMySql("MySql"),
  valueSQLServer("SQLServer"),
  valueSQLAzure("SQLAzure"),
  valueCustom("Custom"),
  valueNotificationHub("NotificationHub"),
  valueServiceBus("ServiceBus"),
  valueEventHub("EventHub"),
  valueApiHub("ApiHub"),
  valueDocDb("DocDb"),
  valueRedisCache("RedisCache"),
  valuePostgreSQL("PostgreSQL");

  const ConnectionStringType(this.value);
  final String value;

  static ConnectionStringType fromValue(String value) {
    for (final item in ConnectionStringType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionStringType value: $value');
  }
}

