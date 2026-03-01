/// The health status of the TPU node.
enum NodeHealthTpuV2alpha1 {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealthTpuV2alpha1(this.value);
  final String value;

  static NodeHealthTpuV2alpha1 fromValue(String value) {
    for (final item in NodeHealthTpuV2alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealthTpuV2alpha1 value: $value');
  }
}

