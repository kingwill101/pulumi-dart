// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the properties of a assignment attestation
class AttestationEvidenceResponse {
  /// The description of the evidence
  final pulumi.Input<String>? description;
  /// The source url of the evidence
  final pulumi.Input<String>? sourceUrl;

  /// Creates a new [AttestationEvidenceResponse].
  /// [description] The description of the evidence
  /// [sourceUrl] The source url of the evidence
  const AttestationEvidenceResponse({
    this.description,
    this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'sourceUrl': ?sourceUrl,
    };
  }

  factory AttestationEvidenceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationEvidenceResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUrl: (() { final guardedValue = map['sourceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

