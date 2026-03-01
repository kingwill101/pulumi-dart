/// Optional. The dialect of the Cloud Spanner Database.
enum DatabaseDatabaseDialect {
  databaseDialectUnspecified("DATABASE_DIALECT_UNSPECIFIED"),
  googleStandardSql("GOOGLE_STANDARD_SQL"),
  postgresql("POSTGRESQL");

  const DatabaseDatabaseDialect(this.value);
  final String value;

  static DatabaseDatabaseDialect fromValue(String value) {
    for (final item in DatabaseDatabaseDialect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDatabaseDialect value: $value');
  }
}

