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
  const GetScopeRbacRoleBindingArgs({
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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rbacrolebindingId: pulumi.Input.fromValue(map['rbacrolebindingId'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
