// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TenantInboundSamlConfigSpConfigSpCertificate {
  /// The x509 certificate
  final pulumi.Input<String?>? x509Certificate;

  /// Creates a new [TenantInboundSamlConfigSpConfigSpCertificate].
  /// [x509Certificate] The x509 certificate
  const TenantInboundSamlConfigSpConfigSpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x509Certificate': ?x509Certificate,
    };
  }

  factory TenantInboundSamlConfigSpConfigSpCertificate.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigSpConfigSpCertificate(
      x509Certificate: (() { final guardedValue = map['x509Certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
