// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_access_url.dart';
import 'get_authority_config.dart';
import 'get_authority_key_spec.dart';
import 'get_authority_subordinate_config.dart';
import 'get_authority_user_defined_access_url.dart';

/// Result data returned by getAuthority.
class GetAuthorityResult {
  final List<GetAuthorityAccessUrl>? accessUrls;
  final String? certificateAuthorityId;
  final List<GetAuthorityConfig>? configs;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? desiredState;
  final Map<String, String>? effectiveLabels;
  final String? gcsBucket;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? ignoreActiveCertificatesOnDeletion;
  final List<GetAuthorityKeySpec>? keySpecs;
  final Map<String, String>? labels;
  final String? lifetime;
  final String? location;
  final String? name;
  final String? pemCaCertificate;
  final List<String>? pemCaCertificates;
  /// The PEM-encoded signed certificate signing request (CSR). This is only set on subordinate certificate authorities that are awaiting user activation.
  final String? pemCsr;
  final String? pool;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final bool? skipGracePeriod;
  final String? state;
  final List<GetAuthoritySubordinateConfig>? subordinateConfigs;
  final String? type;
  final String? updateTime;
  final List<GetAuthorityUserDefinedAccessUrl>? userDefinedAccessUrls;

  /// Creates a new [GetAuthorityResult].
  /// [accessUrls] Optional.
  /// [certificateAuthorityId] Optional.
  /// [configs] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [desiredState] Optional.
  /// [effectiveLabels] Optional.
  /// [gcsBucket] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreActiveCertificatesOnDeletion] Optional.
  /// [keySpecs] Optional.
  /// [labels] Optional.
  /// [lifetime] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [pemCaCertificate] Optional.
  /// [pemCaCertificates] Optional.
  /// [pemCsr] The PEM-encoded signed certificate signing request (CSR). This is only set on subordinate certificate authorities that are awaiting user activation.
  /// [pool] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [skipGracePeriod] Optional.
  /// [state] Optional.
  /// [subordinateConfigs] Optional.
  /// [type] Optional.
  /// [updateTime] Optional.
  /// [userDefinedAccessUrls] Optional.
  const GetAuthorityResult({
    this.accessUrls,
    this.certificateAuthorityId,
    this.configs,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.desiredState,
    this.effectiveLabels,
    this.gcsBucket,
    this.id,
    this.ignoreActiveCertificatesOnDeletion,
    this.keySpecs,
    this.labels,
    this.lifetime,
    this.location,
    this.name,
    this.pemCaCertificate,
    this.pemCaCertificates,
    this.pemCsr,
    this.pool,
    this.project,
    this.pulumiLabels,
    this.skipGracePeriod,
    this.state,
    this.subordinateConfigs,
    this.type,
    this.updateTime,
    this.userDefinedAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUrls': ?(() { final guardedValue = accessUrls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthorityAccessUrl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'certificateAuthorityId': ?certificateAuthorityId,
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthorityConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'desiredState': ?desiredState,
      'effectiveLabels': ?effectiveLabels,
      'gcsBucket': ?gcsBucket,
      'id': ?id,
      'ignoreActiveCertificatesOnDeletion': ?ignoreActiveCertificatesOnDeletion,
      'keySpecs': ?(() { final guardedValue = keySpecs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthorityKeySpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': ?location,
      'name': ?name,
      'pemCaCertificate': ?pemCaCertificate,
      'pemCaCertificates': ?pemCaCertificates,
      'pemCsr': ?pemCsr,
      'pool': ?pool,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'skipGracePeriod': ?skipGracePeriod,
      'state': ?state,
      'subordinateConfigs': ?(() { final guardedValue = subordinateConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthoritySubordinateConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updateTime': ?updateTime,
      'userDefinedAccessUrls': ?(() { final guardedValue = userDefinedAccessUrls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthorityUserDefinedAccessUrl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorityResult(
      accessUrls: (() { final guardedValue = map['accessUrls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthorityAccessUrl>(guardedValue, (value) => GetAuthorityAccessUrl.fromMap((value as Map).cast<String, dynamic>())); })(),
      certificateAuthorityId: (() { final guardedValue = map['certificateAuthorityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthorityConfig>(guardedValue, (value) => GetAuthorityConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignoreActiveCertificatesOnDeletion: (() { final guardedValue = map['ignoreActiveCertificatesOnDeletion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keySpecs: (() { final guardedValue = map['keySpecs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthorityKeySpec>(guardedValue, (value) => GetAuthorityKeySpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pemCaCertificate: (() { final guardedValue = map['pemCaCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pemCaCertificates: (() { final guardedValue = map['pemCaCertificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      pemCsr: (() { final guardedValue = map['pemCsr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      skipGracePeriod: (() { final guardedValue = map['skipGracePeriod']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subordinateConfigs: (() { final guardedValue = map['subordinateConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthoritySubordinateConfig>(guardedValue, (value) => GetAuthoritySubordinateConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDefinedAccessUrls: (() { final guardedValue = map['userDefinedAccessUrls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthorityUserDefinedAccessUrl>(guardedValue, (value) => GetAuthorityUserDefinedAccessUrl.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
