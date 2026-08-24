// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policy_approval_group.dart';
import 'get_zero_trust_access_policy_connection_rules.dart';
import 'get_zero_trust_access_policy_exclude.dart';
import 'get_zero_trust_access_policy_include.dart';
import 'get_zero_trust_access_policy_mfa_config.dart';
import 'get_zero_trust_access_policy_require.dart';

/// Result data returned by getZeroTrustAccessPolicy.
class GetZeroTrustAccessPolicyResult {
  /// Identifier.
  final String? accountId;
  /// Number of access applications currently using this policy.
  final int? appCount;
  /// Administrators who can approve a temporary authentication request.
  final List<GetZeroTrustAccessPolicyApprovalGroup>? approvalGroups;
  /// Requires the user to request access from an administrator at the start of each session.
  final bool? approvalRequired;
  /// The rules that define how users may connect to targets secured by your application.
  final GetZeroTrustAccessPolicyConnectionRules? connectionRules;
  final String? createdAt;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  final String? decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  final List<GetZeroTrustAccessPolicyExclude>? excludes;
  /// The UUID of the policy
  final String? id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final List<GetZeroTrustAccessPolicyInclude>? includes;
  /// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  final bool? isolationRequired;
  /// Configures multi-factor authentication (MFA) settings.
  final GetZeroTrustAccessPolicyMfaConfig? mfaConfig;
  /// The name of the Access policy.
  final String? name;
  /// The UUID of the policy
  final String? policyId;
  /// A custom message that will appear on the purpose justification screen.
  final String? purposeJustificationPrompt;
  /// Require users to enter a justification when they log in to the application.
  final bool? purposeJustificationRequired;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  final List<GetZeroTrustAccessPolicyRequire>? requires;
  final bool? reusable;
  /// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  final String? sessionDuration;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustAccessPolicyResult].
  /// [accountId] Identifier.
  /// [appCount] Number of access applications currently using this policy.
  /// [approvalGroups] Administrators who can approve a temporary authentication request.
  /// [approvalRequired] Requires the user to request access from an administrator at the start of each session.
  /// [connectionRules] The rules that define how users may connect to targets secured by your application.
  /// [createdAt] Optional.
  /// [decision] The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// [excludes] Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  /// [id] The UUID of the policy
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isolationRequired] Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings.
  /// [name] The name of the Access policy.
  /// [policyId] The UUID of the policy
  /// [purposeJustificationPrompt] A custom message that will appear on the purpose justification screen.
  /// [purposeJustificationRequired] Require users to enter a justification when they log in to the application.
  /// [requires] Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  /// [reusable] Optional.
  /// [sessionDuration] The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  /// [updatedAt] Optional.
  const GetZeroTrustAccessPolicyResult({
    this.accountId,
    this.appCount,
    this.approvalGroups,
    this.approvalRequired,
    this.connectionRules,
    this.createdAt,
    this.decision,
    this.excludes,
    this.id,
    this.includes,
    this.isolationRequired,
    this.mfaConfig,
    this.name,
    this.policyId,
    this.purposeJustificationPrompt,
    this.purposeJustificationRequired,
    this.requires,
    this.reusable,
    this.sessionDuration,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appCount': ?appCount,
      'approvalGroups': ?(() { final guardedValue = approvalGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessPolicyApprovalGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'approvalRequired': ?approvalRequired,
      'connectionRules': ?connectionRules?.toMap(),
      'createdAt': ?createdAt,
      'decision': ?decision,
      'excludes': ?(() { final guardedValue = excludes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessPolicyExclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'includes': ?(() { final guardedValue = includes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessPolicyInclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isolationRequired': ?isolationRequired,
      'mfaConfig': ?mfaConfig?.toMap(),
      'name': ?name,
      'policyId': ?policyId,
      'purposeJustificationPrompt': ?purposeJustificationPrompt,
      'purposeJustificationRequired': ?purposeJustificationRequired,
      'requires': ?(() { final guardedValue = requires; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessPolicyRequire, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reusable': ?reusable,
      'sessionDuration': ?sessionDuration,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appCount: (() { final guardedValue = map['appCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      approvalGroups: (() { final guardedValue = map['approvalGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessPolicyApprovalGroup>(guardedValue, (value) => GetZeroTrustAccessPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      connectionRules: (() { final guardedValue = map['connectionRules']; if (guardedValue == null) return null; return GetZeroTrustAccessPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      decision: (() { final guardedValue = map['decision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessPolicyExclude>(guardedValue, (value) => GetZeroTrustAccessPolicyExclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessPolicyInclude>(guardedValue, (value) => GetZeroTrustAccessPolicyInclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      isolationRequired: (() { final guardedValue = map['isolationRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return GetZeroTrustAccessPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purposeJustificationPrompt: (() { final guardedValue = map['purposeJustificationPrompt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purposeJustificationRequired: (() { final guardedValue = map['purposeJustificationRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessPolicyRequire>(guardedValue, (value) => GetZeroTrustAccessPolicyRequire.fromMap((value as Map).cast<String, dynamic>())); })(),
      reusable: (() { final guardedValue = map['reusable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
