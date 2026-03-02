// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the locations for fetching the provenance attestations.
class AttestationSource {
  /// The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  final pulumi.Input<List<String>>? containerAnalysisAttestationProjects;

  /// Creates a new [AttestationSource].
  /// [containerAnalysisAttestationProjects] The IDs of the GCP projects storing the SLSA attestations as Container Analysis Occurrences.
  AttestationSource({
    this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAnalysisAttestationProjects': ?containerAnalysisAttestationProjects,
    };
  }

  factory AttestationSource.fromMap(Map<String, dynamic> map) {
    return AttestationSource(
      containerAnalysisAttestationProjects: map['containerAnalysisAttestationProjects'] == null ? null : ((map['containerAnalysisAttestationProjects']! as List).cast<String>()).input(),
    );
  }
}

