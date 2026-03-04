// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponse {
  final pulumi.Input<String> payload;
  final pulumi.Input<String> payloadType;
  final pulumi.Input<List<EnvelopeSignatureResponse>> signatures;

  /// Creates a new [EnvelopeResponse].
  /// [payload] Required.
  /// [payloadType] Required.
  /// [signatures] Required.
  EnvelopeResponse({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
      'payloadType': payloadType,
      'signatures':
          pulumi.Input.mapInputValue<
            List<EnvelopeSignatureResponse>,
            List<Map<String, dynamic>>
          >(
            signatures,
            (value) =>
                pulumi.Input.encodeList<
                  EnvelopeSignatureResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EnvelopeResponse.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponse(
      payload: pulumi.Input.fromValue(map['payload'] as String),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      signatures: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EnvelopeSignatureResponse>(
          map['signatures']!,
          (value) => EnvelopeSignatureResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
