/// Database type (e.g. SqlAzure / MySql).
enum DatabaseType {
  valueSqlAzure("SqlAzure"),
  valueMySql("MySql"),
  valueLocalMySql("LocalMySql"),
  valuePostgreSql("PostgreSql");

  const DatabaseType(this.value);
  final String value;

  static DatabaseType fromValue(String value) {
    for (final item in DatabaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType value: $value');
  }
}

