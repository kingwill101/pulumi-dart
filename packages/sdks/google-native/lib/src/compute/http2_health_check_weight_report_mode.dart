/// Weight report mode. used for weighted Load Balancing.
enum HTTP2HealthCheckWeightReportMode {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTP2HealthCheckWeightReportMode(this.wireValue);
  final String wireValue;

  static HTTP2HealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTP2HealthCheckWeightReportMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HTTP2HealthCheckWeightReportMode value: $value',
    );
  }
}
