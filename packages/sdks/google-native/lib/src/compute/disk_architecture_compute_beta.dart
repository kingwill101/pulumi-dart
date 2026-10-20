import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitectureComputeBeta implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitectureComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static DiskArchitectureComputeBeta fromValue(String value) {
    for (final item in DiskArchitectureComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitectureComputeBeta value: $value');
  }
}
