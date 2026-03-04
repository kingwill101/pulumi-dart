/// Weight report mode. used for weighted Load Balancing.
enum HTTPSHealthCheckWeightReportMode {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTPSHealthCheckWeightReportMode(this.wireValue);
  final String wireValue;

  static HTTPSHealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTPSHealthCheckWeightReportMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HTTPSHealthCheckWeightReportMode value: $value',
    );
  }
}
