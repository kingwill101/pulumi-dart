// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_containeranalysis_v1beta1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeContaineranalysisV1beta1 {
  final pulumi.Input<String>? payload;
  final pulumi.Input<String>? payloadType;
  final pulumi.Input<List<EnvelopeSignatureContaineranalysisV1beta1>>? signatures;

  /// Creates a new [EnvelopeContaineranalysisV1beta1].
  /// [payload] Optional.
  /// [payloadType] Optional.
  /// [signatures] Optional.
  EnvelopeContaineranalysisV1beta1({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      'payloadType': ?payloadType,
      'signatures': ?pulumi.Input.mapOptionalInputValue<List<EnvelopeSignatureContaineranalysisV1beta1>, List<Map<String, dynamic>>>(signatures, (value) => pulumi.Input.encodeList<EnvelopeSignatureContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvelopeContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvelopeContaineranalysisV1beta1(
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvelopeSignatureContaineranalysisV1beta1>(guardedValue, (value) => EnvelopeSignatureContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

