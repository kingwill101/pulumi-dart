// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_access_url.dart';
import 'authority_config.dart';
import 'authority_key_spec.dart';
import 'authority_subordinate_config.dart';
import 'authority_user_defined_access_urls.dart';

/// Input properties used for looking up and filtering Authority resources.
class AuthorityState {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorityAccessUrl>>? accessUrls;
  /// The user provided Resource ID for this Certificate Authority.
  final pulumi.Input<String>? certificateAuthorityId;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfig>? config;
  /// The time at which this CertificateAuthority was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// Possible values: ENABLED, DISABLED, STAGED.
  final pulumi.Input<String>? desiredState;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<AuthorityKeySpec>? keySpec;
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
  final pulumi.Input<String>? location;
  /// The resource name for this CertificateAuthority in the format
  /// projects/*/locations/*/certificateAuthorities/*.
  final pulumi.Input<String>? name;
  /// The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  final pulumi.Input<String>? pemCaCertificate;
  /// This CertificateAuthority's certificate chain, including the current
  /// CertificateAuthority's certificate. Ordered such that the root issuer is the final
  /// element (consistent with RFC 5246). For a self-signed CA, this will only list the current
  /// CertificateAuthority's certificate.
  final pulumi.Input<List<String>>? pemCaCertificates;
  /// The name of the CaPool this Certificate Authority belongs to.
  final pulumi.Input<String>? pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// If this flag is set, the Certificate Authority will be deleted as soon as
  /// possible without a 30-day grace period where undeletion would have been
  /// allowed. If you proceed, there will be no way to recover this CA.
  /// Use with care. Defaults to `false`.
  final pulumi.Input<bool>? skipGracePeriod;
  /// The State for this CertificateAuthority.
  final pulumi.Input<String>? state;
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
  /// The time at which this CertificateAuthority was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  /// that can be specified by users.
  /// Structure is documented below.
  final pulumi.Input<AuthorityUserDefinedAccessUrls>? userDefinedAccessUrls;

