// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignature {
  final pulumi.Input<String>? keyid;
  final pulumi.Input<String>? sig;

  /// Creates a new [EnvelopeSignature].
  /// [keyid] Optional.
  /// [sig] Optional.
  EnvelopeSignature({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory EnvelopeSignature.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignature(
      keyid: map['keyid'] == null ? null : (map['keyid'] as String).input(),
      sig: map['sig'] == null ? null : (map['sig'] as String).input(),
    );
  }
}

