/// The progress of the SBOM generation.
enum SBOMStatusSbomStateContaineranalysisV1beta1 {
  sbomStateUnspecified("SBOM_STATE_UNSPECIFIED"),
  pending("PENDING"),
  complete("COMPLETE");

  const SBOMStatusSbomStateContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static SBOMStatusSbomStateContaineranalysisV1beta1 fromValue(String value) {
    for (final item in SBOMStatusSbomStateContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SBOMStatusSbomStateContaineranalysisV1beta1 value: $value',
    );
  }
}
