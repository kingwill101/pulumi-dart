import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfileContainerV1beta1 implements pulumi.PulumiEnum<String> {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfileContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ClusterAutoscalingAutoscalingProfileContainerV1beta1 fromValue(String value) {
    for (final item in ClusterAutoscalingAutoscalingProfileContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAutoscalingAutoscalingProfileContainerV1beta1 value: $value');
  }
}
