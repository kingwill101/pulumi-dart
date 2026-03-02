// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_scope_rbac_role_binding_args_doc}
/// Arguments for getScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_scope_rbac_role_binding_args_doc}
class GetScopeRbacRoleBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeRbacRoleBindingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  /// [scopeId] Required.
  GetScopeRbacRoleBindingArgs({
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

  factory GetScopeRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeRbacRoleBindingArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rbacrolebindingId: (map['rbacrolebindingId'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
    );
  }
}

