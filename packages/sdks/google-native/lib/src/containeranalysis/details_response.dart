// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_response_containeranalysis_v1beta1.dart';

/// Details of an attestation occurrence.
class DetailsResponse {
  /// Attestation for the resource.
  final pulumi.Input<AttestationResponseContaineranalysisV1beta1> attestation;

  /// Creates a new [DetailsResponse].
  /// [attestation] Attestation for the resource.
  DetailsResponse({
    required this.attestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': pulumi.Input.mapInputValue<AttestationResponseContaineranalysisV1beta1, Map<String, dynamic>>(attestation, (value) => value.toMap()),
    };
  }

  factory DetailsResponse.fromMap(Map<String, dynamic> map) {
    return DetailsResponse(
      attestation: pulumi.Input.fromValue(AttestationResponseContaineranalysisV1beta1.fromMap((map['attestation']! as Map).cast<String, dynamic>())),
    );
  }
}

