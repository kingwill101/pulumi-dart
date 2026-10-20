import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. The kind of analysis that is handled by this discovery.
enum DiscoveryAnalysisKindContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  noteKindUnspecified("NOTE_KIND_UNSPECIFIED"),
  vulnerability("VULNERABILITY"),
  build("BUILD"),
  image("IMAGE"),
  package("PACKAGE"),
  deployment("DEPLOYMENT"),
  discovery("DISCOVERY"),
  attestation("ATTESTATION"),
  intoto("INTOTO"),
  sbom("SBOM"),
  spdxPackage("SPDX_PACKAGE"),
  spdxFile("SPDX_FILE"),
  spdxRelationship("SPDX_RELATIONSHIP"),
  vulnerabilityAssessment("VULNERABILITY_ASSESSMENT"),
  sbomReference("SBOM_REFERENCE");

  const DiscoveryAnalysisKindContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static DiscoveryAnalysisKindContaineranalysisV1beta1 fromValue(String value) {
    for (final item in DiscoveryAnalysisKindContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryAnalysisKindContaineranalysisV1beta1 value: $value');
  }
}
