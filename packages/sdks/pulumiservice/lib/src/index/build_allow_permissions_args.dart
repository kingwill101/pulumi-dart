// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_build_allow_permissions_args_doc}
/// Arguments for buildAllowPermissions.
/// {@endtemplate}
/// {@macro pulumi_index_build_allow_permissions_args_doc}
class BuildAllowPermissionsArgs {
  /// The set of scopes to grant globally (e.g. `stack:read`, `environment:open`, `organization:billingManager`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [BuildAllowPermissionsArgs].
  /// [permissions] The set of scopes to grant globally (e.g. `stack:read`, `environment:open`, `organization:billingManager`). Discover valid scope names via the `getOrganizationRoleScopes` data source.
  const BuildAllowPermissionsArgs({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory BuildAllowPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return BuildAllowPermissionsArgs(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
