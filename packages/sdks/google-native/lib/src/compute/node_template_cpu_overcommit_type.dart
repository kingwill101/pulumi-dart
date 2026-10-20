import 'package:pulumi/pulumi.dart' as pulumi;

/// CPU overcommit.
enum NodeTemplateCpuOvercommitType implements pulumi.PulumiEnum<String> {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitType(this.wireValue);
  @override
  final String wireValue;

  static NodeTemplateCpuOvercommitType fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitType value: $value');
  }
}
