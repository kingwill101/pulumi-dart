/// Initial dump parallelism level.
enum PerformanceConfigDumpParallelLevel {
  dumpParallelLevelUnspecified("DUMP_PARALLEL_LEVEL_UNSPECIFIED"),
  min("MIN"),
  optimal("OPTIMAL"),
  max("MAX");

  const PerformanceConfigDumpParallelLevel(this.wireValue);
  final String wireValue;

  static PerformanceConfigDumpParallelLevel fromValue(String value) {
    for (final item in PerformanceConfigDumpParallelLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PerformanceConfigDumpParallelLevel value: $value',
    );
  }
}
