// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SSL certificate obtained from a certificate authority.
class CertificateRawDataResponse {
  /// Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  final pulumi.Input<String> privateKey;
  /// PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  final pulumi.Input<String> publicCertificate;

  /// Creates a new [CertificateRawDataResponse].
  /// [privateKey] Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly
  /// [publicCertificate] PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  CertificateRawDataResponse({
    required this.privateKey,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': privateKey,
      'publicCertificate': publicCertificate,
    };
  }

  factory CertificateRawDataResponse.fromMap(Map<String, dynamic> map) {
    return CertificateRawDataResponse(
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      publicCertificate: pulumi.Input.fromValue(map['publicCertificate'] as String),
    );
  }
}

