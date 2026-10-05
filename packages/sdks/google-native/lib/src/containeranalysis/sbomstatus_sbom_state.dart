import 'package:pulumi/pulumi.dart' as pulumi;

/// The progress of the SBOM generation.
enum SBOMStatusSbomState implements pulumi.PulumiEnum<String> {
  sbomStateUnspecified("SBOM_STATE_UNSPECIFIED"),
  pending("PENDING"),
  complete("COMPLETE");

  const SBOMStatusSbomState(this.wireValue);
  @override
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
