enum BasicPerfSampleSeriesPerfMetricType {
  perfMetricTypeUnspecified("perfMetricTypeUnspecified"),
  memory("memory"),
  cpu("cpu"),
  network("network"),
  graphics("graphics");

  const BasicPerfSampleSeriesPerfMetricType(this.wireValue);
  final String wireValue;

  static BasicPerfSampleSeriesPerfMetricType fromValue(String value) {
    for (final item in BasicPerfSampleSeriesPerfMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicPerfSampleSeriesPerfMetricType value: $value');
  }
}

