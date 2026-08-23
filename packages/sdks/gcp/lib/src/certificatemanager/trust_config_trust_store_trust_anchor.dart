// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustConfigTrustStoreTrustAnchor {
  /// PEM root certificate of the PKI used for validation.
  /// Each certificate provided in PEM format may occupy up to 5kB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? pemCertificate;

  /// Creates a new [TrustConfigTrustStoreTrustAnchor].
  /// [pemCertificate] PEM root certificate of the PKI used for validation.
  const TrustConfigTrustStoreTrustAnchor({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': ?pemCertificate,
    };
  }

  factory TrustConfigTrustStoreTrustAnchor.fromMap(Map<String, dynamic> map) {
    return TrustConfigTrustStoreTrustAnchor(
      pemCertificate: (() { final guardedValue = map['pemCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
