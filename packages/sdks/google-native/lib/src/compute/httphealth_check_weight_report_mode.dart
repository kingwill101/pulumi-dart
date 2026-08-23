/// Weight report mode. used for weighted Load Balancing.
enum HTTPHealthCheckWeightReportMode {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTPHealthCheckWeightReportMode(this.wireValue);
  final String wireValue;

  static HTTPHealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTPHealthCheckWeightReportMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckWeightReportMode value: $value');
  }
}
