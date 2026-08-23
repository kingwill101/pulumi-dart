// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class Envelope {
  final pulumi.Input<String>? payload;
  final pulumi.Input<String>? payloadType;
  final pulumi.Input<List<EnvelopeSignature>>? signatures;

  /// Creates a new [Envelope].
  /// [payload] Optional.
  /// [payloadType] Optional.
  /// [signatures] Optional.
  const Envelope({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      'payloadType': ?payloadType,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<EnvelopeSignature>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignature, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Envelope.fromMap(Map<String, dynamic> map) {
    return Envelope(
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignature>(guardedValue, (value) => EnvelopeSignature.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
