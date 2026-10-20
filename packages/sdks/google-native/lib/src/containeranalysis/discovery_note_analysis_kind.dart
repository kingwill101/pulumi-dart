import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. The kind of analysis that is handled by this discovery.
enum DiscoveryNoteAnalysisKind implements pulumi.PulumiEnum<String> {
  noteKindUnspecified("NOTE_KIND_UNSPECIFIED"),
  vulnerability("VULNERABILITY"),
  build("BUILD"),
  image("IMAGE"),
  package("PACKAGE"),
  deployment("DEPLOYMENT"),
  discovery("DISCOVERY"),
  attestation("ATTESTATION"),
  upgrade("UPGRADE"),
  compliance("COMPLIANCE"),
  dsseAttestation("DSSE_ATTESTATION"),
  vulnerabilityAssessment("VULNERABILITY_ASSESSMENT"),
  sbomReference("SBOM_REFERENCE");

  const DiscoveryNoteAnalysisKind(this.wireValue);
  @override
  final String wireValue;

  static DiscoveryNoteAnalysisKind fromValue(String value) {
    for (final item in DiscoveryNoteAnalysisKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryNoteAnalysisKind value: $value');
  }
}
