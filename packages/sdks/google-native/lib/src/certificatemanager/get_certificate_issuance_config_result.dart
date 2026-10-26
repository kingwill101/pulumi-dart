// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_config_response.dart';

/// Result data returned by getCertificateIssuanceConfig.
class GetCertificateIssuanceConfigResult {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  final CertificateAuthorityConfigResponse? certificateAuthorityConfig;
  /// The creation timestamp of a CertificateIssuanceConfig.
  final String? createTime;
  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final String? description;
  /// The key algorithm to use when generating the private key.
  final String? keyAlgorithm;
  /// Set of labels associated with a CertificateIssuanceConfig.
  final Map<String, String>? labels;
  /// Workload certificate lifetime requested.
  final String? lifetime;
  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  final String? name;
  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  final int? rotationWindowPercentage;
  /// The last update timestamp of a CertificateIssuanceConfig.
  final String? updateTime;

  /// Creates a new [GetCertificateIssuanceConfigResult].
  /// [certificateAuthorityConfig] The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// [createTime] The creation timestamp of a CertificateIssuanceConfig.
  /// [description] One or more paragraphs of text description of a CertificateIssuanceConfig.
  /// [keyAlgorithm] The key algorithm to use when generating the private key.
  /// [labels] Set of labels associated with a CertificateIssuanceConfig.
  /// [lifetime] Workload certificate lifetime requested.
  /// [name] A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  /// [rotationWindowPercentage] Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  /// [updateTime] The last update timestamp of a CertificateIssuanceConfig.
  const GetCertificateIssuanceConfigResult({
    this.certificateAuthorityConfig,
    this.createTime,
    this.description,
    this.keyAlgorithm,
    this.labels,
    this.lifetime,
    this.name,
    this.rotationWindowPercentage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig': ?certificateAuthorityConfig?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'keyAlgorithm': ?keyAlgorithm,
      'labels': ?labels,
      'lifetime': ?lifetime,
      'name': ?name,
      'rotationWindowPercentage': ?rotationWindowPercentage,
      'updateTime': ?updateTime,
    };
  }

  factory GetCertificateIssuanceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuanceConfigResult(
      certificateAuthorityConfig: (() { final guardedValue = map['certificateAuthorityConfig']; if (guardedValue == null) return null; return CertificateAuthorityConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rotationWindowPercentage: (() { final guardedValue = map['rotationWindowPercentage']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
