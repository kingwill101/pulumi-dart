import 'package:pulumi/pulumi.dart' as pulumi;

/// The disk type to use in the VM.
enum ComputeEngineTargetDefaultsDiskType implements pulumi.PulumiEnum<String> {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const ComputeEngineTargetDefaultsDiskType(this.wireValue);
  @override
  final String wireValue;

  static ComputeEngineTargetDefaultsDiskType fromValue(String value) {
    for (final item in ComputeEngineTargetDefaultsDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeEngineTargetDefaultsDiskType value: $value');
  }
}
