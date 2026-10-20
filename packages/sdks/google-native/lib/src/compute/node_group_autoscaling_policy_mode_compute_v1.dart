import 'package:pulumi/pulumi.dart' as pulumi;

/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyModeComputeV1 implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupAutoscalingPolicyModeComputeV1 fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupAutoscalingPolicyModeComputeV1 value: $value');
  }
}
