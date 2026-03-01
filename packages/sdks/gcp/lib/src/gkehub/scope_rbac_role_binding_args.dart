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
    pulumi.Output<String>? group,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    required pulumi.Output<ScopeRbacRoleBindingRole> role,
    required pulumi.Output<String> scopeId,
    required pulumi.Output<String> scopeRbacRoleBindingId,
    pulumi.Output<String>? user,
  }) :
      group = pulumi.Input.asOptionalInput<String>(group),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<ScopeRbacRoleBindingRole>(role),
      scopeId = pulumi.Input.asInput<String>(scopeId),
      scopeRbacRoleBindingId = pulumi.Input.asInput<String>(scopeRbacRoleBindingId),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<ScopeRbacRoleBindingRole>(ScopeRbacRoleBindingRole.fromMap((map['role'] as Map).cast<String, dynamic>())),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
      scopeRbacRoleBindingId: pulumi.Output.create<String>(map['scopeRbacRoleBindingId'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

