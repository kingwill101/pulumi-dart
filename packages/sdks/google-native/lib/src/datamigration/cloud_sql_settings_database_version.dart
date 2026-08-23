/// The database engine type and version.
enum CloudSqlSettingsDatabaseVersion {
  sqlDatabaseVersionUnspecified("SQL_DATABASE_VERSION_UNSPECIFIED"),
  mysql56("MYSQL_5_6"),
  mysql57("MYSQL_5_7"),
  mysql80("MYSQL_8_0"),
  mysql8018("MYSQL_8_0_18"),
  mysql8026("MYSQL_8_0_26"),
  mysql8027("MYSQL_8_0_27"),
  mysql8028("MYSQL_8_0_28"),
  mysql8030("MYSQL_8_0_30"),
  mysql8031("MYSQL_8_0_31"),
  mysql8032("MYSQL_8_0_32"),
  mysql8033("MYSQL_8_0_33"),
  mysql8034("MYSQL_8_0_34"),
  postgres96("POSTGRES_9_6"),
  postgres11("POSTGRES_11"),
  postgres10("POSTGRES_10"),
  postgres12("POSTGRES_12"),
  postgres13("POSTGRES_13"),
  postgres14("POSTGRES_14"),
  postgres15("POSTGRES_15");

  const CloudSqlSettingsDatabaseVersion(this.wireValue);
  final String wireValue;

  static CloudSqlSettingsDatabaseVersion fromValue(String value) {
    for (final item in CloudSqlSettingsDatabaseVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsDatabaseVersion value: $value');
  }
}
