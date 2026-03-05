/// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of `metric_kind` and `value_type` might not be supported.
enum MetricDescriptorMetricKind {
  metricKindUnspecified("METRIC_KIND_UNSPECIFIED"),
  gauge("GAUGE"),
  delta("DELTA"),
  cumulative("CUMULATIVE");

  const MetricDescriptorMetricKind(this.wireValue);
  final String wireValue;

  static MetricDescriptorMetricKind fromValue(String value) {
    for (final item in MetricDescriptorMetricKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorMetricKind value: $value');
  }
}

