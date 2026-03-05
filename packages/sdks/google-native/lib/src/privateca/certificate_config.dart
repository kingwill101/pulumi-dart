// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key.dart';
import 'subject_config.dart';
import 'x509_parameters.dart';

/// A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.
class CertificateConfig {
  /// Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  final pulumi.Input<PublicKey>? publicKey;
  /// Specifies some of the values in a certificate that are related to the subject.
  final pulumi.Input<SubjectConfig> subjectConfig;
  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final pulumi.Input<X509Parameters> x509Config;

  /// Creates a new [CertificateConfig].
  /// [publicKey] Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  CertificateConfig({
    this.publicKey,
    required this.subjectConfig,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': ?pulumi.Input.mapOptionalInputValue<PublicKey, Map<String, dynamic>>(publicKey, (value) => value.toMap()),
      'subjectConfig': pulumi.Input.mapInputValue<SubjectConfig, Map<String, dynamic>>(subjectConfig, (value) => value.toMap()),
      'x509Config': pulumi.Input.mapInputValue<X509Parameters, Map<String, dynamic>>(x509Config, (value) => value.toMap()),
    };
  }

  factory CertificateConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfig(
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectConfig: pulumi.Input.fromValue(SubjectConfig.fromMap((map['subjectConfig']! as Map).cast<String, dynamic>())),
      x509Config: pulumi.Input.fromValue(X509Parameters.fromMap((map['x509Config']! as Map).cast<String, dynamic>())),
    );
  }
}

