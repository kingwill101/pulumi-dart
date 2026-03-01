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
    pulumi.Output<OrganizationPolicyBooleanPolicy>? booleanPolicy,
    pulumi.Output<String>? constraint,
    pulumi.Output<String>? etag,
    pulumi.Output<OrganizationPolicyListPolicy>? listPolicy,
    pulumi.Output<String>? project,
    pulumi.Output<OrganizationPolicyRestorePolicy>? restorePolicy,
    pulumi.Output<String>? updateTime,
    pulumi.Output<int>? version,
  }) :
      booleanPolicy = pulumi.Input.asOptionalInput<OrganizationPolicyBooleanPolicy>(booleanPolicy),
      constraint = pulumi.Input.asOptionalInput<String>(constraint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      listPolicy = pulumi.Input.asOptionalInput<OrganizationPolicyListPolicy>(listPolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      restorePolicy = pulumi.Input.asOptionalInput<OrganizationPolicyRestorePolicy>(restorePolicy),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      booleanPolicy: map['booleanPolicy'] == null ? null : pulumi.Output.create<OrganizationPolicyBooleanPolicy>(OrganizationPolicyBooleanPolicy.fromMap((map['booleanPolicy'] as Map).cast<String, dynamic>())),
      constraint: map['constraint'] == null ? null : pulumi.Output.create<String>(map['constraint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      listPolicy: map['listPolicy'] == null ? null : pulumi.Output.create<OrganizationPolicyListPolicy>(OrganizationPolicyListPolicy.fromMap((map['listPolicy'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      restorePolicy: map['restorePolicy'] == null ? null : pulumi.Output.create<OrganizationPolicyRestorePolicy>(OrganizationPolicyRestorePolicy.fromMap((map['restorePolicy'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

