// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_membership_rbac_role_binding_args_doc}
/// Arguments for getMembershipRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_membership_rbac_role_binding_args_doc}
class GetMembershipRbacRoleBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;

  /// Creates a new [GetMembershipRbacRoleBindingArgs].
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  GetMembershipRbacRoleBindingArgs({
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

  factory GetMembershipRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipRbacRoleBindingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rbacrolebindingId: pulumi.Input.fromValue(
        map['rbacrolebindingId'] as String,
      ),
    );
  }
}
