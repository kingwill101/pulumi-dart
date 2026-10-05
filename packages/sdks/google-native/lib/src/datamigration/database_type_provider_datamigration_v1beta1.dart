import 'package:pulumi/pulumi.dart' as pulumi;

/// The database provider.
enum DatabaseTypeProviderDatamigrationV1beta1 implements pulumi.PulumiEnum<String> {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const DatabaseTypeProviderDatamigrationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static DatabaseTypeProviderDatamigrationV1beta1 fromValue(String value) {
    for (final item in DatabaseTypeProviderDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeProviderDatamigrationV1beta1 value: $value');
  }
}
