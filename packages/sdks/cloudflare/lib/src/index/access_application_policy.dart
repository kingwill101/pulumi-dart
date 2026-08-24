// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_policy_connection_rules.dart';
import 'access_application_policy_exclude.dart';
import 'access_application_policy_include.dart';
import 'access_application_policy_mfa_config.dart';
import 'access_application_policy_require.dart';

class AccessApplicationPolicy {
  /// The rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<AccessApplicationPolicyConnectionRules?>? connectionRules;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  final pulumi.Input<String?>? decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<AccessApplicationPolicyExclude>?>? excludes;
  /// The UUID of the policy
  final pulumi.Input<String?>? id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<AccessApplicationPolicyInclude>?>? includes;
  /// Configures multi-factor authentication (MFA) settings for this policy. For infrastructure applications only `sshPivKey` is a supported authenticator; for other application types use `totp`, `biometrics`, or `securityKey`.
  final pulumi.Input<AccessApplicationPolicyMfaConfig?>? mfaConfig;
  /// The name of the Access policy.
  final pulumi.Input<String?>? name;
  /// The order of execution for this policy. Must be unique for each policy within an app.
  final pulumi.Input<int?>? precedence;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  final pulumi.Input<List<AccessApplicationPolicyRequire>?>? requires;

  /// Creates a new [AccessApplicationPolicy].
  /// [connectionRules] The rules that define how users may connect to the targets secured by your application.
  /// [decision] The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// [excludes] Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  /// [id] The UUID of the policy
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for this policy. For infrastructure applications only `sshPivKey` is a supported authenticator; for other application types use `totp`, `biometrics`, or `securityKey`.
  /// [name] The name of the Access policy.
  /// [precedence] The order of execution for this policy. Must be unique for each policy within an app.
  /// [requires] Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  const AccessApplicationPolicy({
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
      'connectionRules': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyConnectionRules, Map<String, dynamic>>(connectionRules, (value) => value.toMap()),
      'decision': ?decision,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationPolicyExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<AccessApplicationPolicyExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'includes': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationPolicyInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<AccessApplicationPolicyInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': ?name,
      'precedence': ?precedence,
      'requires': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationPolicyRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<AccessApplicationPolicyRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessApplicationPolicy.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicy(
      connectionRules: (() { final guardedValue = map['connectionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      decision: (() { final guardedValue = map['decision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationPolicyExclude>(guardedValue, (value) => AccessApplicationPolicyExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationPolicyInclude>(guardedValue, (value) => AccessApplicationPolicyInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationPolicyRequire>(guardedValue, (value) => AccessApplicationPolicyRequire.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
