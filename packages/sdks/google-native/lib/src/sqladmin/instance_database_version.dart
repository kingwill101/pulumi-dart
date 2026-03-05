/// The database engine type and version. The `databaseVersion` field cannot be changed after instance creation.
enum InstanceDatabaseVersion {
  sqlDatabaseVersionUnspecified("SQL_DATABASE_VERSION_UNSPECIFIED"),
  mysql51("MYSQL_5_1"),
  mysql55("MYSQL_5_5"),
  mysql56("MYSQL_5_6"),
  mysql57("MYSQL_5_7"),
  sqlserver2017Standard("SQLSERVER_2017_STANDARD"),
  sqlserver2017Enterprise("SQLSERVER_2017_ENTERPRISE"),
  sqlserver2017Express("SQLSERVER_2017_EXPRESS"),
  sqlserver2017Web("SQLSERVER_2017_WEB"),
  postgres96("POSTGRES_9_6"),
  postgres10("POSTGRES_10"),
  postgres11("POSTGRES_11"),
  postgres12("POSTGRES_12"),
  postgres13("POSTGRES_13"),
  postgres14("POSTGRES_14"),
  postgres15("POSTGRES_15"),
  mysql80("MYSQL_8_0"),
  mysql8018("MYSQL_8_0_18"),
  mysql8026("MYSQL_8_0_26"),
  mysql8027("MYSQL_8_0_27"),
  mysql8028("MYSQL_8_0_28"),
  mysql8029("MYSQL_8_0_29"),
  mysql8030("MYSQL_8_0_30"),
  mysql8031("MYSQL_8_0_31"),
  mysql8032("MYSQL_8_0_32"),
  mysql8033("MYSQL_8_0_33"),
  mysql8034("MYSQL_8_0_34"),
  mysql8035("MYSQL_8_0_35"),
  mysql8036("MYSQL_8_0_36"),
  sqlserver2019Standard("SQLSERVER_2019_STANDARD"),
  sqlserver2019Enterprise("SQLSERVER_2019_ENTERPRISE"),
  sqlserver2019Express("SQLSERVER_2019_EXPRESS"),
  sqlserver2019Web("SQLSERVER_2019_WEB"),
  sqlserver2022Standard("SQLSERVER_2022_STANDARD"),
  sqlserver2022Enterprise("SQLSERVER_2022_ENTERPRISE"),
  sqlserver2022Express("SQLSERVER_2022_EXPRESS"),
  sqlserver2022Web("SQLSERVER_2022_WEB");

  const InstanceDatabaseVersion(this.wireValue);
  final String wireValue;

  static InstanceDatabaseVersion fromValue(String value) {
    for (final item in InstanceDatabaseVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceDatabaseVersion value: $value');
  }
}

