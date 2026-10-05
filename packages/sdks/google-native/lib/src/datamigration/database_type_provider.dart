import 'package:pulumi/pulumi.dart' as pulumi;

/// The database provider.
enum DatabaseTypeProvider implements pulumi.PulumiEnum<String> {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS"),
  aurora("AURORA"),
  alloydb("ALLOYDB");

  const DatabaseTypeProvider(this.wireValue);
  @override
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
