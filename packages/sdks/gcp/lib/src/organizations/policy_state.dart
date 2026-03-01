// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_boolean_policy.dart';
import 'policy_list_policy.dart';
import 'policy_restore_policy.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  final pulumi.Input<PolicyBooleanPolicy>? booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String>? constraint;
  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  final pulumi.Input<String>? etag;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<PolicyListPolicy>? listPolicy;
  /// The numeric ID of the organization to set the policy for.
  final pulumi.Input<String>? orgId;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<PolicyRestorePolicy>? restorePolicy;
  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  final pulumi.Input<String>? updateTime;
  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [PolicyState].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [etag] (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [orgId] The numeric ID of the organization to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [updateTime] (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  /// [version] Version of the Policy. Default version is 0.
  PolicyState({
    pulumi.Output<PolicyBooleanPolicy>? booleanPolicy,
    pulumi.Output<String>? constraint,
    pulumi.Output<String>? etag,
    pulumi.Output<PolicyListPolicy>? listPolicy,
    pulumi.Output<String>? orgId,
    pulumi.Output<PolicyRestorePolicy>? restorePolicy,
    pulumi.Output<String>? updateTime,
    pulumi.Output<int>? version,
  }) :
      booleanPolicy = pulumi.Input.asOptionalInput<PolicyBooleanPolicy>(booleanPolicy),
      constraint = pulumi.Input.asOptionalInput<String>(constraint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      listPolicy = pulumi.Input.asOptionalInput<PolicyListPolicy>(listPolicy),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      restorePolicy = pulumi.Input.asOptionalInput<PolicyRestorePolicy>(restorePolicy),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicy, (value) => value.toMap()),
      'constraint': ?constraint,
      'etag': ?etag,
      'listPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyListPolicy, Map<String, dynamic>>(listPolicy, (value) => value.toMap()),
      'orgId': ?orgId,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<PolicyRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      booleanPolicy: map['booleanPolicy'] == null ? null : pulumi.Output.create<PolicyBooleanPolicy>(PolicyBooleanPolicy.fromMap((map['booleanPolicy'] as Map).cast<String, dynamic>())),
      constraint: map['constraint'] == null ? null : pulumi.Output.create<String>(map['constraint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      listPolicy: map['listPolicy'] == null ? null : pulumi.Output.create<PolicyListPolicy>(PolicyListPolicy.fromMap((map['listPolicy'] as Map).cast<String, dynamic>())),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      restorePolicy: map['restorePolicy'] == null ? null : pulumi.Output.create<PolicyRestorePolicy>(PolicyRestorePolicy.fromMap((map['restorePolicy'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

