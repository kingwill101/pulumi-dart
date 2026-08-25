// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_rbac_role_binding_role.dart';

/// {@template pulumi_gkehub_scope_rbac_role_binding_scope_rbac_role_binding_args_doc}
/// The set of arguments for ScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_scope_rbac_role_binding_scope_rbac_role_binding_args_doc}
class ScopeRbacRoleBindingArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String?>? group;
  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
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
  final pulumi.Input<String?>? user;

  /// Creates a new [ScopeRbacRoleBindingArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [group] Principal that is be authorized in the cluster (at least of one the oneof
  /// [labels] Labels for this ScopeRBACRoleBinding.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] Role to bind to the principal.
  /// [scopeId] Id of the scope
  /// [scopeRbacRoleBindingId] The client-provided identifier of the RBAC Role Binding.
  /// [user] Principal that is be authorized in the cluster (at least of one the oneof
  const ScopeRbacRoleBindingArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(ScopeRbacRoleBindingRole.fromMap((map['role']! as Map).cast<String, dynamic>())),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      scopeRbacRoleBindingId: pulumi.Input.fromValue(map['scopeRbacRoleBindingId'] as String),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
