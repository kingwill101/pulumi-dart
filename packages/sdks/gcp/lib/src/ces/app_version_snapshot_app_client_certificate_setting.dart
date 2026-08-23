// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppClientCertificateSetting {
  /// (Output)
  /// The passphrase to decrypt the private key.
  /// Should be left unset if the private key is not encrypted.
  final pulumi.Input<String>? passphrase;
  /// (Output)
  /// The name of the SecretManager secret version resource
  /// storing the private key encoded in PEM format.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final pulumi.Input<String>? privateKey;
  /// (Output)
  /// The TLS certificate encoded in PEM format.
  /// This string must include the begin header and end footer lines.
  final pulumi.Input<String>? tlsCertificate;

  /// Creates a new [AppVersionSnapshotAppClientCertificateSetting].
  /// [passphrase] (Output)
  /// [privateKey] (Output)
  /// [tlsCertificate] (Output)
  const AppVersionSnapshotAppClientCertificateSetting({
    this.passphrase,
    this.privateKey,
    this.tlsCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passphrase': ?passphrase,
      'privateKey': ?privateKey,
      'tlsCertificate': ?tlsCertificate,
    };
  }

  factory AppVersionSnapshotAppClientCertificateSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppClientCertificateSetting(
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCertificate: (() { final guardedValue = map['tlsCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
