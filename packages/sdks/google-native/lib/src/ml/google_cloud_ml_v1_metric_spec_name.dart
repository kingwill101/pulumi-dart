import 'package:pulumi/pulumi.dart' as pulumi;

/// metric name.
enum GoogleCloudMlV1MetricSpecName implements pulumi.PulumiEnum<String> {
  metricNameUnspecified("METRIC_NAME_UNSPECIFIED"),
  cpuUsage("CPU_USAGE"),
  gpuDutyCycle("GPU_DUTY_CYCLE");

  const GoogleCloudMlV1MetricSpecName(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudMlV1MetricSpecName fromValue(String value) {
    for (final item in GoogleCloudMlV1MetricSpecName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1MetricSpecName value: $value');
  }
}
