import 'package:pulumi/pulumi.dart' as pulumi;

/// CPU overcommit.
enum NodeTemplateCpuOvercommitTypeComputeBeta implements pulumi.PulumiEnum<String> {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitTypeComputeBeta(this.wireValue);
  @override
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
