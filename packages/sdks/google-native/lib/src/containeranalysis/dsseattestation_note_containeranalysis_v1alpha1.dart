// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dssehint_containeranalysis_v1alpha1.dart';

/// A note describing an attestation
class DSSEAttestationNoteContaineranalysisV1alpha1 {
  /// DSSEHint hints at the purpose of the attestation authority.
  final pulumi.Input<DSSEHintContaineranalysisV1alpha1>? hint;

  /// Creates a new [DSSEAttestationNoteContaineranalysisV1alpha1].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  DSSEAttestationNoteContaineranalysisV1alpha1({this.hint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hint':
          ?pulumi.Input.mapOptionalInputValue<
            DSSEHintContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(hint, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationNoteContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DSSEAttestationNoteContaineranalysisV1alpha1(
      hint: (() {
        final guardedValue = map['hint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DSSEHintContaineranalysisV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
