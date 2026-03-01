// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint_response.dart';

class DSSEAttestationNoteResponse {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHintResponse hint;

  /// Creates a new [DSSEAttestationNoteResponse].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  DSSEAttestationNoteResponse({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': hint.toMap(),
    };
  }

  factory DSSEAttestationNoteResponse.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNoteResponse(
      hint: DSSEHintResponse.fromMap((map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}

