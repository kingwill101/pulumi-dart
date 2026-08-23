// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_attestation_rule.dart';
import 'get_workload_identity_pool_inline_certificate_issuance_config.dart';
import 'get_workload_identity_pool_inline_trust_config.dart';

/// Result data returned by getWorkloadIdentityPool.
class GetWorkloadIdentityPoolResult {
  final List<GetWorkloadIdentityPoolAttestationRule> attestationRules;
  final String deletionPolicy;
  final String description;
  final bool disabled;
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig> inlineCertificateIssuanceConfigs;
  final List<GetWorkloadIdentityPoolInlineTrustConfig> inlineTrustConfigs;
  final String mode;
  final String name;
  final String? project;
  final String state;
  final String workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolResult].
  /// [attestationRules] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [disabled] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inlineCertificateIssuanceConfigs] Required.
  /// [inlineTrustConfigs] Required.
  /// [mode] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [workloadIdentityPoolId] Required.
  const GetWorkloadIdentityPoolResult({
    required this.attestationRules,
    required this.deletionPolicy,
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.id,
    required this.inlineCertificateIssuanceConfigs,
    required this.inlineTrustConfigs,
    required this.mode,
    required this.name,
    this.project,
    required this.state,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationRules': pulumi.Input.encodeList<GetWorkloadIdentityPoolAttestationRule, Map<String, dynamic>>(attestationRules, (value) => value.toMap()),
      'deletionPolicy': deletionPolicy,
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'id': id,
      'inlineCertificateIssuanceConfigs': pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig, Map<String, dynamic>>(inlineCertificateIssuanceConfigs, (value) => value.toMap()),
      'inlineTrustConfigs': pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineTrustConfig, Map<String, dynamic>>(inlineTrustConfigs, (value) => value.toMap()),
      'mode': mode,
      'name': name,
      'project': ?project,
      'state': state,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      attestationRules: pulumi.Input.decodeList<GetWorkloadIdentityPoolAttestationRule>(map['attestationRules']!, (value) => GetWorkloadIdentityPoolAttestationRule.fromMap((value as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      inlineCertificateIssuanceConfigs: pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig>(map['inlineCertificateIssuanceConfigs']!, (value) => GetWorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap((value as Map).cast<String, dynamic>())),
      inlineTrustConfigs: pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfig>(map['inlineTrustConfigs']!, (value) => GetWorkloadIdentityPoolInlineTrustConfig.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}
