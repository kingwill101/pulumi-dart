import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how the service is partitioned.
enum PartitionScheme implements pulumi.PulumiEnum<String> {
  valueSingleton("Singleton"),
  valueUniformInt64Range("UniformInt64Range"),
  valueNamed("Named");

  const PartitionScheme(this.wireValue);
  @override
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
