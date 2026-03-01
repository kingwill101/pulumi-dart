// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the locations for fetching the provenance attestations.
class AttestationSourceResponse {
  /// The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  final List<String> containerAnalysisAttestationProjects;

  /// Creates a new [AttestationSourceResponse].
  /// [containerAnalysisAttestationProjects] The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  AttestationSourceResponse({
    required this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAnalysisAttestationProjects': containerAnalysisAttestationProjects,
    };
  }

  factory AttestationSourceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationSourceResponse(
      containerAnalysisAttestationProjects: (map['containerAnalysisAttestationProjects'] as List).cast<String>(),
    );
  }
}

