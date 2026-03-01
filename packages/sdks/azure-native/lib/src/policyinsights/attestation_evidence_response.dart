// ignore_for_file: unused_element, unnecessary_cast


/// A piece of evidence supporting the compliance state set in the attestation.
class AttestationEvidenceResponse {
  /// The description for this piece of evidence.
  final String? description;
  /// The URI location of the evidence.
  final String? sourceUri;

  /// Creates a new [AttestationEvidenceResponse].
  /// [description] The description for this piece of evidence.
  /// [sourceUri] The URI location of the evidence.
  AttestationEvidenceResponse({
    this.description,
    this.sourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'sourceUri': ?sourceUri,
    };
  }

  factory AttestationEvidenceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationEvidenceResponse(
      description: map['description'] == null ? null : map['description'] as String,
      sourceUri: map['sourceUri'] == null ? null : map['sourceUri'] as String,
    );
  }
}

