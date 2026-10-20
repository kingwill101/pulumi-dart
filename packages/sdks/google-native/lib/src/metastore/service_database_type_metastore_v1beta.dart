import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseTypeMetastoreV1beta implements pulumi.PulumiEnum<String> {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseTypeMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static ServiceDatabaseTypeMetastoreV1beta fromValue(String value) {
    for (final item in ServiceDatabaseTypeMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDatabaseTypeMetastoreV1beta value: $value');
  }
}
