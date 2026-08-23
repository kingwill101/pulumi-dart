// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppClientCertificateSettings {
  /// The passphrase to decrypt the private key.
  /// Should be left unset if the private key is not encrypted.
  final pulumi.Input<String>? passphrase;
  /// The name of the SecretManager secret version resource
  /// storing the private key encoded in PEM format.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final pulumi.Input<String> privateKey;
  /// The TLS certificate encoded in PEM format.
  /// This string must include the begin header and end footer lines.
  final pulumi.Input<String> tlsCertificate;

  /// Creates a new [AppClientCertificateSettings].
  /// [passphrase] The passphrase to decrypt the private key.
  /// [privateKey] The name of the SecretManager secret version resource
  /// [tlsCertificate] The TLS certificate encoded in PEM format.
  const AppClientCertificateSettings({
    this.passphrase,
    required this.privateKey,
    required this.tlsCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passphrase': ?passphrase,
      'privateKey': privateKey,
      'tlsCertificate': tlsCertificate,
    };
  }

  factory AppClientCertificateSettings.fromMap(Map<String, dynamic> map) {
    return AppClientCertificateSettings(
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      tlsCertificate: pulumi.Input.fromValue(map['tlsCertificate'] as String),
    );
  }
}
