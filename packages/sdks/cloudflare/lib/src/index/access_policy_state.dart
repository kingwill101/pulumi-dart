// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_approval_group.dart';
import 'access_policy_connection_rules.dart';
import 'access_policy_exclude.dart';
import 'access_policy_include.dart';
import 'access_policy_mfa_config.dart';
import 'access_policy_require.dart';

/// Input properties used for looking up and filtering AccessPolicy resources.
class AccessPolicyState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Number of access applications currently using this policy.
  final pulumi.Input<int?>? appCount;
  /// Administrators who can approve a temporary authentication request.
  final pulumi.Input<List<AccessPolicyApprovalGroup>?>? approvalGroups;
  /// Requires the user to request access from an administrator at the start of each session.
  final pulumi.Input<bool?>? approvalRequired;
  /// The rules that define how users may connect to targets secured by your application.
  final pulumi.Input<AccessPolicyConnectionRules?>? connectionRules;
  final pulumi.Input<String?>? createdAt;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  final pulumi.Input<String?>? decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<AccessPolicyExclude>?>? excludes;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<AccessPolicyInclude>?>? includes;
  /// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  final pulumi.Input<bool?>? isolationRequired;
  /// Configures multi-factor authentication (MFA) settings.
  final pulumi.Input<AccessPolicyMfaConfig?>? mfaConfig;
  /// The name of the Access policy.
  final pulumi.Input<String?>? name;
  /// A custom message that will appear on the purpose justification screen.
  final pulumi.Input<String?>? purposeJustificationPrompt;
  /// Require users to enter a justification when they log in to the application.
  final pulumi.Input<bool?>? purposeJustificationRequired;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  final pulumi.Input<List<AccessPolicyRequire>?>? requires;
  final pulumi.Input<bool?>? reusable;
  /// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  final pulumi.Input<String?>? sessionDuration;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [AccessPolicyState].
  /// [accountId] Identifier.
  /// [appCount] Number of access applications currently using this policy.
  /// [approvalGroups] Administrators who can approve a temporary authentication request.
  /// [approvalRequired] Requires the user to request access from an administrator at the start of each session.
  /// [connectionRules] The rules that define how users may connect to targets secured by your application.
  /// [createdAt] Optional.
  /// [decision] The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// [excludes] Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isolationRequired] Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings.
  /// [name] The name of the Access policy.
  /// [purposeJustificationPrompt] A custom message that will appear on the purpose justification screen.
  /// [purposeJustificationRequired] Require users to enter a justification when they log in to the application.
  /// [requires] Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  /// [reusable] Optional.
  /// [sessionDuration] The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  /// [updatedAt] Optional.
  const AccessPolicyState({
    this.accountId,
    this.appCount,
    this.approvalGroups,
    this.approvalRequired,
    this.connectionRules,
    this.createdAt,
    this.decision,
    this.excludes,
    this.includes,
    this.isolationRequired,
    this.mfaConfig,
    this.name,
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
      'approvalGroups': ?pulumi.Input.mapOptionalInputValue<List<AccessPolicyApprovalGroup>, List<Map<String, dynamic>>>(approvalGroups, (value) => pulumi.Input.encodeList<AccessPolicyApprovalGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approvalRequired': ?approvalRequired,
      'connectionRules': ?pulumi.Input.mapOptionalInputValue<AccessPolicyConnectionRules, Map<String, dynamic>>(connectionRules, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'decision': ?decision,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<AccessPolicyExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<AccessPolicyExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': ?pulumi.Input.mapOptionalInputValue<List<AccessPolicyInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<AccessPolicyInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isolationRequired': ?isolationRequired,
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<AccessPolicyMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': ?name,
      'purposeJustificationPrompt': ?purposeJustificationPrompt,
      'purposeJustificationRequired': ?purposeJustificationRequired,
      'requires': ?pulumi.Input.mapOptionalInputValue<List<AccessPolicyRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<AccessPolicyRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reusable': ?reusable,
      'sessionDuration': ?sessionDuration,
      'updatedAt': ?updatedAt,
    };
  }

  factory AccessPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appCount: (() { final guardedValue = map['appCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      approvalGroups: (() { final guardedValue = map['approvalGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPolicyApprovalGroup>(guardedValue, (value) => AccessPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionRules: (() { final guardedValue = map['connectionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      decision: (() { final guardedValue = map['decision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPolicyExclude>(guardedValue, (value) => AccessPolicyExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPolicyInclude>(guardedValue, (value) => AccessPolicyInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isolationRequired: (() { final guardedValue = map['isolationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purposeJustificationPrompt: (() { final guardedValue = map['purposeJustificationPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purposeJustificationRequired: (() { final guardedValue = map['purposeJustificationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPolicyRequire>(guardedValue, (value) => AccessPolicyRequire.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reusable: (() { final guardedValue = map['reusable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
