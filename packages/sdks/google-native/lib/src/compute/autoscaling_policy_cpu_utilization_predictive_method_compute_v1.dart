/// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
enum AutoscalingPolicyCpuUtilizationPredictiveMethodComputeV1 {
  none("NONE"),
  optimizeAvailability("OPTIMIZE_AVAILABILITY");

  const AutoscalingPolicyCpuUtilizationPredictiveMethodComputeV1(this.wireValue);
  final String wireValue;

  static AutoscalingPolicyCpuUtilizationPredictiveMethodComputeV1 fromValue(String value) {
    for (final item in AutoscalingPolicyCpuUtilizationPredictiveMethodComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyCpuUtilizationPredictiveMethodComputeV1 value: $value');
  }
}

