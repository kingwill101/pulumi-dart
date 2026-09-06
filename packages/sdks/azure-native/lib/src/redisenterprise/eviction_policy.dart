import 'package:pulumi/pulumi.dart' as pulumi;

/// Redis eviction policy - default is VolatileLRU
enum EvictionPolicy implements pulumi.PulumiEnum<String> {
  valueAllKeysLFU("AllKeysLFU"),
  valueAllKeysLRU("AllKeysLRU"),
  valueAllKeysRandom("AllKeysRandom"),
  valueVolatileLRU("VolatileLRU"),
  valueVolatileLFU("VolatileLFU"),
  valueVolatileTTL("VolatileTTL"),
  valueVolatileRandom("VolatileRandom"),
  valueNoEviction("NoEviction");

  const EvictionPolicy(this.wireValue);
  @override
  final String wireValue;

  static EvictionPolicy fromValue(String value) {
    for (final item in EvictionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicy value: $value');
  }
}
