// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A piece of evidence supporting the compliance state set in the attestation.
class AttestationEvidenceResponse {
  /// The description for this piece of evidence.
  final pulumi.Input<String>? description;
  /// The URI location of the evidence.
  final pulumi.Input<String>? sourceUri;

  /// Creates a new [AttestationEvidenceResponse].
  /// [description] The description for this piece of evidence.
  /// [sourceUri] The URI location of the evidence.
  const AttestationEvidenceResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

