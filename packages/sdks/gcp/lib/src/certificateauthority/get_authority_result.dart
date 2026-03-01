// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_access_url.dart';
import 'get_authority_config.dart';
import 'get_authority_key_spec.dart';
import 'get_authority_subordinate_config.dart';
import 'get_authority_user_defined_access_url.dart';

/// Result data returned by getAuthority.
class GetAuthorityResult {
  final List<GetAuthorityAccessUrl> accessUrls;
  final String? certificateAuthorityId;
  final List<GetAuthorityConfig> configs;
  final String createTime;
  final bool deletionProtection;
  final String desiredState;
  final Map<String, String> effectiveLabels;
  final String gcsBucket;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool ignoreActiveCertificatesOnDeletion;
  final List<GetAuthorityKeySpec> keySpecs;
  final Map<String, String> labels;
  final String lifetime;
  final String? location;
  final String name;
  final String pemCaCertificate;
  final List<String> pemCaCertificates;
  /// The PEM-encoded signed certificate signing request (CSR). This is only set on subordinate certificate authorities that are awaiting user activation.
  final String pemCsr;
  final String? pool;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool skipGracePeriod;
  final String state;
  final List<GetAuthoritySubordinateConfig> subordinateConfigs;
  final String type;
  final String updateTime;
  final List<GetAuthorityUserDefinedAccessUrl> userDefinedAccessUrls;

  /// Creates a new [GetAuthorityResult].
  /// [accessUrls] Required.
  /// [certificateAuthorityId] Optional.
  /// [configs] Required.
  /// [createTime] Required.
  /// [deletionProtection] Required.
  /// [desiredState] Required.
  /// [effectiveLabels] Required.
  /// [gcsBucket] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreActiveCertificatesOnDeletion] Required.
  /// [keySpecs] Required.
  /// [labels] Required.
  /// [lifetime] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [pemCaCertificate] Required.
  /// [pemCaCertificates] Required.
  /// [pemCsr] The PEM-encoded signed certificate signing request (CSR). This is only set on subordinate certificate authorities that are awaiting user activation.
  /// [pool] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [skipGracePeriod] Required.
  /// [state] Required.
  /// [subordinateConfigs] Required.
  /// [type] Required.
  /// [updateTime] Required.
  /// [userDefinedAccessUrls] Required.
  GetAuthorityResult({
    required this.accessUrls,
    this.certificateAuthorityId,
    required this.configs,
    required this.createTime,
    required this.deletionProtection,
    required this.desiredState,
    required this.effectiveLabels,
    required this.gcsBucket,
    required this.id,
    required this.ignoreActiveCertificatesOnDeletion,
    required this.keySpecs,
    required this.labels,
    required this.lifetime,
    this.location,
    required this.name,
    required this.pemCaCertificate,
    required this.pemCaCertificates,
    required this.pemCsr,
    this.pool,
    this.project,
    required this.pulumiLabels,
    required this.skipGracePeriod,
    required this.state,
    required this.subordinateConfigs,
    required this.type,
    required this.updateTime,
    required this.userDefinedAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUrls': pulumi.Input.encodeList<GetAuthorityAccessUrl, Map<String, dynamic>>(accessUrls, (value) => value.toMap()),
      'certificateAuthorityId': ?certificateAuthorityId,
      'configs': pulumi.Input.encodeList<GetAuthorityConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'createTime': createTime,
      'deletionProtection': deletionProtection,
      'desiredState': desiredState,
      'effectiveLabels': effectiveLabels,
      'gcsBucket': gcsBucket,
      'id': id,
      'ignoreActiveCertificatesOnDeletion': ignoreActiveCertificatesOnDeletion,
      'keySpecs': pulumi.Input.encodeList<GetAuthorityKeySpec, Map<String, dynamic>>(keySpecs, (value) => value.toMap()),
      'labels': labels,
      'lifetime': lifetime,
      'location': ?location,
      'name': name,
      'pemCaCertificate': pemCaCertificate,
      'pemCaCertificates': pemCaCertificates,
      'pemCsr': pemCsr,
      'pool': ?pool,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'skipGracePeriod': skipGracePeriod,
      'state': state,
      'subordinateConfigs': pulumi.Input.encodeList<GetAuthoritySubordinateConfig, Map<String, dynamic>>(subordinateConfigs, (value) => value.toMap()),
      'type': type,
      'updateTime': updateTime,
      'userDefinedAccessUrls': pulumi.Input.encodeList<GetAuthorityUserDefinedAccessUrl, Map<String, dynamic>>(userDefinedAccessUrls, (value) => value.toMap()),
    };
  }

  factory GetAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorityResult(
      accessUrls: pulumi.Input.decodeList<GetAuthorityAccessUrl>(map['accessUrls'], (value) => GetAuthorityAccessUrl.fromMap((value as Map).cast<String, dynamic>())),
      certificateAuthorityId: map['certificateAuthorityId'] == null ? null : map['certificateAuthorityId'] as String,
      configs: pulumi.Input.decodeList<GetAuthorityConfig>(map['configs'], (value) => GetAuthorityConfig.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      desiredState: map['desiredState'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gcsBucket: map['gcsBucket'] as String,
      id: map['id'] as String,
      ignoreActiveCertificatesOnDeletion: map['ignoreActiveCertificatesOnDeletion'] as bool,
      keySpecs: pulumi.Input.decodeList<GetAuthorityKeySpec>(map['keySpecs'], (value) => GetAuthorityKeySpec.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      pemCaCertificate: map['pemCaCertificate'] as String,
      pemCaCertificates: (map['pemCaCertificates'] as List).cast<String>(),
      pemCsr: map['pemCsr'] as String,
      pool: map['pool'] == null ? null : map['pool'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      skipGracePeriod: map['skipGracePeriod'] as bool,
      state: map['state'] as String,
      subordinateConfigs: pulumi.Input.decodeList<GetAuthoritySubordinateConfig>(map['subordinateConfigs'], (value) => GetAuthoritySubordinateConfig.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      userDefinedAccessUrls: pulumi.Input.decodeList<GetAuthorityUserDefinedAccessUrl>(map['userDefinedAccessUrls'], (value) => GetAuthorityUserDefinedAccessUrl.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

