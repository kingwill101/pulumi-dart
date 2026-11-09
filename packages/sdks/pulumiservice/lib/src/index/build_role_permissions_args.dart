// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_organization_scope.dart';
import 'role_account_rule.dart';
import 'role_environment_rule.dart';
import 'role_stack_rule.dart';

/// {@template pulumi_index_build_role_permissions_args_doc}
/// Arguments for buildRolePermissions.
/// {@endtemplate}
/// {@macro pulumi_index_build_role_permissions_args_doc}
class BuildRolePermissionsArgs {
  /// Grants on cloud accounts (`InsightsAccount`).
  final pulumi.Input<List<RoleAccountRule>?>? accountRules;
  /// Output of the other permission helpers to include in the role.
  final pulumi.Input<List<Map<String, dynamic>>?>? additionalEntries;
  /// Grants on ESC environments.
  final pulumi.Input<List<RoleEnvironmentRule>?>? environmentRules;
  /// Organization-level scopes to grant (e.g. `team:read`).
  final pulumi.Input<List<RbacOrganizationScope>?>? organizationScopes;
  /// Grants on stacks.
  final pulumi.Input<List<RoleStackRule>?>? stackRules;

  /// Creates a new [BuildRolePermissionsArgs].
  /// [accountRules] Grants on cloud accounts (`InsightsAccount`).
  /// [additionalEntries] Output of the other permission helpers to include in the role.
  /// [environmentRules] Grants on ESC environments.
  /// [organizationScopes] Organization-level scopes to grant (e.g. `team:read`).
  /// [stackRules] Grants on stacks.
  const BuildRolePermissionsArgs({
    this.accountRules,
    this.additionalEntries,
    this.environmentRules,
    this.organizationScopes,
    this.stackRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountRules': ?pulumi.Input.mapOptionalInputValue<List<RoleAccountRule>, List<Map<String, dynamic>>>(accountRules, (value) => pulumi.Input.encodeList<RoleAccountRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalEntries': ?additionalEntries,
      'environmentRules': ?pulumi.Input.mapOptionalInputValue<List<RoleEnvironmentRule>, List<Map<String, dynamic>>>(environmentRules, (value) => pulumi.Input.encodeList<RoleEnvironmentRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'organizationScopes': ?pulumi.Input.mapOptionalInputValue<List<RbacOrganizationScope>, List<String>>(organizationScopes, (value) => pulumi.Input.encodeList<RbacOrganizationScope, String>(value, (value) => value.wireValue)),
      'stackRules': ?pulumi.Input.mapOptionalInputValue<List<RoleStackRule>, List<Map<String, dynamic>>>(stackRules, (value) => pulumi.Input.encodeList<RoleStackRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildRolePermissionsArgs.fromMap(Map<String, dynamic> map) {
    return BuildRolePermissionsArgs(
      accountRules: (() { final guardedValue = map['accountRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoleAccountRule>(guardedValue, (value) => RoleAccountRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalEntries: (() { final guardedValue = map['additionalEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, dynamic>>(guardedValue, (value) => (value as Map).cast<String, dynamic>())); })(),
      environmentRules: (() { final guardedValue = map['environmentRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoleEnvironmentRule>(guardedValue, (value) => RoleEnvironmentRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      organizationScopes: (() { final guardedValue = map['organizationScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RbacOrganizationScope>(guardedValue, (value) => RbacOrganizationScope.fromValue(value as String))); })(),
      stackRules: (() { final guardedValue = map['stackRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoleStackRule>(guardedValue, (value) => RoleStackRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
