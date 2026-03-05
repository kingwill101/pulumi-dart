// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_rbac_role_binding_role.dart';

/// {@template pulumi_gkehub_membership_rbac_role_binding_membership_rbac_role_binding_args_doc}
/// The set of arguments for MembershipRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_membership_rbac_role_binding_membership_rbac_role_binding_args_doc}
class MembershipRbacRoleBindingArgs {
  /// Location of the Membership
  final pulumi.Input<String> location;
  /// Id of the membership
  final pulumi.Input<String> membershipId;
  /// The client-provided identifier of the RBAC Role Binding.
  final pulumi.Input<String> membershipRbacRoleBindingId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Role to bind to the principal.
  /// Structure is documented below.
  final pulumi.Input<MembershipRbacRoleBindingRole> role;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final pulumi.Input<String> user;

  /// Creates a new [MembershipRbacRoleBindingArgs].
  /// [location] Location of the Membership
  /// [membershipId] Id of the membership
  /// [membershipRbacRoleBindingId] The client-provided identifier of the RBAC Role Binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] Role to bind to the principal.
  /// [user] Principal that is be authorized in the cluster (at least of one the oneof
  MembershipRbacRoleBindingArgs({
    required this.location,
    required this.membershipId,
    required this.membershipRbacRoleBindingId,
    this.project,
    required this.role,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'membershipRbacRoleBindingId': membershipRbacRoleBindingId,
      'project': ?project,
      'role': pulumi.Input.mapInputValue<MembershipRbacRoleBindingRole, Map<String, dynamic>>(role, (value) => value.toMap()),
      'user': user,
    };
  }

  factory MembershipRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      membershipRbacRoleBindingId: pulumi.Input.fromValue(map['membershipRbacRoleBindingId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(MembershipRbacRoleBindingRole.fromMap((map['role']! as Map).cast<String, dynamic>())),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