  /// Creates a new [AuthorityState].
  /// [accessUrls] URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  /// [certificateAuthorityId] The user provided Resource ID for this Certificate Authority.
  /// [config] The config used to create a self-signed X.509 certificate or CSR.
  /// [createTime] The time at which this CertificateAuthority was created.
  /// [deletionProtection] Optional.
  /// [desiredState] Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gcsBucket] The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// [ignoreActiveCertificatesOnDeletion] This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// [keySpec] Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// [labels] Labels with user-defined metadata.
  /// [lifetime] The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// [location] Location of the CertificateAuthority. A full list of valid locations can be found by
  /// [name] The resource name for this CertificateAuthority in the format
  /// [pemCaCertificate] The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  /// [pemCaCertificates] This CertificateAuthority's certificate chain, including the current
  /// [pool] The name of the CaPool this Certificate Authority belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [skipGracePeriod] If this flag is set, the Certificate Authority will be deleted as soon as
  /// [state] The State for this CertificateAuthority.
  /// [subordinateConfig] If this is a subordinate CertificateAuthority, this field will be set
  /// [type] The Type of this CertificateAuthority.
  /// [updateTime] The time at which this CertificateAuthority was updated.
  /// [userDefinedAccessUrls] Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  AuthorityState({
    pulumi.Output<List<AuthorityAccessUrl>>? accessUrls,
    pulumi.Output<String>? certificateAuthorityId,
    pulumi.Output<AuthorityConfig>? config,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? desiredState,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? gcsBucket,
    pulumi.Output<bool>? ignoreActiveCertificatesOnDeletion,
    pulumi.Output<AuthorityKeySpec>? keySpec,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lifetime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pemCaCertificate,
    pulumi.Output<List<String>>? pemCaCertificates,
    pulumi.Output<String>? pool,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? skipGracePeriod,
    pulumi.Output<String>? state,
    pulumi.Output<AuthoritySubordinateConfig>? subordinateConfig,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
    pulumi.Output<AuthorityUserDefinedAccessUrls>? userDefinedAccessUrls,
  }) :
      accessUrls = pulumi.Input.asOptionalInput<List<AuthorityAccessUrl>>(accessUrls),
      certificateAuthorityId = pulumi.Input.asOptionalInput<String>(certificateAuthorityId),
      config = pulumi.Input.asOptionalInput<AuthorityConfig>(config),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gcsBucket = pulumi.Input.asOptionalInput<String>(gcsBucket),
      ignoreActiveCertificatesOnDeletion = pulumi.Input.asOptionalInput<bool>(ignoreActiveCertificatesOnDeletion),
      keySpec = pulumi.Input.asOptionalInput<AuthorityKeySpec>(keySpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifetime = pulumi.Input.asOptionalInput<String>(lifetime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pemCaCertificate = pulumi.Input.asOptionalInput<String>(pemCaCertificate),
      pemCaCertificates = pulumi.Input.asOptionalInput<List<String>>(pemCaCertificates),
      pool = pulumi.Input.asOptionalInput<String>(pool),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      skipGracePeriod = pulumi.Input.asOptionalInput<bool>(skipGracePeriod),
      state = pulumi.Input.asOptionalInput<String>(state),
      subordinateConfig = pulumi.Input.asOptionalInput<AuthoritySubordinateConfig>(subordinateConfig),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      userDefinedAccessUrls = pulumi.Input.asOptionalInput<AuthorityUserDefinedAccessUrls>(userDefinedAccessUrls);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUrls': ?pulumi.Input.mapOptionalInputValue<List<AuthorityAccessUrl>, List<Map<String, dynamic>>>(accessUrls, (value) => pulumi.Input.encodeList<AuthorityAccessUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateAuthorityId': ?certificateAuthorityId,
      'config': ?pulumi.Input.mapOptionalInputValue<AuthorityConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'desiredState': ?desiredState,
      'effectiveLabels': ?effectiveLabels,
      'gcsBucket': ?gcsBucket,
      'ignoreActiveCertificatesOnDeletion': ?ignoreActiveCertificatesOnDeletion,
      'keySpec': ?pulumi.Input.mapOptionalInputValue<AuthorityKeySpec, Map<String, dynamic>>(keySpec, (value) => value.toMap()),
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': ?location,
      'name': ?name,
      'pemCaCertificate': ?pemCaCertificate,
      'pemCaCertificates': ?pemCaCertificates,
      'pool': ?pool,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'skipGracePeriod': ?skipGracePeriod,
      'state': ?state,
      'subordinateConfig': ?pulumi.Input.mapOptionalInputValue<AuthoritySubordinateConfig, Map<String, dynamic>>(subordinateConfig, (value) => value.toMap()),
      'type': ?type,
      'updateTime': ?updateTime,
      'userDefinedAccessUrls': ?pulumi.Input.mapOptionalInputValue<AuthorityUserDefinedAccessUrls, Map<String, dynamic>>(userDefinedAccessUrls, (value) => value.toMap()),
    };
  }

  factory AuthorityState.fromMap(Map<String, dynamic> map) {
    return AuthorityState(
      accessUrls: map['accessUrls'] == null ? null : pulumi.Output.create<List<AuthorityAccessUrl>>(pulumi.Input.decodeList<AuthorityAccessUrl>(map['accessUrls'], (value) => AuthorityAccessUrl.fromMap((value as Map).cast<String, dynamic>()))),
      certificateAuthorityId: map['certificateAuthorityId'] == null ? null : pulumi.Output.create<String>(map['certificateAuthorityId'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<AuthorityConfig>(AuthorityConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gcsBucket: map['gcsBucket'] == null ? null : pulumi.Output.create<String>(map['gcsBucket'] as String),
      ignoreActiveCertificatesOnDeletion: map['ignoreActiveCertificatesOnDeletion'] == null ? null : pulumi.Output.create<bool>(map['ignoreActiveCertificatesOnDeletion'] as bool),
      keySpec: map['keySpec'] == null ? null : pulumi.Output.create<AuthorityKeySpec>(AuthorityKeySpec.fromMap((map['keySpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lifetime: map['lifetime'] == null ? null : pulumi.Output.create<String>(map['lifetime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pemCaCertificate: map['pemCaCertificate'] == null ? null : pulumi.Output.create<String>(map['pemCaCertificate'] as String),
      pemCaCertificates: map['pemCaCertificates'] == null ? null : pulumi.Output.create<List<String>>((map['pemCaCertificates'] as List).cast<String>()),
      pool: map['pool'] == null ? null : pulumi.Output.create<String>(map['pool'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      skipGracePeriod: map['skipGracePeriod'] == null ? null : pulumi.Output.create<bool>(map['skipGracePeriod'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subordinateConfig: map['subordinateConfig'] == null ? null : pulumi.Output.create<AuthoritySubordinateConfig>(AuthoritySubordinateConfig.fromMap((map['subordinateConfig'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      userDefinedAccessUrls: map['userDefinedAccessUrls'] == null ? null : pulumi.Output.create<AuthorityUserDefinedAccessUrls>(AuthorityUserDefinedAccessUrls.fromMap((map['userDefinedAccessUrls'] as Map).cast<String, dynamic>())),
    );
  }
}

