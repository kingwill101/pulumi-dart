// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_policy_connection_rules.dart';
import 'zero_trust_access_application_policy_exclude.dart';
import 'zero_trust_access_application_policy_include.dart';
import 'zero_trust_access_application_policy_mfa_config.dart';
import 'zero_trust_access_application_policy_require.dart';

class ZeroTrustAccessApplicationPolicy {
  /// The rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<ZeroTrustAccessApplicationPolicyConnectionRules?>? connectionRules;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  final pulumi.Input<String?>? decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<ZeroTrustAccessApplicationPolicyExclude>?>? excludes;
  /// The UUID of the policy
  final pulumi.Input<String?>? id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<ZeroTrustAccessApplicationPolicyInclude>?>? includes;
  /// Configures multi-factor authentication (MFA) settings for this policy. For infrastructure applications only `sshPivKey` is a supported authenticator; for other application types use `totp`, `biometrics`, or `securityKey`.
  final pulumi.Input<ZeroTrustAccessApplicationPolicyMfaConfig?>? mfaConfig;
  /// The name of the Access policy.
  final pulumi.Input<String?>? name;
  /// The order of execution for this policy. Must be unique for each policy within an app.
  final pulumi.Input<int?>? precedence;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  final pulumi.Input<List<ZeroTrustAccessApplicationPolicyRequire>?>? requires;

  /// Creates a new [ZeroTrustAccessApplicationPolicy].
  /// [connectionRules] The rules that define how users may connect to the targets secured by your application.
  /// [decision] The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// [excludes] Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  /// [id] The UUID of the policy
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for this policy. For infrastructure applications only `sshPivKey` is a supported authenticator; for other application types use `totp`, `biometrics`, or `securityKey`.
  /// [name] The name of the Access policy.
  /// [precedence] The order of execution for this policy. Must be unique for each policy within an app.
  /// [requires] Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  const ZeroTrustAccessApplicationPolicy({
    this.connectionRules,
    this.decision,
    this.excludes,
    this.id,
    this.includes,
    this.mfaConfig,
    this.name,
    this.precedence,
    this.requires,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionRules': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyConnectionRules, Map<String, dynamic>>(connectionRules, (value) => value.toMap()),
      'decision': ?decision,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessApplicationPolicyExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<ZeroTrustAccessApplicationPolicyExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'includes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessApplicationPolicyInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<ZeroTrustAccessApplicationPolicyInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': ?name,
      'precedence': ?precedence,
      'requires': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessApplicationPolicyRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<ZeroTrustAccessApplicationPolicyRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustAccessApplicationPolicy.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicy(
      connectionRules: (() { final guardedValue = map['connectionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      decision: (() { final guardedValue = map['decision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessApplicationPolicyExclude>(guardedValue, (value) => ZeroTrustAccessApplicationPolicyExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessApplicationPolicyInclude>(guardedValue, (value) => ZeroTrustAccessApplicationPolicyInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessApplicationPolicyRequire>(guardedValue, (value) => ZeroTrustAccessApplicationPolicyRequire.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
