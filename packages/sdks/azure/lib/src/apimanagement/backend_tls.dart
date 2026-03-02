// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendTls {
  /// Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.
  final pulumi.Input<bool>? validateCertificateChain;
  /// Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.
  final pulumi.Input<bool>? validateCertificateName;

  /// Creates a new [BackendTls].
  /// [validateCertificateChain] Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.
  /// [validateCertificateName] Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.
  BackendTls({
    this.validateCertificateChain,
    this.validateCertificateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validateCertificateChain': ?validateCertificateChain,
      'validateCertificateName': ?validateCertificateName,
    };
  }

  factory BackendTls.fromMap(Map<String, dynamic> map) {
    return BackendTls(
      validateCertificateChain: map['validateCertificateChain'] == null ? null : (map['validateCertificateChain'] as bool).input(),
      validateCertificateName: map['validateCertificateName'] == null ? null : (map['validateCertificateName'] as bool).input(),
    );
  }
}

