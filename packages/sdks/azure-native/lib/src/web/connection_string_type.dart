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

  const ConnectionStringType(this.wireValue);
  final String wireValue;

  static ConnectionStringType fromValue(String value) {
    for (final item in ConnectionStringType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionStringType value: $value');
  }
}
