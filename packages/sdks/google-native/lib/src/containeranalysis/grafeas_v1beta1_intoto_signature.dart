// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignature {
  final pulumi.Input<String>? keyid;
  final pulumi.Input<String>? sig;

  /// Creates a new [GrafeasV1beta1IntotoSignature].
  /// [keyid] Optional.
  /// [sig] Optional.
  const GrafeasV1beta1IntotoSignature({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory GrafeasV1beta1IntotoSignature.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoSignature(
      keyid: (() { final guardedValue = map['keyid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sig: (() { final guardedValue = map['sig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

