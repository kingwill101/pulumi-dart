// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_membership_rbac_role_binding_gkehub_v1beta_args_doc}
/// Arguments for getMembershipRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_membership_rbac_role_binding_gkehub_v1beta_args_doc}
class GetMembershipRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;

  /// Creates a new [GetMembershipRbacRoleBindingGkehubV1betaArgs].
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  GetMembershipRbacRoleBindingGkehubV1betaArgs({
    required this.location,
    required this.membershipId,
    this.project,
    required this.rbacrolebindingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipId': membershipId,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
    };
  }

  factory GetMembershipRbacRoleBindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipRbacRoleBindingGkehubV1betaArgs(
      location: (map['location'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rbacrolebindingId: (map['rbacrolebindingId'] as String).input(),
    );
  }
}

