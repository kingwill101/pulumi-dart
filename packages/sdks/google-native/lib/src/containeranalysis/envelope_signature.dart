// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvelopeSignature {
  final pulumi.Input<String>? keyid;
  final pulumi.Input<String>? sig;

  /// Creates a new [EnvelopeSignature].
  /// [keyid] Optional.
  /// [sig] Optional.
  const EnvelopeSignature({
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
      keyid: (() { final guardedValue = map['keyid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sig: (() { final guardedValue = map['sig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

