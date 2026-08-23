// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateConfigX509ConfigKeyUsageExtendedKeyUsage {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  final pulumi.Input<bool>? clientAuth;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  final pulumi.Input<bool>? codeSigning;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  final pulumi.Input<bool>? emailProtection;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  final pulumi.Input<bool>? ocspSigning;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  final pulumi.Input<bool>? serverAuth;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  final pulumi.Input<bool>? timeStamping;

  /// Creates a new [CertificateConfigX509ConfigKeyUsageExtendedKeyUsage].
  /// [clientAuth] Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  /// [codeSigning] Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  /// [emailProtection] Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  /// [ocspSigning] Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  /// [serverAuth] Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  /// [timeStamping] Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  const CertificateConfigX509ConfigKeyUsageExtendedKeyUsage({
    this.clientAuth,
    this.codeSigning,
    this.emailProtection,
    this.ocspSigning,
    this.serverAuth,
    this.timeStamping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuth': ?clientAuth,
      'codeSigning': ?codeSigning,
      'emailProtection': ?emailProtection,
      'ocspSigning': ?ocspSigning,
      'serverAuth': ?serverAuth,
      'timeStamping': ?timeStamping,
    };
  }

  factory CertificateConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigKeyUsageExtendedKeyUsage(
      clientAuth: (() { final guardedValue = map['clientAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      codeSigning: (() { final guardedValue = map['codeSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailProtection: (() { final guardedValue = map['emailProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ocspSigning: (() { final guardedValue = map['ocspSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverAuth: (() { final guardedValue = map['serverAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeStamping: (() { final guardedValue = map['timeStamping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
