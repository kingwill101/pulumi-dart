// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature.dart';
import 'sbom_reference_intoto_payload.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrence {
  /// The actual payload that contains the SBOM reference data.
  final pulumi.Input<SbomReferenceIntotoPayload>? payload;
  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final pulumi.Input<String>? payloadType;
  /// The signatures over the payload.
  final pulumi.Input<List<EnvelopeSignature>>? signatures;

  /// Creates a new [SBOMReferenceOccurrence].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  const SBOMReferenceOccurrence({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?pulumi.Input.mapOptionalInputValue<SbomReferenceIntotoPayload, Map<String, dynamic>>(payload, (value) => value.toMap()),
      'payloadType': ?payloadType,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<EnvelopeSignature>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignature, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SBOMReferenceOccurrence.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrence(
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SbomReferenceIntotoPayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignature>(guardedValue, (value) => EnvelopeSignature.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
