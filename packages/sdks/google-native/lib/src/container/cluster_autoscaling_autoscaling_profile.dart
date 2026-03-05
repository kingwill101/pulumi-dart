/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfile {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfile(this.wireValue);
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

