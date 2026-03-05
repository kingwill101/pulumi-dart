// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolOpenApiSpecTlsConfigCaCert {
  /// The allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store.
  /// If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates.
  /// N.B. Make sure the HTTPS server certificates are signed with "subject alt name".
  /// For instance a certificate can be self-signed using the following command:
  /// ```
  /// openssl x509 -req -days 200 -in example.com.csr \
  /// -signkey example.com.key \
  /// -out example.com.crt \
  /// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
  /// ```
  /// A base64-encoded string.
  final pulumi.Input<String> cert;
  /// The name of the allowed custom CA certificates. This can be used to disambiguate the custom CA certificates.
  final pulumi.Input<String> displayName;

  /// Creates a new [CxToolOpenApiSpecTlsConfigCaCert].
  /// [cert] The allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store.
  /// [displayName] The name of the allowed custom CA certificates. This can be used to disambiguate the custom CA certificates.
  CxToolOpenApiSpecTlsConfigCaCert({
    required this.cert,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'displayName': displayName,
    };
  }

  factory CxToolOpenApiSpecTlsConfigCaCert.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecTlsConfigCaCert(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

