// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServiceTlsSettings {
  /// TLS certificate verification mode for the connection to the origin.
  final pulumi.Input<String> certVerificationMode;
  /// UUID of the custom CA certificate or chain.
  final pulumi.Input<String> certificateAuthority;
  /// UUID of the mTLS client certificate and private key.
  final pulumi.Input<String> clientCertificate;

  /// Creates a new [GetConnectivityDirectoryServiceTlsSettings].
  /// [certVerificationMode] TLS certificate verification mode for the connection to the origin.
  /// [certificateAuthority] UUID of the custom CA certificate or chain.
  /// [clientCertificate] UUID of the mTLS client certificate and private key.
  const GetConnectivityDirectoryServiceTlsSettings({
    required this.certVerificationMode,
    required this.certificateAuthority,
    required this.clientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certVerificationMode': certVerificationMode,
      'certificateAuthority': certificateAuthority,
      'clientCertificate': clientCertificate,
    };
  }

  factory GetConnectivityDirectoryServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceTlsSettings(
      certVerificationMode: pulumi.Input.fromValue(map['certVerificationMode'] as String),
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
    );
  }
}
