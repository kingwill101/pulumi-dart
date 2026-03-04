// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustConfigAllowlistedCertificate {
  /// PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be a parseable X.509 certificate.
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [TrustConfigAllowlistedCertificate].
  /// [pemCertificate] PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be a parseable X.509 certificate.
  TrustConfigAllowlistedCertificate({required this.pemCertificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': pemCertificate};
  }

  factory TrustConfigAllowlistedCertificate.fromMap(Map<String, dynamic> map) {
    return TrustConfigAllowlistedCertificate(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}
