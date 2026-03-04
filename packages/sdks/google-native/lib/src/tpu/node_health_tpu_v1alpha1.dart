/// The health status of the TPU node.
enum NodeHealthTpuV1alpha1 {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  deprecatedUnhealthy("DEPRECATED_UNHEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealthTpuV1alpha1(this.wireValue);
  final String wireValue;

  static NodeHealthTpuV1alpha1 fromValue(String value) {
    for (final item in NodeHealthTpuV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealthTpuV1alpha1 value: $value');
  }
}
