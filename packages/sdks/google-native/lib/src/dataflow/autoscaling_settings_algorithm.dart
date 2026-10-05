import 'package:pulumi/pulumi.dart' as pulumi;

/// The algorithm to use for autoscaling.
enum AutoscalingSettingsAlgorithm implements pulumi.PulumiEnum<String> {
  autoscalingAlgorithmUnknown("AUTOSCALING_ALGORITHM_UNKNOWN"),
  autoscalingAlgorithmNone("AUTOSCALING_ALGORITHM_NONE"),
  autoscalingAlgorithmBasic("AUTOSCALING_ALGORITHM_BASIC");

  const AutoscalingSettingsAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static AutoscalingSettingsAlgorithm fromValue(String value) {
    for (final item in AutoscalingSettingsAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingSettingsAlgorithm value: $value');
  }
}
