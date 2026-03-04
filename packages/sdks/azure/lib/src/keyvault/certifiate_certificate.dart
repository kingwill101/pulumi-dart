// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertifiateCertificate {
  /// The base64-encoded certificate contents.
  final pulumi.Input<String> contents;

  /// The password associated with the certificate.
  ///
  /// &gt; **NOTE:** A PEM certificate is already base64 encoded. To successfully import, the `contents` property should include a PEM encoded X509 certificate and a private_key in pkcs8 format. There should only be linux style `\n` line endings and the whole block should have the PEM begin/end blocks around the certificate data and the private key data.
  ///
  /// To convert a private key to pkcs8 format with openssl use:
  /// ```shell
  /// openssl pkcs8 -topk8 -nocrypt -in private_key.pem > private_key_pk8.pem
  /// ```
  ///
  /// The PEM content should look something like:
  /// ```text
  /// -----BEGIN CERTIFICATE-----
  /// aGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8K
  /// :
  /// aGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8K
  /// -----END CERTIFICATE-----
  /// -----BEGIN PRIVATE KEY-----
  /// d29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQK
  /// :
  /// d29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQK
  /// -----END PRIVATE KEY-----
  /// ```
  final pulumi.Input<String>? password;

  /// Creates a new [CertifiateCertificate].
  /// [contents] The base64-encoded certificate contents.
  /// [password] The password associated with the certificate.
  CertifiateCertificate({required this.contents, this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contents': contents, 'password': ?password};
  }

  factory CertifiateCertificate.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificate(
      contents: pulumi.Input.fromValue(map['contents'] as String),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
