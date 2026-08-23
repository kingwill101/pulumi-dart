/// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
enum AutoscalingPolicyCpuUtilizationPredictiveMethodComputeBeta {
  none("NONE"),
  optimizeAvailability("OPTIMIZE_AVAILABILITY"),
  predictiveMethodUnspecified("PREDICTIVE_METHOD_UNSPECIFIED");

  const AutoscalingPolicyCpuUtilizationPredictiveMethodComputeBeta(this.wireValue);
  final String wireValue;

  static AutoscalingPolicyCpuUtilizationPredictiveMethodComputeBeta fromValue(String value) {
    for (final item in AutoscalingPolicyCpuUtilizationPredictiveMethodComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyCpuUtilizationPredictiveMethodComputeBeta value: $value');
  }
}
