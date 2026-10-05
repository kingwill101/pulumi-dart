// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_config_response.dart';
import 'certificate_description_response.dart';
import 'revocation_details_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// A structured description of the issued X.509 certificate.
  final CertificateDescriptionResponse? certificateDescription;
  /// Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  final String? certificateTemplate;
  /// Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  final CertificateConfigResponse? config;
  /// The time at which this Certificate was created.
  final String? createTime;
  /// The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final String? issuerCertificateAuthority;
  /// Optional. Labels with user-defined metadata.
  final Map<String, String>? labels;
  /// Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  final String? lifetime;
  /// The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.
  final String? name;
  /// The pem-encoded, signed X.509 certificate.
  final String? pemCertificate;
  /// The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  final List<String>? pemCertificateChain;
  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final String? pemCsr;
  /// Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  final RevocationDetailsResponse? revocationDetails;
  /// Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  final String? subjectMode;
  /// The time at which this Certificate was updated.
  final String? updateTime;

  /// Creates a new [GetCertificateResult].
  /// [certificateDescription] A structured description of the issued X.509 certificate.
  /// [certificateTemplate] Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  /// [config] Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  /// [createTime] The time at which this Certificate was created.
  /// [issuerCertificateAuthority] The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [lifetime] Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  /// [name] The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.
  /// [pemCertificate] The pem-encoded, signed X.509 certificate.
  /// [pemCertificateChain] The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  /// [pemCsr] Immutable. A pem-encoded X.509 certificate signing request (CSR).
  /// [revocationDetails] Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  /// [subjectMode] Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  /// [updateTime] The time at which this Certificate was updated.
  const GetCertificateResult({
    this.certificateDescription,
    this.certificateTemplate,
    this.config,
    this.createTime,
    this.issuerCertificateAuthority,
    this.labels,
    this.lifetime,
    this.name,
    this.pemCertificate,
    this.pemCertificateChain,
    this.pemCsr,
    this.revocationDetails,
    this.subjectMode,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateDescription': ?certificateDescription?.toMap(),
      'certificateTemplate': ?certificateTemplate,
      'config': ?config?.toMap(),
      'createTime': ?createTime,
      'issuerCertificateAuthority': ?issuerCertificateAuthority,
      'labels': ?labels,
      'lifetime': ?lifetime,
      'name': ?name,
      'pemCertificate': ?pemCertificate,
      'pemCertificateChain': ?pemCertificateChain,
      'pemCsr': ?pemCsr,
      'revocationDetails': ?revocationDetails?.toMap(),
      'subjectMode': ?subjectMode,
      'updateTime': ?updateTime,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateDescription: (() { final guardedValue = map['certificateDescription']; if (guardedValue == null) return null; return CertificateDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      certificateTemplate: (() { final guardedValue = map['certificateTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return CertificateConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuerCertificateAuthority: (() { final guardedValue = map['issuerCertificateAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pemCertificate: (() { final guardedValue = map['pemCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pemCertificateChain: (() { final guardedValue = map['pemCertificateChain']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      pemCsr: (() { final guardedValue = map['pemCsr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revocationDetails: (() { final guardedValue = map['revocationDetails']; if (guardedValue == null) return null; return RevocationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subjectMode: (() { final guardedValue = map['subjectMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
