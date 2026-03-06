// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignatureContaineranalysisV1beta1 {
  final pulumi.Input<String>? keyid;
  final pulumi.Input<String>? sig;

  /// Creates a new [EnvelopeSignatureContaineranalysisV1beta1].
  /// [keyid] Optional.
  /// [sig] Optional.
  const EnvelopeSignatureContaineranalysisV1beta1({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory EnvelopeSignatureContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureContaineranalysisV1beta1(
      keyid: (() { final guardedValue = map['keyid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sig: (() { final guardedValue = map['sig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

