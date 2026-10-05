import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
enum PersistenceConfigPersistenceMode implements pulumi.PulumiEnum<String> {
  persistenceModeUnspecified("PERSISTENCE_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  rdb("RDB");

  const PersistenceConfigPersistenceMode(this.wireValue);
  @override
  final String wireValue;

  static PersistenceConfigPersistenceMode fromValue(String value) {
    for (final item in PersistenceConfigPersistenceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistenceConfigPersistenceMode value: $value');
  }
}
