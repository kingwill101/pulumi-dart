// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  final pulumi.Input<bool> clientAuth;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  final pulumi.Input<bool> codeSigning;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  final pulumi.Input<bool> emailProtection;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  final pulumi.Input<bool> ocspSigning;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  final pulumi.Input<bool> serverAuth;
  /// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  final pulumi.Input<bool> timeStamping;

  /// Creates a new [GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage].
  /// [clientAuth] Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  /// [codeSigning] Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  /// [emailProtection] Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  /// [ocspSigning] Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  /// [serverAuth] Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  /// [timeStamping] Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  const GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage({
    required this.clientAuth,
    required this.codeSigning,
    required this.emailProtection,
    required this.ocspSigning,
    required this.serverAuth,
    required this.timeStamping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuth': clientAuth,
      'codeSigning': codeSigning,
      'emailProtection': emailProtection,
      'ocspSigning': ocspSigning,
      'serverAuth': serverAuth,
      'timeStamping': timeStamping,
    };
  }

  factory GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage(
      clientAuth: pulumi.Input.fromValue(map['clientAuth'] as bool),
      codeSigning: pulumi.Input.fromValue(map['codeSigning'] as bool),
      emailProtection: pulumi.Input.fromValue(map['emailProtection'] as bool),
      ocspSigning: pulumi.Input.fromValue(map['ocspSigning'] as bool),
      serverAuth: pulumi.Input.fromValue(map['serverAuth'] as bool),
      timeStamping: pulumi.Input.fromValue(map['timeStamping'] as bool),
    );
  }
}

