import 'package:pulumi/pulumi.dart' as pulumi;

/// The CPU architecture for which packages in this distribution channel were built
enum DistributionArchitectureContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const DistributionArchitectureContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static DistributionArchitectureContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in DistributionArchitectureContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionArchitectureContaineranalysisV1alpha1 value: $value');
  }
}
