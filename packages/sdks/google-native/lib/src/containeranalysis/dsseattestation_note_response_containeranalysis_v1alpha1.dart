// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dssehint_response_containeranalysis_v1alpha1.dart';

/// A note describing an attestation
class DSSEAttestationNoteResponseContaineranalysisV1alpha1 {
  /// DSSEHint hints at the purpose of the attestation authority.
  final pulumi.Input<DSSEHintResponseContaineranalysisV1alpha1> hint;

  /// Creates a new [DSSEAttestationNoteResponseContaineranalysisV1alpha1].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  DSSEAttestationNoteResponseContaineranalysisV1alpha1({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint': pulumi.Input.mapInputValue<DSSEHintResponseContaineranalysisV1alpha1, Map<String, dynamic>>(hint, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationNoteResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNoteResponseContaineranalysisV1alpha1(
      hint: pulumi.Input.fromValue(DSSEHintResponseContaineranalysisV1alpha1.fromMap((map['hint']! as Map).cast<String, dynamic>())),
    );
  }
}

