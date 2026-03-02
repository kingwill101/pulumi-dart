// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description.dart';
import 'certificate_config.dart';
import 'certificate_revocation_detail.dart';

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument `pool` should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument `certificate_authority`
  /// should be set to `my-ca`.
  final pulumi.Input<String>? certificateAuthority;
  /// Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescription>>? certificateDescriptions;
  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  final pulumi.Input<String>? certificateTemplate;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfig>? config;
  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final pulumi.Input<String>? issuerCertificateAuthority;
  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? lifetime;
  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String>? location;
  /// The name for this Certificate.
  final pulumi.Input<String>? name;
  /// Output only. The pem-encoded, signed X.509 certificate.
  final pulumi.Input<String>? pemCertificate;
  /// The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  final pulumi.Input<List<String>>? pemCertificateChains;
  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final pulumi.Input<String>? pemCsr;
  /// The name of the CaPool this Certificate belongs to.
  final pulumi.Input<String>? pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Details regarding the revocation of this Certificate. This Certificate is
  /// considered revoked if and only if this field is present.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateRevocationDetail>>? revocationDetails;
  /// Output only. The time at which this CertificateAuthority was updated.
  /// This is in RFC3339 text format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CertificateState].
  /// [certificateAuthority] The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// [certificateDescriptions] Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  /// [certificateTemplate] The resource name for a CertificateTemplate used to issue this certificate,
  /// [config] The config used to create a self-signed X.509 certificate or CSR.
  /// [createTime] The time that this resource was created on the server.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [issuerCertificateAuthority] The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  /// [labels] Labels with user-defined metadata to apply to this resource.
  /// [lifetime] The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// [location] Location of the Certificate. A full list of valid locations can be found by
  /// [name] The name for this Certificate.
  /// [pemCertificate] Output only. The pem-encoded, signed X.509 certificate.
  /// [pemCertificateChains] The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  /// [pemCsr] Immutable. A pem-encoded X.509 certificate signing request (CSR).
  /// [pool] The name of the CaPool this Certificate belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [revocationDetails] Output only. Details regarding the revocation of this Certificate. This Certificate is
  /// [updateTime] Output only. The time at which this CertificateAuthority was updated.
  CertificateState({
    this.certificateAuthority,
    this.certificateDescriptions,
    this.certificateTemplate,
    this.config,
    this.createTime,
    this.effectiveLabels,
    this.issuerCertificateAuthority,
    this.labels,
    this.lifetime,
    this.location,
    this.name,
    this.pemCertificate,
    this.pemCertificateChains,
    this.pemCsr,
    this.pool,
    this.project,
    this.pulumiLabels,
    this.revocationDetails,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'certificateDescriptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescription>, List<Map<String, dynamic>>>(certificateDescriptions, (value) => pulumi.Input.encodeList<CertificateCertificateDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateTemplate': ?certificateTemplate,
      'config': ?pulumi.Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'issuerCertificateAuthority': ?issuerCertificateAuthority,
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': ?location,
      'name': ?name,
      'pemCertificate': ?pemCertificate,
      'pemCertificateChains': ?pemCertificateChains,
      'pemCsr': ?pemCsr,
      'pool': ?pool,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'revocationDetails': ?pulumi.Input.mapOptionalInputValue<List<CertificateRevocationDetail>, List<Map<String, dynamic>>>(revocationDetails, (value) => pulumi.Input.encodeList<CertificateRevocationDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificateAuthority: map['certificateAuthority'] == null ? null : (map['certificateAuthority'] as String).input(),
      certificateDescriptions: map['certificateDescriptions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescription>(map['certificateDescriptions'], (value) => CertificateCertificateDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certificateTemplate: map['certificateTemplate'] == null ? null : (map['certificateTemplate'] as String).input(),
      config: map['config'] == null ? null : (CertificateConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      issuerCertificateAuthority: map['issuerCertificateAuthority'] == null ? null : (map['issuerCertificateAuthority'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lifetime: map['lifetime'] == null ? null : (map['lifetime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pemCertificate: map['pemCertificate'] == null ? null : (map['pemCertificate'] as String).input(),
      pemCertificateChains: map['pemCertificateChains'] == null ? null : ((map['pemCertificateChains'] as List).cast<String>()).input(),
      pemCsr: map['pemCsr'] == null ? null : (map['pemCsr'] as String).input(),
      pool: map['pool'] == null ? null : (map['pool'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      revocationDetails: map['revocationDetails'] == null ? null : (pulumi.Input.decodeList<CertificateRevocationDetail>(map['revocationDetails'], (value) => CertificateRevocationDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

