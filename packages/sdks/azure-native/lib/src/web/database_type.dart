/// Database type (e.g. SqlAzure / MySql).
enum DatabaseType {
  valueSqlAzure("SqlAzure"),
  valueMySql("MySql"),
  valueLocalMySql("LocalMySql"),
  valuePostgreSql("PostgreSql");

  const DatabaseType(this.wireValue);
  final String wireValue;

  static DatabaseType fromValue(String value) {
    for (final item in DatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType value: $value');
  }
}
