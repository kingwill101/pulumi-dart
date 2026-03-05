/// The database engine type and version.
enum CloudSqlSettingsDatabaseVersionDatamigrationV1beta1 {
  sqlDatabaseVersionUnspecified("SQL_DATABASE_VERSION_UNSPECIFIED"),
  mysql56("MYSQL_5_6"),
  mysql57("MYSQL_5_7"),
  mysql80("MYSQL_8_0");

  const CloudSqlSettingsDatabaseVersionDatamigrationV1beta1(this.wireValue);
  final String wireValue;

  static CloudSqlSettingsDatabaseVersionDatamigrationV1beta1 fromValue(String value) {
    for (final item in CloudSqlSettingsDatabaseVersionDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsDatabaseVersionDatamigrationV1beta1 value: $value');
  }
}

