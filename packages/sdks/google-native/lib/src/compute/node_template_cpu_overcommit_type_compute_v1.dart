import 'package:pulumi/pulumi.dart' as pulumi;

/// CPU overcommit.
enum NodeTemplateCpuOvercommitTypeComputeV1 implements pulumi.PulumiEnum<String> {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NodeTemplateCpuOvercommitTypeComputeV1 fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitTypeComputeV1 value: $value');
  }
}
