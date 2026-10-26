import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the database.
enum DatabaseDumpDatabaseType implements pulumi.PulumiEnum<String> {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseType(this.wireValue);
  @override
  final String wireValue;

  static DatabaseDumpDatabaseType fromValue(String value) {
    for (final item in DatabaseDumpDatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseType value: $value');
  }
}
