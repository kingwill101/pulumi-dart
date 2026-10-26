import 'package:pulumi/pulumi.dart' as pulumi;

/// The CPU architecture for which packages in this distribution channel were built.
enum DistributionArchitecture implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const DistributionArchitecture(this.wireValue);
  @override
  final String wireValue;

  static DistributionArchitecture fromValue(String value) {
    for (final item in DistributionArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionArchitecture value: $value');
  }
}
