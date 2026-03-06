// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dssehint_response.dart';

class DSSEAttestationNoteResponse {
  /// DSSEHint hints at the purpose of the attestation authority.
  final pulumi.Input<DSSEHintResponse> hint;

  /// Creates a new [DSSEAttestationNoteResponse].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  const DSSEAttestationNoteResponse({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': pulumi.Input.mapInputValue<DSSEHintResponse, Map<String, dynamic>>(hint, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationNoteResponse.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNoteResponse(
      hint: pulumi.Input.fromValue(DSSEHintResponse.fromMap((map['hint']! as Map).cast<String, dynamic>())),
    );
  }
}

