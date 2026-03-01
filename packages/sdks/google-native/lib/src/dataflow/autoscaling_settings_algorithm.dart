/// The algorithm to use for autoscaling.
enum AutoscalingSettingsAlgorithm {
  autoscalingAlgorithmUnknown("AUTOSCALING_ALGORITHM_UNKNOWN"),
  autoscalingAlgorithmNone("AUTOSCALING_ALGORITHM_NONE"),
  autoscalingAlgorithmBasic("AUTOSCALING_ALGORITHM_BASIC");

  const AutoscalingSettingsAlgorithm(this.value);
  final String value;

  static AutoscalingSettingsAlgorithm fromValue(String value) {
    for (final item in AutoscalingSettingsAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingSettingsAlgorithm value: $value');
  }
}

