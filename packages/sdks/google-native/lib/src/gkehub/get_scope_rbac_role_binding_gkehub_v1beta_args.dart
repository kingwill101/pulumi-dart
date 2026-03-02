// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_scope_rbac_role_binding_gkehub_v1beta_args_doc}
/// Arguments for getScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_scope_rbac_role_binding_gkehub_v1beta_args_doc}
class GetScopeRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeRbacRoleBindingGkehubV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  /// [scopeId] Required.
  GetScopeRbacRoleBindingGkehubV1betaArgs({
    required this.location,
    this.project,
    required this.rbacrolebindingId,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'scopeId': scopeId,
    };
  }

  factory GetScopeRbacRoleBindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeRbacRoleBindingGkehubV1betaArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rbacrolebindingId: (map['rbacrolebindingId'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
    );
  }
}

