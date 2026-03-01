/// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
enum PersistenceConfigPersistenceMode {
  persistenceModeUnspecified("PERSISTENCE_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  rdb("RDB");

  const PersistenceConfigPersistenceMode(this.value);
  final String value;

  static PersistenceConfigPersistenceMode fromValue(String value) {
    for (final item in PersistenceConfigPersistenceMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistenceConfigPersistenceMode value: $value');
  }
}

