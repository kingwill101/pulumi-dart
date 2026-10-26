import 'package:pulumi/pulumi.dart' as pulumi;

/// The health status of the TPU node.
enum NodeHealthTpuV2 implements pulumi.PulumiEnum<String> {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealthTpuV2(this.wireValue);
  @override
  final String wireValue;

  static NodeHealthTpuV2 fromValue(String value) {
    for (final item in NodeHealthTpuV2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealthTpuV2 value: $value');
  }
}
