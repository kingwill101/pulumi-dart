import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the attached disk. Valid values are arm64 or x86_64.
enum AttachedDiskInitializeParamsArchitectureComputeBeta implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const AttachedDiskInitializeParamsArchitectureComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskInitializeParamsArchitectureComputeBeta fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsArchitectureComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsArchitectureComputeBeta value: $value');
  }
}
