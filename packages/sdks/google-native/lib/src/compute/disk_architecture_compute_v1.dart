import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitectureComputeV1 implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitectureComputeV1(this.wireValue);
  @override
  final String wireValue;

  static DiskArchitectureComputeV1 fromValue(String value) {
    for (final item in DiskArchitectureComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitectureComputeV1 value: $value');
  }
}
