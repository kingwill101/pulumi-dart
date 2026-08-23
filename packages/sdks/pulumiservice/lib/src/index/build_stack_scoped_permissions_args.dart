// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_build_stack_scoped_permissions_args_doc}
/// Arguments for buildStackScopedPermissions.
/// {@endtemplate}
/// {@macro pulumi_index_build_stack_scoped_permissions_args_doc}
class BuildStackScopedPermissionsArgs {
  /// The set of `stack:*` scopes to grant on the target stack (e.g. `stack:read`, `stack:edit`, `stack:admin`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  final pulumi.Input<List<String>> permissions;
  /// The target stack's opaque Pulumi Cloud identifier (not the `organization/project/stack` triple).
  final pulumi.Input<String> stackId;

  /// Creates a new [BuildStackScopedPermissionsArgs].
  /// [permissions] The set of `stack:*` scopes to grant on the target stack (e.g. `stack:read`, `stack:edit`, `stack:admin`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  /// [stackId] The target stack's opaque Pulumi Cloud identifier (not the `organization/project/stack` triple).
  const BuildStackScopedPermissionsArgs({
    required this.permissions,
    required this.stackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'stackId': stackId,
    };
  }

  factory BuildStackScopedPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return BuildStackScopedPermissionsArgs(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
    );
  }
}
