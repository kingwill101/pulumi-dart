// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_response.dart';
import 'subject_config_response.dart';
import 'x509_parameters_response.dart';

/// A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.
class CertificateConfigResponse {
  /// Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  final pulumi.Input<PublicKeyResponse> publicKey;
  /// Specifies some of the values in a certificate that are related to the subject.
  final pulumi.Input<SubjectConfigResponse> subjectConfig;
  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final pulumi.Input<X509ParametersResponse> x509Config;

  /// Creates a new [CertificateConfigResponse].
  /// [publicKey] Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  const CertificateConfigResponse({
    required this.publicKey,
    required this.subjectConfig,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': pulumi.Input.mapInputValue<PublicKeyResponse, Map<String, dynamic>>(publicKey, (value) => value.toMap()),
      'subjectConfig': pulumi.Input.mapInputValue<SubjectConfigResponse, Map<String, dynamic>>(subjectConfig, (value) => value.toMap()),
      'x509Config': pulumi.Input.mapInputValue<X509ParametersResponse, Map<String, dynamic>>(x509Config, (value) => value.toMap()),
    };
  }

  factory CertificateConfigResponse.fromMap(Map<String, dynamic> map) {
    return CertificateConfigResponse(
      publicKey: pulumi.Input.fromValue(PublicKeyResponse.fromMap((map['publicKey']! as Map).cast<String, dynamic>())),
      subjectConfig: pulumi.Input.fromValue(SubjectConfigResponse.fromMap((map['subjectConfig']! as Map).cast<String, dynamic>())),
      x509Config: pulumi.Input.fromValue(X509ParametersResponse.fromMap((map['x509Config']! as Map).cast<String, dynamic>())),
    );
  }
}

