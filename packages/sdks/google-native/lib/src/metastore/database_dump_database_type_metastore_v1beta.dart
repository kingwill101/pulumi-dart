/// The type of the database.
enum DatabaseDumpDatabaseTypeMetastoreV1beta {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseTypeMetastoreV1beta(this.wireValue);
  final String wireValue;

  static DatabaseDumpDatabaseTypeMetastoreV1beta fromValue(String value) {
    for (final item in DatabaseDumpDatabaseTypeMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseTypeMetastoreV1beta value: $value');
  }
}

