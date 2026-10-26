import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
enum PersistenceConfigPersistenceModeRedisV1beta1 implements pulumi.PulumiEnum<String> {
  persistenceModeUnspecified("PERSISTENCE_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  rdb("RDB");

  const PersistenceConfigPersistenceModeRedisV1beta1(this.wireValue);
  @override
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
