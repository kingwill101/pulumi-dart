import 'package:pulumi/pulumi.dart' as pulumi;

/// Weight report mode. used for weighted Load Balancing.
enum HTTPSHealthCheckWeightReportMode implements pulumi.PulumiEnum<String> {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTPSHealthCheckWeightReportMode(this.wireValue);
  @override
  final String wireValue;

  static HTTPSHealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTPSHealthCheckWeightReportMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckWeightReportMode value: $value');
  }
}
