// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_containeranalysis_v1alpha1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeContaineranalysisV1alpha1 {
  /// The bytes being signed
  final pulumi.Input<String>? payload;
  /// The type of payload being signed
  final pulumi.Input<String>? payloadType;
  /// The signatures over the payload
  final pulumi.Input<List<EnvelopeSignatureContaineranalysisV1alpha1>>? signatures;

  /// Creates a new [EnvelopeContaineranalysisV1alpha1].
  /// [payload] The bytes being signed
  /// [payloadType] The type of payload being signed
  /// [signatures] The signatures over the payload
  const EnvelopeContaineranalysisV1alpha1({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      'payloadType': ?payloadType,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<EnvelopeSignatureContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvelopeContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return EnvelopeContaineranalysisV1alpha1(
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignatureContaineranalysisV1alpha1>(guardedValue, (value) => EnvelopeSignatureContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

