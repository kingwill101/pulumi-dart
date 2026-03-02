// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_boolean_policy.dart';
import 'organization_policy_list_policy.dart';
import 'organization_policy_restore_policy.dart';

/// {@template pulumi_folder_organization_policy_organization_policy_args_doc}
/// The set of arguments for OrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_folder_organization_policy_organization_policy_args_doc}
class OrganizationPolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final pulumi.Input<OrganizationPolicyBooleanPolicy>? booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;
  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It
  /// can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<OrganizationPolicyListPolicy>? listPolicy;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<OrganizationPolicyRestorePolicy>? restorePolicy;
  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [OrganizationPolicyArgs].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [folder] The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [version] Version of the Policy. Default version is 0.
  OrganizationPolicyArgs({
    this.booleanPolicy,
    required this.constraint,
    required this.folder,
    this.listPolicy,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicy, (value) => value.toMap()),
      'constraint': constraint,
      'folder': folder,
      'listPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyListPolicy, Map<String, dynamic>>(listPolicy, (value) => value.toMap()),
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory OrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyArgs(
      booleanPolicy: map['booleanPolicy'] == null ? null : (OrganizationPolicyBooleanPolicy.fromMap((map['booleanPolicy']! as Map).cast<String, dynamic>())).input(),
      constraint: (map['constraint'] as String).input(),
      folder: (map['folder'] as String).input(),
      listPolicy: map['listPolicy'] == null ? null : (OrganizationPolicyListPolicy.fromMap((map['listPolicy']! as Map).cast<String, dynamic>())).input(),
      restorePolicy: map['restorePolicy'] == null ? null : (OrganizationPolicyRestorePolicy.fromMap((map['restorePolicy']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

