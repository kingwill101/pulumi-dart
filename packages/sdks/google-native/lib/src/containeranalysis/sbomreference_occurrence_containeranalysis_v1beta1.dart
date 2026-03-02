// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_containeranalysis_v1beta1.dart';
import 'sbom_reference_intoto_payload_containeranalysis_v1beta1.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceContaineranalysisV1beta1 {
  /// The actual payload that contains the SBOM reference data.
  final pulumi.Input<SbomReferenceIntotoPayloadContaineranalysisV1beta1>? payload;
  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final pulumi.Input<String>? payloadType;
  /// The signatures over the payload.
  final pulumi.Input<List<EnvelopeSignatureContaineranalysisV1beta1>>? signatures;

  /// Creates a new [SBOMReferenceOccurrenceContaineranalysisV1beta1].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  SBOMReferenceOccurrenceContaineranalysisV1beta1({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?pulumi.Input.mapOptionalInputValue<SbomReferenceIntotoPayloadContaineranalysisV1beta1, Map<String, dynamic>>(payload, (value) => value.toMap()),
      'payloadType': ?payloadType,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<EnvelopeSignatureContaineranalysisV1beta1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SBOMReferenceOccurrenceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceContaineranalysisV1beta1(
      payload: map['payload'] == null ? null : (SbomReferenceIntotoPayloadContaineranalysisV1beta1.fromMap((map['payload']! as Map).cast<String, dynamic>())).input(),
      payloadType: map['payloadType'] == null ? null : (map['payloadType']! as String).input(),
      signatures: map['signatures'] == null ? null : (pulumi.Input.decodeList<EnvelopeSignatureContaineranalysisV1beta1>(map['signatures']!, (value) => EnvelopeSignatureContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

