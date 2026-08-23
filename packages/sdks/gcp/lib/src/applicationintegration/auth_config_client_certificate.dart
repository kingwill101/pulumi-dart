// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigClientCertificate {
  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  final pulumi.Input<String> encryptedPrivateKey;
  /// 'passphrase' should be left unset if private key is not encrypted.
  /// Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  final pulumi.Input<String>? passphrase;
  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [AuthConfigClientCertificate].
  /// [encryptedPrivateKey] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  /// [passphrase] 'passphrase' should be left unset if private key is not encrypted.
  /// [sslCertificate] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines.
  const AuthConfigClientCertificate({
    required this.encryptedPrivateKey,
    this.passphrase,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedPrivateKey': encryptedPrivateKey,
      'passphrase': ?passphrase,
      'sslCertificate': sslCertificate,
    };
  }

  factory AuthConfigClientCertificate.fromMap(Map<String, dynamic> map) {
    return AuthConfigClientCertificate(
      encryptedPrivateKey: pulumi.Input.fromValue(map['encryptedPrivateKey'] as String),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}
