// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response_containeranalysis_v1beta1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponseContaineranalysisV1beta1 {
  final pulumi.Input<String> payload;
  final pulumi.Input<String> payloadType;
  final pulumi.Input<List<EnvelopeSignatureResponseContaineranalysisV1beta1>> signatures;

  /// Creates a new [EnvelopeResponseContaineranalysisV1beta1].
  /// [payload] Required.
  /// [payloadType] Required.
  /// [signatures] Required.
  const EnvelopeResponseContaineranalysisV1beta1({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
      'payloadType': payloadType,
      'signatures': pulumi.Input.mapInputValue<List<EnvelopeSignatureResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvelopeResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponseContaineranalysisV1beta1(
      payload: pulumi.Input.fromValue(map['payload'] as String),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      signatures: pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignatureResponseContaineranalysisV1beta1>(map['signatures']!, (value) => EnvelopeSignatureResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

