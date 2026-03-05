/// The progress of the SBOM generation.
enum SBOMStatusSbomState {
  sbomStateUnspecified("SBOM_STATE_UNSPECIFIED"),
  pending("PENDING"),
  complete("COMPLETE");

  const SBOMStatusSbomState(this.wireValue);
  final String wireValue;

  static SBOMStatusSbomState fromValue(String value) {
    for (final item in SBOMStatusSbomState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SBOMStatusSbomState value: $value');
  }
}

