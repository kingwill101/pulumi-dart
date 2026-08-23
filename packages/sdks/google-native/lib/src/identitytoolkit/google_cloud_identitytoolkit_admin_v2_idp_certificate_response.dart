// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse {
  /// The x509 certificate
  final pulumi.Input<String> x509Certificate;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse].
  /// [x509Certificate] The x509 certificate
  const GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse({
    required this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509Certificate': x509Certificate,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse(
      x509Certificate: pulumi.Input.fromValue(map['x509Certificate'] as String),
    );
  }
}
