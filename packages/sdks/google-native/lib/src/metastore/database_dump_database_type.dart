/// The type of the database.
enum DatabaseDumpDatabaseType {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseType(this.wireValue);
  final String wireValue;

  static DatabaseDumpDatabaseType fromValue(String value) {
    for (final item in DatabaseDumpDatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseType value: $value');
  }
}

