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
    required pulumi.Output<String> location,
    required pulumi.Output<String> membershipId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> rbacrolebindingId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      project = pulumi.Input.asOptionalInput<String>(project),
      rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rbacrolebindingId: pulumi.Output.create<String>(map['rbacrolebindingId'] as String),
    );
  }
}

