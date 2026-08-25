// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_boolean_policy.dart';
import 'organization_policy_list_policy.dart';
import 'organization_policy_restore_policy.dart';

/// {@template pulumi_projects_organization_policy_organization_policy_args_doc}
/// The set of arguments for OrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_projects_organization_policy_organization_policy_args_doc}
class OrganizationPolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final pulumi.Input<OrganizationPolicyBooleanPolicy?>? booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<OrganizationPolicyListPolicy?>? listPolicy;
  /// The project id of the project to set the policy for.
  final pulumi.Input<String> project;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// &gt; **Note:** If none of [`booleanPolicy`, `listPolicy`, `restorePolicy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  final pulumi.Input<OrganizationPolicyRestorePolicy?>? restorePolicy;
  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int?>? version;

  /// Creates a new [OrganizationPolicyArgs].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [project] The project id of the project to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [version] Version of the Policy. Default version is 0.
  const OrganizationPolicyArgs({
    this.booleanPolicy,
    required this.constraint,
    this.deletionPolicy,
    this.listPolicy,
    required this.project,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicy, (value) => value.toMap()),
      'constraint': constraint,
      'deletionPolicy': ?deletionPolicy,
      'listPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyListPolicy, Map<String, dynamic>>(listPolicy, (value) => value.toMap()),
      'project': project,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory OrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyArgs(
      booleanPolicy: (() { final guardedValue = map['booleanPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationPolicyBooleanPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      constraint: pulumi.Input.fromValue(map['constraint'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listPolicy: (() { final guardedValue = map['listPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationPolicyListPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
      restorePolicy: (() { final guardedValue = map['restorePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationPolicyRestorePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
