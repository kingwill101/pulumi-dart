import 'package:pulumi/pulumi.dart' as pulumi;

/// The database engine.
enum DatabaseTypeEngine implements pulumi.PulumiEnum<String> {
  databaseEngineUnspecified("DATABASE_ENGINE_UNSPECIFIED"),
  mysql("MYSQL"),
  postgresql("POSTGRESQL"),
  oracle("ORACLE");

  const DatabaseTypeEngine(this.wireValue);
  @override
  final String wireValue;

  static DatabaseTypeEngine fromValue(String value) {
    for (final item in DatabaseTypeEngine.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeEngine value: $value');
  }
}
