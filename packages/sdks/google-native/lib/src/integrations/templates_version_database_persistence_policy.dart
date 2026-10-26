import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
enum TemplatesVersionDatabasePersistencePolicy implements pulumi.PulumiEnum<String> {
  databasePersistencePolicyUnspecified("DATABASE_PERSISTENCE_POLICY_UNSPECIFIED"),
  databasePersistenceDisabled("DATABASE_PERSISTENCE_DISABLED"),
  databasePersistenceAsync("DATABASE_PERSISTENCE_ASYNC");

  const TemplatesVersionDatabasePersistencePolicy(this.wireValue);
  @override
  final String wireValue;

  static TemplatesVersionDatabasePersistencePolicy fromValue(String value) {
    for (final item in TemplatesVersionDatabasePersistencePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplatesVersionDatabasePersistencePolicy value: $value');
  }
}
