/// CPU overcommit.
enum NodeTemplateCpuOvercommitType {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitType(this.value);
  final String value;

  static NodeTemplateCpuOvercommitType fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitType value: $value');
  }
}

