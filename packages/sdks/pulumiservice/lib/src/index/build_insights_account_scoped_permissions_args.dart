// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_build_insights_account_scoped_permissions_args_doc}
/// Arguments for buildInsightsAccountScopedPermissions.
/// {@endtemplate}
/// {@macro pulumi_index_build_insights_account_scoped_permissions_args_doc}
class BuildInsightsAccountScopedPermissionsArgs {
  /// The target insights account's identifier. Use the `insightsAccountId` output of an `InsightsAccount` resource or the `getInsightsAccount` data source.
  final pulumi.Input<String> insightsAccountId;
  /// The set of `insights-account:*` scopes to grant on the target account. Discover valid scope names via the `getOrganizationRoleScopes` data source.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [BuildInsightsAccountScopedPermissionsArgs].
  /// [insightsAccountId] The target insights account's identifier. Use the `insightsAccountId` output of an `InsightsAccount` resource or the `getInsightsAccount` data source.
  /// [permissions] The set of `insights-account:*` scopes to grant on the target account. Discover valid scope names via the `getOrganizationRoleScopes` data source.
  const BuildInsightsAccountScopedPermissionsArgs({
    required this.insightsAccountId,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightsAccountId': insightsAccountId,
      'permissions': permissions,
    };
  }

  factory BuildInsightsAccountScopedPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return BuildInsightsAccountScopedPermissionsArgs(
      insightsAccountId: pulumi.Input.fromValue(map['insightsAccountId'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
