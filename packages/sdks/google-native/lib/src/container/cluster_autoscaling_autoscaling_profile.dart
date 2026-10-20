import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfile implements pulumi.PulumiEnum<String> {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfile(this.wireValue);
  @override
  final String wireValue;

  static ClusterAutoscalingAutoscalingProfile fromValue(String value) {
    for (final item in ClusterAutoscalingAutoscalingProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAutoscalingAutoscalingProfile value: $value');
  }
}
