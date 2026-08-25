// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsFoxItStixSettingsSsl {
  /// The encoded private key. The string should be a private key in PEM format,
  /// and should include the begin header and end footer lines. It may also
  /// include newlines.
  /// Example:
  /// -----BEGIN RSA PRIVATE KEY-----
  /// Proc-Type: 4,ENCRYPTED
  /// DEK-Info: DES-EDE3-CBC,F23074E02CF47304
  /// -----END RSA PRIVATE KEY-----
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? encodedPrivateKey;
  /// The encoded SSL certificate. The string should be an SSL certificate in
  /// PEM format, and should include the begin header and end footer lines. It
  /// may also include newlines.
  /// Example:
  /// -----BEGIN CERTIFICATE-----
  /// -----END CERTIFICATE-----
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? sslCertificate;

  /// Creates a new [FeedDetailsFoxItStixSettingsSsl].
  /// [encodedPrivateKey] The encoded private key. The string should be a private key in PEM format,
  /// [sslCertificate] The encoded SSL certificate. The string should be an SSL certificate in
  const FeedDetailsFoxItStixSettingsSsl({
    this.encodedPrivateKey,
    this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encodedPrivateKey': ?encodedPrivateKey,
      'sslCertificate': ?sslCertificate,
    };
  }

  factory FeedDetailsFoxItStixSettingsSsl.fromMap(Map<String, dynamic> map) {
    return FeedDetailsFoxItStixSettingsSsl(
      encodedPrivateKey: (() { final guardedValue = map['encodedPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificate: (() { final guardedValue = map['sslCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
