// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dssehint.dart';

class DSSEAttestationNote {
  /// DSSEHint hints at the purpose of the attestation authority.
  final pulumi.Input<DSSEHint>? hint;

  /// Creates a new [DSSEAttestationNote].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  DSSEAttestationNote({
    this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': ?pulumi.Input.mapOptionalInputValue<DSSEHint, Map<String, dynamic>>(hint, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationNote.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNote(
      hint: (() { final guardedValue = map['hint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DSSEHint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

