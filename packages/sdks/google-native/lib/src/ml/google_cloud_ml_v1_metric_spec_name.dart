/// metric name.
enum GoogleCloudMlV1MetricSpecName {
  metricNameUnspecified("METRIC_NAME_UNSPECIFIED"),
  cpuUsage("CPU_USAGE"),
  gpuDutyCycle("GPU_DUTY_CYCLE");

  const GoogleCloudMlV1MetricSpecName(this.value);
  final String value;

  static GoogleCloudMlV1MetricSpecName fromValue(String value) {
    for (final item in GoogleCloudMlV1MetricSpecName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1MetricSpecName value: $value');
  }
}

