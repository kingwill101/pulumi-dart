import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of database.
enum ConnectionStringType implements pulumi.PulumiEnum<String> {
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
  @override
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
