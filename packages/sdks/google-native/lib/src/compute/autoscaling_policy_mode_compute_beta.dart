import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
enum AutoscalingPolicyModeComputeBeta implements pulumi.PulumiEnum<String> {
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT"),
  onlyUp("ONLY_UP");

  const AutoscalingPolicyModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AutoscalingPolicyModeComputeBeta fromValue(String value) {
    for (final item in AutoscalingPolicyModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyModeComputeBeta value: $value');
  }
}
