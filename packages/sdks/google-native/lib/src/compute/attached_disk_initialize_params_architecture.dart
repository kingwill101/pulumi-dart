import 'package:pulumi/pulumi.dart' as pulumi;

/// The architecture of the attached disk. Valid values are arm64 or x86_64.
enum AttachedDiskInitializeParamsArchitecture implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const AttachedDiskInitializeParamsArchitecture(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskInitializeParamsArchitecture fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsArchitecture value: $value');
  }
}
