import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of auto scaling metric
enum AutoScalingMetricKind implements pulumi.PulumiEnum<String> {
  valueResource("Resource");

  const AutoScalingMetricKind(this.wireValue);
  @override
  final String wireValue;

  static AutoScalingMetricKind fromValue(String value) {
    for (final item in AutoScalingMetricKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingMetricKind value: $value');
  }
}
