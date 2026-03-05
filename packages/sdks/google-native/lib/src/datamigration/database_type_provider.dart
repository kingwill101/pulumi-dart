/// The database provider.
enum DatabaseTypeProvider {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS"),
  aurora("AURORA"),
  alloydb("ALLOYDB");

  const DatabaseTypeProvider(this.wireValue);
  final String wireValue;

  static DatabaseTypeProvider fromValue(String value) {
    for (final item in DatabaseTypeProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeProvider value: $value');
  }
}

