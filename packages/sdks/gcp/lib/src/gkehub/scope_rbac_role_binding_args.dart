// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_rbac_role_binding_role.dart';

/// {@template pulumi_gkehub_scope_rbac_role_binding_scope_rbac_role_binding_args_doc}
/// The set of arguments for ScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_scope_rbac_role_binding_scope_rbac_role_binding_args_doc}
class ScopeRbacRoleBindingArgs {
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;
  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Role to bind to the principal.
  /// Structure is documented below.
  final pulumi.Input<ScopeRbacRoleBindingRole> role;
  /// Id of the scope
  final pulumi.Input<String> scopeId;
  /// The client-provided identifier of the RBAC Role Binding.
  final pulumi.Input<String> scopeRbacRoleBindingId;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [ScopeRbacRoleBindingArgs].
  /// [group] Principal that is be authorized in the cluster (at least of one the oneof
  /// [labels] Labels for this ScopeRBACRoleBinding.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] Role to bind to the principal.
  /// [scopeId] Id of the scope
  /// [scopeRbacRoleBindingId] The client-provided identifier of the RBAC Role Binding.
  /// [user] Principal that is be authorized in the cluster (at least of one the oneof
  ScopeRbacRoleBindingArgs({
    this.group,
    this.labels,
    this.project,
    required this.role,
    required this.scopeId,
    required this.scopeRbacRoleBindingId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'labels': ?labels,
      'project': ?project,
      'role': pulumi.Input.mapInputValue<ScopeRbacRoleBindingRole, Map<String, dynamic>>(role, (value) => value.toMap()),
      'scopeId': scopeId,
      'scopeRbacRoleBindingId': scopeRbacRoleBindingId,
      'user': ?user,
    };
  }

  factory ScopeRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingArgs(
      group: map['group'] == null ? null : (map['group'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (ScopeRbacRoleBindingRole.fromMap((map['role'] as Map).cast<String, dynamic>())).input(),
      scopeId: (map['scopeId'] as String).input(),
      scopeRbacRoleBindingId: (map['scopeRbacRoleBindingId'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

