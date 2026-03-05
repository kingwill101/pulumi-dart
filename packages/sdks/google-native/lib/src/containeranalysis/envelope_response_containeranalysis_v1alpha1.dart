// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response_containeranalysis_v1alpha1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponseContaineranalysisV1alpha1 {
  /// The bytes being signed
  final pulumi.Input<String> payload;
  /// The type of payload being signed
  final pulumi.Input<String> payloadType;
  /// The signatures over the payload
  final pulumi.Input<List<EnvelopeSignatureResponseContaineranalysisV1alpha1>> signatures;

  /// Creates a new [EnvelopeResponseContaineranalysisV1alpha1].
  /// [payload] The bytes being signed
  /// [payloadType] The type of payload being signed
  /// [signatures] The signatures over the payload
  EnvelopeResponseContaineranalysisV1alpha1({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
      'payloadType': payloadType,
      'signatures': pulumi.Input.mapInputValue<List<EnvelopeSignatureResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvelopeResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponseContaineranalysisV1alpha1(
      payload: pulumi.Input.fromValue(map['payload'] as String),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      signatures: pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignatureResponseContaineranalysisV1alpha1>(map['signatures']!, (value) => EnvelopeSignatureResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

