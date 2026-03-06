// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_boolean_policy.dart';
import 'policy_list_policy.dart';
import 'policy_restore_policy.dart';

/// {@template pulumi_organizations_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_organizations_policy_policy_args_doc}
class PolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  final pulumi.Input<PolicyBooleanPolicy>? booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<PolicyListPolicy>? listPolicy;
  /// The numeric ID of the organization to set the policy for.
  final pulumi.Input<String> orgId;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// &gt; **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<PolicyRestorePolicy>? restorePolicy;
  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [PolicyArgs].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [orgId] The numeric ID of the organization to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [version] Version of the Policy. Default version is 0.
  const PolicyArgs({
    this.booleanPolicy,
    required this.constraint,
    this.listPolicy,
    required this.orgId,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicy, (value) => value.toMap()),
      'constraint': constraint,
      'listPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyListPolicy, Map<String, dynamic>>(listPolicy, (value) => value.toMap()),
      'orgId': orgId,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<PolicyRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      booleanPolicy: (() { final guardedValue = map['booleanPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBooleanPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      constraint: pulumi.Input.fromValue(map['constraint'] as String),
      listPolicy: (() { final guardedValue = map['listPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyListPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      restorePolicy: (() { final guardedValue = map['restorePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyRestorePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

