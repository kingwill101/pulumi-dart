/// Type of transform this stage is executing.
enum ExecutionStageSummaryKind {
  unknownKind("UNKNOWN_KIND"),
  parDoKind("PAR_DO_KIND"),
  groupByKeyKind("GROUP_BY_KEY_KIND"),
  flattenKind("FLATTEN_KIND"),
  readKind("READ_KIND"),
  writeKind("WRITE_KIND"),
  constantKind("CONSTANT_KIND"),
  singletonKind("SINGLETON_KIND"),
  shuffleKind("SHUFFLE_KIND");

  const ExecutionStageSummaryKind(this.wireValue);
  final String wireValue;

  static ExecutionStageSummaryKind fromValue(String value) {
    for (final item in ExecutionStageSummaryKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionStageSummaryKind value: $value');
  }
}

