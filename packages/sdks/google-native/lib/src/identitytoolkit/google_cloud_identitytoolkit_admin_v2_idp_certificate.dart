// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificate {
  /// The x509 certificate
  final pulumi.Input<String>? x509Certificate;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2IdpCertificate].
  /// [x509Certificate] The x509 certificate
  GoogleCloudIdentitytoolkitAdminV2IdpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509Certificate': ?x509Certificate,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpCertificate(
      x509Certificate: map['x509Certificate'] == null ? null : (map['x509Certificate']! as String).input(),
    );
  }
}

