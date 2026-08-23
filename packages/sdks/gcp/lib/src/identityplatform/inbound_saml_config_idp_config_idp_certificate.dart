// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundSamlConfigIdpConfigIdpCertificate {
  /// The IdP's x509 certificate.
  final pulumi.Input<String>? x509Certificate;

  /// Creates a new [InboundSamlConfigIdpConfigIdpCertificate].
  /// [x509Certificate] The IdP's x509 certificate.
  const InboundSamlConfigIdpConfigIdpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509Certificate': ?x509Certificate,
    };
  }

  factory InboundSamlConfigIdpConfigIdpCertificate.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigIdpConfigIdpCertificate(
      x509Certificate: (() { final guardedValue = map['x509Certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
