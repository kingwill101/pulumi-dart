/// Optional. The dialect of the Cloud Spanner Database.
enum DatabaseDatabaseDialect {
  databaseDialectUnspecified("DATABASE_DIALECT_UNSPECIFIED"),
  googleStandardSql("GOOGLE_STANDARD_SQL"),
  postgresql("POSTGRESQL");

  const DatabaseDatabaseDialect(this.wireValue);
  final String wireValue;

  static DatabaseDatabaseDialect fromValue(String value) {
    for (final item in DatabaseDatabaseDialect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDatabaseDialect value: $value');
  }
}

