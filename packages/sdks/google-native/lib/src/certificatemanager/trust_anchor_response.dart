// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a trust anchor.
class TrustAnchorResponse {
  /// PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [TrustAnchorResponse].
  /// [pemCertificate] PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  TrustAnchorResponse({required this.pemCertificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': pemCertificate};
  }

  factory TrustAnchorResponse.fromMap(Map<String, dynamic> map) {
    return TrustAnchorResponse(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}
