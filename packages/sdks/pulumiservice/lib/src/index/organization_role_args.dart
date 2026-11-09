// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_role_args_doc}
/// The set of arguments for OrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_index_organization_role_args_doc}
class OrganizationRoleArgs {
  /// Human-readable description of what the role grants.
  final pulumi.Input<String?>? description;
  /// The role's display name. Must be unique within the organization.
  final pulumi.Input<String> name;
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The role's permission descriptor tree.
  ///
  /// **Build this with the helper functions.** They construct the tree for you and validate it before anything reaches Pulumi Cloud:
  /// - `buildRolePermissions`: start here. It builds a complete role from organization-level scopes and `stackRules`, `environmentRules`, and `accountRules` (cloud accounts: Discovery; `InsightsAccount` in the API and this provider). Each rule grants scopes on every entity of its type, on one specific entity, or on entities matching tags. Each rule list accepts only scopes for its own entity type, so a stack scope can't end up on an environment rule.
  ///
  /// `buildAllowPermissions`, `buildStackScopedPermissions`, `buildEnvironmentScopedPermissions`, and `buildInsightsAccountScopedPermissions` are deprecated: `buildRolePermissions` does what they do with typed scopes. Look up stack IDs with `getStack`, environment IDs with `getEnvironment`, and cloud account IDs with `getInsightsAccount`. To assign the role, use `TeamRoleAssignment` or `OrganizationMember.roleId`.
  ///
  /// **Permission sets** (such as the built-in Stack Write) aren't supported by the helpers yet. Grant the scopes they contain instead; `getOrganizationRoleScopes` lists the available scopes.
  ///
  /// **When Pulumi Cloud adds a scope** that this provider's enums don't list yet, upgrade the provider to grant it.
  ///
  /// Note: the helpers' output requires pulumi 3.235.0 or later (pulumi/pulumi#22834). Earlier runtimes drop part of it at the SDK boundary; the Python SDK pins the minimum runtime version automatically.
  final pulumi.Input<Map<String, dynamic>> permissions;
  /// The resource type the role's permissions apply to. Defaults to `global` (the org-wide role that can be assigned to members and teams). Other valid values: `stack`, `environment`, `insights-account`.
  final pulumi.Input<String?>? resourceType;

  /// Creates a new [OrganizationRoleArgs].
  /// [description] Human-readable description of what the role grants.
  /// [name] The role's display name. Must be unique within the organization.
  /// [organizationName] The Pulumi Cloud organization name.
  /// [permissions] The role's permission descriptor tree.
  /// [resourceType] The resource type the role's permissions apply to. Defaults to `global` (the org-wide role that can be assigned to members and teams). Other valid values: `stack`, `environment`, `insights-account`.
  const OrganizationRoleArgs({
    this.description,
    required this.name,
    required this.organizationName,
    required this.permissions,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'organizationName': organizationName,
      'permissions': permissions,
      'resourceType': ?resourceType,
    };
  }

  factory OrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationRoleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as Map).cast<String, dynamic>()),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
