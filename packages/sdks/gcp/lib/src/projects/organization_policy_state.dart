// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_boolean_policy.dart';
import 'organization_policy_list_policy.dart';
import 'organization_policy_restore_policy.dart';

/// Input properties used for looking up and filtering OrganizationPolicy resources.
class OrganizationPolicyState {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final pulumi.Input<OrganizationPolicyBooleanPolicy>? booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String>? constraint;
  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  final pulumi.Input<String>? etag;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<OrganizationPolicyListPolicy>? listPolicy;
  /// The project id of the project to set the policy for.
  final pulumi.Input<String>? project;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<OrganizationPolicyRestorePolicy>? restorePolicy;
  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  final pulumi.Input<String>? updateTime;
  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [OrganizationPolicyState].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [etag] (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [project] The project id of the project to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [updateTime] (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  /// [version] Version of the Policy. Default version is 0.
  OrganizationPolicyState({
    this.booleanPolicy,
    this.constraint,
    this.etag,
    this.listPolicy,
    this.project,
    this.restorePolicy,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicy, (value) => value.toMap()),
      'constraint': ?constraint,
      'etag': ?etag,
      'listPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyListPolicy, Map<String, dynamic>>(listPolicy, (value) => value.toMap()),
      'project': ?project,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory OrganizationPolicyState.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyState(
      booleanPolicy: map['booleanPolicy'] == null ? null : (OrganizationPolicyBooleanPolicy.fromMap((map['booleanPolicy'] as Map).cast<String, dynamic>())).input(),
      constraint: map['constraint'] == null ? null : (map['constraint'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      listPolicy: map['listPolicy'] == null ? null : (OrganizationPolicyListPolicy.fromMap((map['listPolicy'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      restorePolicy: map['restorePolicy'] == null ? null : (OrganizationPolicyRestorePolicy.fromMap((map['restorePolicy'] as Map).cast<String, dynamic>())).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as int).input(),
    );
  }
}

