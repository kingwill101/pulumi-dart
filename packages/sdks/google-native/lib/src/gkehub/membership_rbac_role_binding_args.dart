// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_gkehub_v1alpha.dart';

/// {@template pulumi_gkehub_v1alpha_membership_rbac_role_binding_args_doc}
/// The set of arguments for MembershipRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_membership_rbac_role_binding_args_doc}
class MembershipRbacRoleBindingArgs {
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;

  /// Optional. Labels for this RBACRolebinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> membershipId;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> rbacrolebindingId;

  /// Role to bind to the principal
  final pulumi.Input<RoleGkehubV1alpha> role;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [MembershipRbacRoleBindingArgs].
  /// [group] group is the group, as seen by the kubernetes cluster.
  /// [labels] Optional. Labels for this RBACRolebinding.
  /// [location] Optional.
  /// [membershipId] Required.
  /// [name] The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  /// [project] Optional.
  /// [rbacrolebindingId] Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [role] Role to bind to the principal
  /// [user] user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  MembershipRbacRoleBindingArgs({
    this.group,
    this.labels,
    this.location,
    required this.membershipId,
    this.name,
    this.project,
    required this.rbacrolebindingId,
    required this.role,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'labels': ?labels,
      'location': ?location,
      'membershipId': membershipId,
      'name': ?name,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'role':
          pulumi.Input.mapInputValue<RoleGkehubV1alpha, Map<String, dynamic>>(
            role,
            (value) => value.toMap(),
          ),
      'user': ?user,
    };
  }

  factory MembershipRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingArgs(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rbacrolebindingId: pulumi.Input.fromValue(
        map['rbacrolebindingId'] as String,
      ),
      role: pulumi.Input.fromValue(
        RoleGkehubV1alpha.fromMap(
          (map['role']! as Map).cast<String, dynamic>(),
        ),
      ),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
