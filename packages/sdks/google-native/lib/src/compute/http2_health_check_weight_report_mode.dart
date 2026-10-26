import 'package:pulumi/pulumi.dart' as pulumi;

/// Weight report mode. used for weighted Load Balancing.
enum HTTP2HealthCheckWeightReportMode implements pulumi.PulumiEnum<String> {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTP2HealthCheckWeightReportMode(this.wireValue);
  @override
  final String wireValue;

  static HTTP2HealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTP2HealthCheckWeightReportMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTP2HealthCheckWeightReportMode value: $value');
  }
}
