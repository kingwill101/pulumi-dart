// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundSamlConfigSpConfigSpCertificate {
  /// The x509 certificate
  final pulumi.Input<String>? x509Certificate;

  /// Creates a new [InboundSamlConfigSpConfigSpCertificate].
  /// [x509Certificate] The x509 certificate
  InboundSamlConfigSpConfigSpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509Certificate': ?x509Certificate,
    };
  }

  factory InboundSamlConfigSpConfigSpCertificate.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigSpConfigSpCertificate(
      x509Certificate: map['x509Certificate'] == null ? null : (map['x509Certificate'] as String).input(),
    );
  }
}

