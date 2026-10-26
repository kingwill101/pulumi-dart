import 'package:pulumi/pulumi.dart' as pulumi;

/// The database provider.
enum ConnectionProfileProviderDatamigrationV1beta1 implements pulumi.PulumiEnum<String> {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const ConnectionProfileProviderDatamigrationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ConnectionProfileProviderDatamigrationV1beta1 fromValue(String value) {
    for (final item in ConnectionProfileProviderDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileProviderDatamigrationV1beta1 value: $value');
  }
}
