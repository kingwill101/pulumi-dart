/// CPU overcommit.
enum NodeTemplateCpuOvercommitTypeComputeBeta {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitTypeComputeBeta(this.wireValue);
  final String wireValue;

  static NodeTemplateCpuOvercommitTypeComputeBeta fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitTypeComputeBeta value: $value');
  }
}
