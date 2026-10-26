import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the database.
enum DatabaseDumpDatabaseTypeMetastoreV1alpha implements pulumi.PulumiEnum<String> {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseTypeMetastoreV1alpha(this.wireValue);
  @override
  final String wireValue;

  static DatabaseDumpDatabaseTypeMetastoreV1alpha fromValue(String value) {
    for (final item in DatabaseDumpDatabaseTypeMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseTypeMetastoreV1alpha value: $value');
  }
}
