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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the CertificateAuthority.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the CertificateAuthority will fail.
  /// When the field is set to false, deleting the CertificateAuthority is allowed.
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// &gt; **Note:** For `SUBORDINATE` Certificate Authorities, they need to
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the CertificateAuthority.
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
  const AuthorityArgs({
    required this.certificateAuthorityId,
    required this.config,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      certificateAuthorityId: pulumi.Input.fromValue(map['certificateAuthorityId'] as String),
      config: pulumi.Input.fromValue(AuthorityConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreActiveCertificatesOnDeletion: (() { final guardedValue = map['ignoreActiveCertificatesOnDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keySpec: pulumi.Input.fromValue(AuthorityKeySpec.fromMap((map['keySpec']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      pemCaCertificate: (() { final guardedValue = map['pemCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipGracePeriod: (() { final guardedValue = map['skipGracePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subordinateConfig: (() { final guardedValue = map['subordinateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthoritySubordinateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDefinedAccessUrls: (() { final guardedValue = map['userDefinedAccessUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorityUserDefinedAccessUrls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
