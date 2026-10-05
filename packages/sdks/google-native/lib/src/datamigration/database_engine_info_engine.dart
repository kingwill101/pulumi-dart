import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Engine type.
enum DatabaseEngineInfoEngine implements pulumi.PulumiEnum<String> {
  databaseEngineUnspecified("DATABASE_ENGINE_UNSPECIFIED"),
  mysql("MYSQL"),
  postgresql("POSTGRESQL"),
  oracle("ORACLE");

  const DatabaseEngineInfoEngine(this.wireValue);
  @override
  final String wireValue;

  static DatabaseEngineInfoEngine fromValue(String value) {
    for (final item in DatabaseEngineInfoEngine.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseEngineInfoEngine value: $value');
  }
}
