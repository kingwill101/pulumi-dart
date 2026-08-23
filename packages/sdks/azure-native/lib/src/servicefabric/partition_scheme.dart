/// Specifies how the service is partitioned.
enum PartitionScheme {
  valueSingleton("Singleton"),
  valueUniformInt64Range("UniformInt64Range"),
  valueNamed("Named");

  const PartitionScheme(this.wireValue);
  final String wireValue;

  static PartitionScheme fromValue(String value) {
    for (final item in PartitionScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartitionScheme value: $value');
  }
}
