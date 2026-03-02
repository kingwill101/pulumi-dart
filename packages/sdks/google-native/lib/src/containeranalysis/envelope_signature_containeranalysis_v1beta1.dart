// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignatureContaineranalysisV1beta1 {
  final pulumi.Input<String>? keyid;
  final pulumi.Input<String>? sig;

  /// Creates a new [EnvelopeSignatureContaineranalysisV1beta1].
  /// [keyid] Optional.
  /// [sig] Optional.
  EnvelopeSignatureContaineranalysisV1beta1({
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
      keyid: map['keyid'] == null ? null : (map['keyid'] as String).input(),
      sig: map['sig'] == null ? null : (map['sig'] as String).input(),
    );
  }
}

