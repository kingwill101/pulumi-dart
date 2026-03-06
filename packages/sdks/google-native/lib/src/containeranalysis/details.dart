// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_containeranalysis_v1beta1.dart';

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  final pulumi.Input<AttestationContaineranalysisV1beta1> attestation;

  /// Creates a new [Details].
  /// [attestation] Attestation for the resource.
  const Details({
    required this.attestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': pulumi.Input.mapInputValue<AttestationContaineranalysisV1beta1, Map<String, dynamic>>(attestation, (value) => value.toMap()),
    };
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      attestation: pulumi.Input.fromValue(AttestationContaineranalysisV1beta1.fromMap((map['attestation']! as Map).cast<String, dynamic>())),
    );
  }
}

