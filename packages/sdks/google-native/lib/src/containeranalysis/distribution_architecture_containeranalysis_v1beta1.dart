/// The CPU architecture for which packages in this distribution channel were built.
enum DistributionArchitectureContaineranalysisV1beta1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const DistributionArchitectureContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static DistributionArchitectureContaineranalysisV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in DistributionArchitectureContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DistributionArchitectureContaineranalysisV1beta1 value: $value',
    );
  }
}
