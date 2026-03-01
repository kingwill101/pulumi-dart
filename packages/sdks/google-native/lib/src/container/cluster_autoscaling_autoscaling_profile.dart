/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfile {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfile(this.value);
  final String value;

  static ClusterAutoscalingAutoscalingProfile fromValue(String value) {
    for (final item in ClusterAutoscalingAutoscalingProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAutoscalingAutoscalingProfile value: $value');
  }
}

