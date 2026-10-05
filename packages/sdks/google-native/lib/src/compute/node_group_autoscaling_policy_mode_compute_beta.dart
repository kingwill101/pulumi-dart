import 'package:pulumi/pulumi.dart' as pulumi;

/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyModeComputeBeta implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupAutoscalingPolicyModeComputeBeta fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupAutoscalingPolicyModeComputeBeta value: $value');
  }
}
