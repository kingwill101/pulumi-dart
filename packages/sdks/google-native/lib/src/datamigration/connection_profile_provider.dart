/// The database provider.
enum ConnectionProfileProvider {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS"),
  aurora("AURORA"),
  alloydb("ALLOYDB");

  const ConnectionProfileProvider(this.value);
  final String value;

  static ConnectionProfileProvider fromValue(String value) {
    for (final item in ConnectionProfileProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileProvider value: $value');
  }
}

