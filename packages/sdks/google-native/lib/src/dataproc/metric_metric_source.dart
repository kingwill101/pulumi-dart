/// Required. A standard set of metrics is collected unless metricOverrides are specified for the metric source (see Custom metrics (https://cloud.google.com/dataproc/docs/guides/dataproc-metrics#custom_metrics) for more information).
enum MetricMetricSource {
  metricSourceUnspecified("METRIC_SOURCE_UNSPECIFIED"),
  monitoringAgentDefaults("MONITORING_AGENT_DEFAULTS"),
  hdfs("HDFS"),
  spark("SPARK"),
  yarn("YARN"),
  sparkHistoryServer("SPARK_HISTORY_SERVER"),
  hiveserver2("HIVESERVER2"),
  hivemetastore("HIVEMETASTORE"),
  flink("FLINK");

  const MetricMetricSource(this.wireValue);
  final String wireValue;

  static MetricMetricSource fromValue(String value) {
    for (final item in MetricMetricSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricMetricSource value: $value');
  }
}
