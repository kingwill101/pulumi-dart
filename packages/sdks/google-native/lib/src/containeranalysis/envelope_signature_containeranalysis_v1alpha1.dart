// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A DSSE signature
class EnvelopeSignatureContaineranalysisV1alpha1 {
  /// A reference id to the key being used for signing
  final pulumi.Input<String>? keyid;
  /// The signature itself
  final pulumi.Input<String>? sig;

  /// Creates a new [EnvelopeSignatureContaineranalysisV1alpha1].
  /// [keyid] A reference id to the key being used for signing
  /// [sig] The signature itself
  const EnvelopeSignatureContaineranalysisV1alpha1({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory EnvelopeSignatureContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureContaineranalysisV1alpha1(
      keyid: (() { final guardedValue = map['keyid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sig: (() { final guardedValue = map['sig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
