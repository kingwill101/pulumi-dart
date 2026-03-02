// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response_containeranalysis_v1alpha1.dart';
import 'sbom_reference_intoto_payload_response_containeranalysis_v1alpha1.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1 {
  /// The actual payload that contains the SBOM reference data.
  final pulumi.Input<SbomReferenceIntotoPayloadResponseContaineranalysisV1alpha1> payload;
  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final pulumi.Input<String> payloadType;
  /// The signatures over the payload.
  final pulumi.Input<List<EnvelopeSignatureResponseContaineranalysisV1alpha1>> signatures;

  /// Creates a new [SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': pulumi.Input.mapInputValue<SbomReferenceIntotoPayloadResponseContaineranalysisV1alpha1, Map<String, dynamic>>(payload, (value) => value.toMap()),
      'payloadType': payloadType,
      'signatures': pulumi.Input.mapInputValue<List<EnvelopeSignatureResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1(
      payload: (SbomReferenceIntotoPayloadResponseContaineranalysisV1alpha1.fromMap((map['payload'] as Map).cast<String, dynamic>())).input(),
      payloadType: (map['payloadType'] as String).input(),
      signatures: (pulumi.Input.decodeList<EnvelopeSignatureResponseContaineranalysisV1alpha1>(map['signatures'], (value) => EnvelopeSignatureResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

