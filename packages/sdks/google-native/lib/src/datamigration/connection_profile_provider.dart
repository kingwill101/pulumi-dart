import 'package:pulumi/pulumi.dart' as pulumi;

/// The database provider.
enum ConnectionProfileProvider implements pulumi.PulumiEnum<String> {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS"),
  aurora("AURORA"),
  alloydb("ALLOYDB");

  const ConnectionProfileProvider(this.wireValue);
  @override
  final String wireValue;

  static ConnectionProfileProvider fromValue(String value) {
    for (final item in ConnectionProfileProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileProvider value: $value');
  }
}
