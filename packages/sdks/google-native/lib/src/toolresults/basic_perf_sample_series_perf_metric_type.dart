import 'package:pulumi/pulumi.dart' as pulumi;

enum BasicPerfSampleSeriesPerfMetricType implements pulumi.PulumiEnum<String> {
  perfMetricTypeUnspecified("perfMetricTypeUnspecified"),
  memory("memory"),
  cpu("cpu"),
  network("network"),
  graphics("graphics");

  const BasicPerfSampleSeriesPerfMetricType(this.wireValue);
  @override
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
