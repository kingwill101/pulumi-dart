// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config.dart';
import 'authority_key_spec.dart';
import 'authority_subordinate_config.dart';
import 'authority_user_defined_access_urls.dart';

/// {@template pulumi_certificateauthority_authority_authority_args_doc}
/// The set of arguments for Authority.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_authority_authority_args_doc}
class AuthorityArgs {
  /// The user provided Resource ID for this Certificate Authority.
  final pulumi.Input<String> certificateAuthorityId;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfig> config;
  final pulumi.Input<bool>? deletionProtection;
  /// Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// Possible values: ENABLED, DISABLED, STAGED.
  final pulumi.Input<String>? desiredState;
  /// The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
  /// (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// my-bucket, you would simply specify `my-bucket`. If not specified, a managed bucket will be
  /// created.
  final pulumi.Input<String>? gcsBucket;
  /// This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// Use with care. Defaults to `false`.
  final pulumi.Input<bool>? ignoreActiveCertificatesOnDeletion;
  /// Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
  /// certificate. Otherwise, it is used to sign a CSR.
  /// Structure is documented below.
  final pulumi.Input<AuthorityKeySpec> keySpec;
  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? lifetime;
  /// Location of the CertificateAuthority. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String> location;
  /// The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  final pulumi.Input<String>? pemCaCertificate;
  /// The name of the CaPool this Certificate Authority belongs to.
  final pulumi.Input<String> pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If this flag is set, the Certificate Authority will be deleted as soon as
  /// possible without a 30-day grace period where undeletion would have been
  /// allowed. If you proceed, there will be no way to recover this CA.
  /// Use with care. Defaults to `false`.
  final pulumi.Input<bool>? skipGracePeriod;
  /// If this is a subordinate CertificateAuthority, this field will be set
  /// with the subordinate configuration, which describes its issuers.
  /// Structure is documented below.
  final pulumi.Input<AuthoritySubordinateConfig>? subordinateConfig;
  /// The Type of this CertificateAuthority.
  /// > **Note:** For `SUBORDINATE` Certificate Authorities, they need to
  /// be activated before they can issue certificates.
  /// Default value is `SELF_SIGNED`.
  /// Possible values are: `SELF_SIGNED`, `SUBORDINATE`.
  final pulumi.Input<String>? type;
  /// Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  /// that can be specified by users.
  /// Structure is documented below.
  final pulumi.Input<AuthorityUserDefinedAccessUrls>? userDefinedAccessUrls;

  /// Creates a new [AuthorityArgs].
  /// [certificateAuthorityId] The user provided Resource ID for this Certificate Authority.
  /// [config] The config used to create a self-signed X.509 certificate or CSR.
  /// [deletionProtection] Optional.
  /// [desiredState] Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// [gcsBucket] The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// [ignoreActiveCertificatesOnDeletion] This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// [keySpec] Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// [labels] Labels with user-defined metadata.
  /// [lifetime] The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// [location] Location of the CertificateAuthority. A full list of valid locations can be found by
  /// [pemCaCertificate] The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  /// [pool] The name of the CaPool this Certificate Authority belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [skipGracePeriod] If this flag is set, the Certificate Authority will be deleted as soon as
  /// [subordinateConfig] If this is a subordinate CertificateAuthority, this field will be set
  /// [type] The Type of this CertificateAuthority.
  /// [userDefinedAccessUrls] Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  AuthorityArgs({
    required this.certificateAuthorityId,
    required this.config,
    this.deletionProtection,
    this.desiredState,
    this.gcsBucket,
    this.ignoreActiveCertificatesOnDeletion,
    required this.keySpec,
    this.labels,
    this.lifetime,
    required this.location,
    this.pemCaCertificate,
    required this.pool,
    this.project,
    this.skipGracePeriod,
    this.subordinateConfig,
    this.type,
    this.userDefinedAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityId': certificateAuthorityId,
      'config': pulumi.Input.mapInputValue<AuthorityConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'desiredState': ?desiredState,
      'gcsBucket': ?gcsBucket,
      'ignoreActiveCertificatesOnDeletion': ?ignoreActiveCertificatesOnDeletion,
      'keySpec': pulumi.Input.mapInputValue<AuthorityKeySpec, Map<String, dynamic>>(keySpec, (value) => value.toMap()),
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': location,
      'pemCaCertificate': ?pemCaCertificate,
      'pool': pool,
      'project': ?project,
      'skipGracePeriod': ?skipGracePeriod,
      'subordinateConfig': ?pulumi.Input.mapOptionalInputValue<AuthoritySubordinateConfig, Map<String, dynamic>>(subordinateConfig, (value) => value.toMap()),
      'type': ?type,
      'userDefinedAccessUrls': ?pulumi.Input.mapOptionalInputValue<AuthorityUserDefinedAccessUrls, Map<String, dynamic>>(userDefinedAccessUrls, (value) => value.toMap()),
    };
  }

  factory AuthorityArgs.fromMap(Map<String, dynamic> map) {
    return AuthorityArgs(
      certificateAuthorityId: (map['certificateAuthorityId'] as String).input(),
      config: (AuthorityConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState'] as String).input(),
      gcsBucket: map['gcsBucket'] == null ? null : (map['gcsBucket'] as String).input(),
      ignoreActiveCertificatesOnDeletion: map['ignoreActiveCertificatesOnDeletion'] == null ? null : (map['ignoreActiveCertificatesOnDeletion'] as bool).input(),
      keySpec: (AuthorityKeySpec.fromMap((map['keySpec'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lifetime: map['lifetime'] == null ? null : (map['lifetime'] as String).input(),
      location: (map['location'] as String).input(),
      pemCaCertificate: map['pemCaCertificate'] == null ? null : (map['pemCaCertificate'] as String).input(),
      pool: (map['pool'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      skipGracePeriod: map['skipGracePeriod'] == null ? null : (map['skipGracePeriod'] as bool).input(),
      subordinateConfig: map['subordinateConfig'] == null ? null : (AuthoritySubordinateConfig.fromMap((map['subordinateConfig'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userDefinedAccessUrls: map['userDefinedAccessUrls'] == null ? null : (AuthorityUserDefinedAccessUrls.fromMap((map['userDefinedAccessUrls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

