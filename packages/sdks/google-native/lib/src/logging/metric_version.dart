import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
enum MetricVersion implements pulumi.PulumiEnum<String> {
  v2("V2"),
  v1("V1");

  const MetricVersion(this.wireValue);
  @override
  final String wireValue;

  static MetricVersion fromValue(String value) {
    for (final item in MetricVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricVersion value: $value');
  }
}
