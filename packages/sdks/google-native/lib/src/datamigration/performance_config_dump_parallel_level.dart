import 'package:pulumi/pulumi.dart' as pulumi;

/// Initial dump parallelism level.
enum PerformanceConfigDumpParallelLevel implements pulumi.PulumiEnum<String> {
  dumpParallelLevelUnspecified("DUMP_PARALLEL_LEVEL_UNSPECIFIED"),
  min("MIN"),
  optimal("OPTIMAL"),
  max("MAX");

  const PerformanceConfigDumpParallelLevel(this.wireValue);
  @override
  final String wireValue;

  static PerformanceConfigDumpParallelLevel fromValue(String value) {
    for (final item in PerformanceConfigDumpParallelLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PerformanceConfigDumpParallelLevel value: $value');
  }
}
