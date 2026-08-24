// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_policy_approval_group.dart';
import 'get_zero_trust_access_applications_result_policy_connection_rules.dart';
import 'get_zero_trust_access_applications_result_policy_exclude.dart';
import 'get_zero_trust_access_applications_result_policy_include.dart';
import 'get_zero_trust_access_applications_result_policy_mfa_config.dart';
import 'get_zero_trust_access_applications_result_policy_require.dart';

class GetZeroTrustAccessApplicationsResultPolicy {
  /// Administrators who can approve a temporary authentication request.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultPolicyApprovalGroup>> approvalGroups;
  /// Requires the user to request access from an administrator at the start of each session.
  final pulumi.Input<bool> approvalRequired;
  /// The rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyConnectionRules> connectionRules;
  final pulumi.Input<String> createdAt;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  final pulumi.Input<String> decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultPolicyExclude>> excludes;
  /// The UUID of the policy
  final pulumi.Input<String> id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultPolicyInclude>> includes;
  /// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  final pulumi.Input<bool> isolationRequired;
  /// Configures multi-factor authentication (MFA) settings for this policy.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyMfaConfig> mfaConfig;
  /// The name of the Access policy.
  final pulumi.Input<String> name;
  /// The order of execution for this policy. Must be unique for each policy within an app.
  final pulumi.Input<int> precedence;
  /// A custom message that will appear on the purpose justification screen.
  final pulumi.Input<String> purposeJustificationPrompt;
  /// Require users to enter a justification when they log in to the application.
  final pulumi.Input<bool> purposeJustificationRequired;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultPolicyRequire>> requires;
  /// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  final pulumi.Input<String> sessionDuration;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicy].
  /// [approvalGroups] Administrators who can approve a temporary authentication request.
  /// [approvalRequired] Requires the user to request access from an administrator at the start of each session.
  /// [connectionRules] The rules that define how users may connect to the targets secured by your application.
  /// [createdAt] Required.
  /// [decision] The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// [excludes] Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  /// [id] The UUID of the policy
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isolationRequired] Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for this policy.
  /// [name] The name of the Access policy.
  /// [precedence] The order of execution for this policy. Must be unique for each policy within an app.
  /// [purposeJustificationPrompt] A custom message that will appear on the purpose justification screen.
  /// [purposeJustificationRequired] Require users to enter a justification when they log in to the application.
  /// [requires] Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  /// [sessionDuration] The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  /// [updatedAt] Required.
  const GetZeroTrustAccessApplicationsResultPolicy({
    required this.approvalGroups,
    required this.approvalRequired,
    required this.connectionRules,
    required this.createdAt,
    required this.decision,
    required this.excludes,
    required this.id,
    required this.includes,
    required this.isolationRequired,
    required this.mfaConfig,
    required this.name,
    required this.precedence,
    required this.purposeJustificationPrompt,
    required this.purposeJustificationRequired,
    required this.requires,
    required this.sessionDuration,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalGroups': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultPolicyApprovalGroup>, List<Map<String, dynamic>>>(approvalGroups, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultPolicyApprovalGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approvalRequired': approvalRequired,
      'connectionRules': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyConnectionRules, Map<String, dynamic>>(connectionRules, (value) => value.toMap()),
      'createdAt': createdAt,
      'decision': decision,
      'excludes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultPolicyExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultPolicyExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'includes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultPolicyInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultPolicyInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isolationRequired': isolationRequired,
      'mfaConfig': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': name,
      'precedence': precedence,
      'purposeJustificationPrompt': purposeJustificationPrompt,
      'purposeJustificationRequired': purposeJustificationRequired,
      'requires': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultPolicyRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultPolicyRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionDuration': sessionDuration,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicy(
      approvalGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultPolicyApprovalGroup>(map['approvalGroups']!, (value) => GetZeroTrustAccessApplicationsResultPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>()))),
      approvalRequired: pulumi.Input.fromValue(map['approvalRequired'] as bool),
      connectionRules: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyConnectionRules.fromMap((map['connectionRules']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      decision: pulumi.Input.fromValue(map['decision'] as String),
      excludes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultPolicyExclude>(map['excludes']!, (value) => GetZeroTrustAccessApplicationsResultPolicyExclude.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultPolicyInclude>(map['includes']!, (value) => GetZeroTrustAccessApplicationsResultPolicyInclude.fromMap((value as Map).cast<String, dynamic>()))),
      isolationRequired: pulumi.Input.fromValue(map['isolationRequired'] as bool),
      mfaConfig: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyMfaConfig.fromMap((map['mfaConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: pulumi.Input.fromValue((map['precedence'] as num).toInt()),
      purposeJustificationPrompt: pulumi.Input.fromValue(map['purposeJustificationPrompt'] as String),
      purposeJustificationRequired: pulumi.Input.fromValue(map['purposeJustificationRequired'] as bool),
      requires: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultPolicyRequire>(map['requires']!, (value) => GetZeroTrustAccessApplicationsResultPolicyRequire.fromMap((value as Map).cast<String, dynamic>()))),
      sessionDuration: pulumi.Input.fromValue(map['sessionDuration'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
