import 'package:pulumi/pulumi.dart' as pulumi;

/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyMode(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupAutoscalingPolicyMode fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupAutoscalingPolicyMode value: $value');
  }
}
