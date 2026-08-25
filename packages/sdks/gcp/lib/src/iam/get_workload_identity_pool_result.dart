// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_attestation_rule.dart';
import 'get_workload_identity_pool_inline_certificate_issuance_config.dart';
import 'get_workload_identity_pool_inline_trust_config.dart';

/// Result data returned by getWorkloadIdentityPool.
class GetWorkloadIdentityPoolResult {
  final List<GetWorkloadIdentityPoolAttestationRule>? attestationRules;
  final String? deletionPolicy;
  final String? description;
  final bool? disabled;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig>? inlineCertificateIssuanceConfigs;
  final List<GetWorkloadIdentityPoolInlineTrustConfig>? inlineTrustConfigs;
  final String? mode;
  final String? name;
  final String? project;
  final String? state;
  final String? workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolResult].
  /// [attestationRules] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [disabled] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inlineCertificateIssuanceConfigs] Optional.
  /// [inlineTrustConfigs] Optional.
  /// [mode] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [workloadIdentityPoolId] Optional.
  const GetWorkloadIdentityPoolResult({
    this.attestationRules,
    this.deletionPolicy,
    this.description,
    this.disabled,
    this.displayName,
    this.id,
    this.inlineCertificateIssuanceConfigs,
    this.inlineTrustConfigs,
    this.mode,
    this.name,
    this.project,
    this.state,
    this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationRules': ?(() { final guardedValue = attestationRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolAttestationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'id': ?id,
      'inlineCertificateIssuanceConfigs': ?(() { final guardedValue = inlineCertificateIssuanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inlineTrustConfigs': ?(() { final guardedValue = inlineTrustConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineTrustConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mode': ?mode,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'workloadIdentityPoolId': ?workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      attestationRules: (() { final guardedValue = map['attestationRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolAttestationRule>(guardedValue, (value) => GetWorkloadIdentityPoolAttestationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inlineCertificateIssuanceConfigs: (() { final guardedValue = map['inlineCertificateIssuanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig>(guardedValue, (value) => GetWorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      inlineTrustConfigs: (() { final guardedValue = map['inlineTrustConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfig>(guardedValue, (value) => GetWorkloadIdentityPoolInlineTrustConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadIdentityPoolId: (() { final guardedValue = map['workloadIdentityPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
