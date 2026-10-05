import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how target utilization value is expressed for a Stackdriver Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
enum AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType implements pulumi.PulumiEnum<String> {
  deltaPerMinute("DELTA_PER_MINUTE"),
  deltaPerSecond("DELTA_PER_SECOND"),
  gauge("GAUGE");

  const AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType(this.wireValue);
  @override
  final String wireValue;

  static AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType fromValue(String value) {
    for (final item in AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType value: $value');
  }
}
