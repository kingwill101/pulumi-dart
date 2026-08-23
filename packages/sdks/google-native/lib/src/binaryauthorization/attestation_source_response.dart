// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the locations for fetching the provenance attestations.
class AttestationSourceResponse {
  /// The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  final pulumi.Input<List<String>> containerAnalysisAttestationProjects;

  /// Creates a new [AttestationSourceResponse].
  /// [containerAnalysisAttestationProjects] The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  const AttestationSourceResponse({
    required this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAnalysisAttestationProjects': containerAnalysisAttestationProjects,
    };
  }

  factory AttestationSourceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationSourceResponse(
      containerAnalysisAttestationProjects: pulumi.Input.fromValue((map['containerAnalysisAttestationProjects'] as List).cast<String>()),
    );
  }
}
