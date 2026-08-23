/// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
enum PersistenceConfigPersistenceModeRedisV1beta1 {
  persistenceModeUnspecified("PERSISTENCE_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  rdb("RDB");

  const PersistenceConfigPersistenceModeRedisV1beta1(this.wireValue);
  final String wireValue;

  static PersistenceConfigPersistenceModeRedisV1beta1 fromValue(String value) {
    for (final item in PersistenceConfigPersistenceModeRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistenceConfigPersistenceModeRedisV1beta1 value: $value');
  }
}
