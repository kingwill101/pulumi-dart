// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityDirectoryServiceTlsSettings {
  /// TLS certificate verification mode for the connection to the origin.
  final pulumi.Input<String> certVerificationMode;
  /// UUID of the custom CA certificate or chain.
  final pulumi.Input<String?>? certificateAuthority;
  /// UUID of the mTLS client certificate and private key.
  final pulumi.Input<String?>? clientCertificate;

  /// Creates a new [ConnectivityDirectoryServiceTlsSettings].
  /// [certVerificationMode] TLS certificate verification mode for the connection to the origin.
  /// [certificateAuthority] UUID of the custom CA certificate or chain.
  /// [clientCertificate] UUID of the mTLS client certificate and private key.
  const ConnectivityDirectoryServiceTlsSettings({
    required this.certVerificationMode,
    this.certificateAuthority,
    this.clientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certVerificationMode': certVerificationMode,
      'certificateAuthority': ?certificateAuthority,
      'clientCertificate': ?clientCertificate,
    };
  }

  factory ConnectivityDirectoryServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceTlsSettings(
      certVerificationMode: pulumi.Input.fromValue(map['certVerificationMode'] as String),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
