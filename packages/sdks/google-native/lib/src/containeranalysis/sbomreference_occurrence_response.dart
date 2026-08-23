// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response.dart';
import 'sbom_reference_intoto_payload_response.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceResponse {
  /// The actual payload that contains the SBOM reference data.
  final pulumi.Input<SbomReferenceIntotoPayloadResponse> payload;
  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final pulumi.Input<String> payloadType;
  /// The signatures over the payload.
  final pulumi.Input<List<EnvelopeSignatureResponse>> signatures;

  /// Creates a new [SBOMReferenceOccurrenceResponse].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  const SBOMReferenceOccurrenceResponse({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': pulumi.Input.mapInputValue<SbomReferenceIntotoPayloadResponse, Map<String, dynamic>>(payload, (value) => value.toMap()),
      'payloadType': payloadType,
      'signatures': pulumi.Input.mapInputValue<List<EnvelopeSignatureResponse>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SBOMReferenceOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceResponse(
      payload: pulumi.Input.fromValue(SbomReferenceIntotoPayloadResponse.fromMap((map['payload']! as Map).cast<String, dynamic>())),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      signatures: pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignatureResponse>(map['signatures']!, (value) => EnvelopeSignatureResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
