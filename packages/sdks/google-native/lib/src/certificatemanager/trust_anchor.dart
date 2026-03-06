// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a trust anchor.
class TrustAnchor {
  /// PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final pulumi.Input<String>? pemCertificate;

  /// Creates a new [TrustAnchor].
  /// [pemCertificate] PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  const TrustAnchor({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': ?pemCertificate,
    };
  }

  factory TrustAnchor.fromMap(Map<String, dynamic> map) {
    return TrustAnchor(
      pemCertificate: (() { final guardedValue = map['pemCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

