// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_build_environment_scoped_permissions_args_doc}
/// Arguments for buildEnvironmentScopedPermissions.
/// {@endtemplate}
/// {@macro pulumi_index_build_environment_scoped_permissions_args_doc}
class BuildEnvironmentScopedPermissionsArgs {
  /// The target environment's UUID. Use the `environmentId` output of an `Environment` resource or the `getEnvironment` data source.
  final pulumi.Input<String> environmentId;
  /// The set of `environment:*` scopes to grant on the target environment (e.g. `environment:read`, `environment:open`, `environment:update`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [BuildEnvironmentScopedPermissionsArgs].
  /// [environmentId] The target environment's UUID. Use the `environmentId` output of an `Environment` resource or the `getEnvironment` data source.
  /// [permissions] The set of `environment:*` scopes to grant on the target environment (e.g. `environment:read`, `environment:open`, `environment:update`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  const BuildEnvironmentScopedPermissionsArgs({
    required this.environmentId,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'permissions': permissions,
    };
  }

  factory BuildEnvironmentScopedPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return BuildEnvironmentScopedPermissionsArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
