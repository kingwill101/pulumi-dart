import 'package:pulumi/pulumi.dart' as pulumi;

/// The database engine.
enum DatabaseTypeEngineDatamigrationV1beta1 implements pulumi.PulumiEnum<String> {
  databaseEngineUnspecified("DATABASE_ENGINE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseTypeEngineDatamigrationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static DatabaseTypeEngineDatamigrationV1beta1 fromValue(String value) {
    for (final item in DatabaseTypeEngineDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeEngineDatamigrationV1beta1 value: $value');
  }
}
