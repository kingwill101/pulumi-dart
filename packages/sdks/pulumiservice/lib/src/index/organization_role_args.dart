// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_role_args_doc}
/// The set of arguments for OrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_index_organization_role_args_doc}
class OrganizationRoleArgs {
  /// Human-readable description of what the role grants.
  final pulumi.Input<String>? description;
  /// The role's display name. Must be unique within the organization.
  final pulumi.Input<String> name;
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The role's permission descriptor tree, expressed in the Pulumi Cloud wire grammar. The provider exposes the descriptor as `map[string]Any` and passes it through verbatim — the wire-format `__type` discriminator is used at every level (SDK and API alike).
  ///
  /// Common top-level descriptors:
  /// - `PermissionDescriptorAllow` — `{__type: "PermissionDescriptorAllow", permissions: ["&lt;scope&gt;", ...]}` grants the listed scopes.
  /// - `PermissionDescriptorGroup` — `{__type: "PermissionDescriptorGroup", entries: [{__type: "PermissionDescriptorAllow", ...}, ...]}` composes multiple descriptors; the role grants the union of every entry.
  /// - `PermissionDescriptorCondition` — `{__type: "PermissionDescriptorCondition", condition: {__type: ...}, subNode: {__type: ...}}` gates a sub-descriptor on a boolean expression.
  /// - `PermissionDescriptorCompose` — references other roles by ID; `{__type: "PermissionDescriptorCompose", permissionDescriptors: [&lt;roleId&gt;, ...]}`.
  ///
  /// Pulumi Cloud's REST API also accepts `PermissionDescriptorIfThenElse`, `PermissionDescriptorSelect`, and the `PermissionExpression*` / `PermissionLiteralExpression*` boolean operators (And, Or, Not, Equal, Environment, Stack, Team, InsightsAccount, …); the provider does not inspect anything below the top, so future Cloud additions work without a provider release.
  ///
  /// For the common case of granting a set of scopes on one entity, prefer the `buildAllowPermissions`, `buildEnvironmentScopedPermissions`, `buildStackScopedPermissions`, and `buildInsightsAccountScopedPermissions` helpers, which build the descriptor tree for you. To grant a role to a team, use the `TeamRoleAssignment` resource — roles are *associated with* teams, not gated on them via a permission descriptor.
  ///
  /// Note: the `__type` field name uses Pulumi's `__`-prefixed-key passthrough (pulumi/pulumi#22834, available in pulumi 3.235.0+). Earlier pulumi runtimes will drop these keys at the SDK boundary; the Python SDK pins the minimum runtime version automatically.
  final pulumi.Input<Map<String, dynamic>> permissions;
  /// The resource type the role's permissions apply to. Defaults to `global` (the org-wide role that can be assigned to members and teams). Other valid values: `stack`, `environment`, `insights-account`.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [OrganizationRoleArgs].
  /// [description] Human-readable description of what the role grants.
  /// [name] The role's display name. Must be unique within the organization.
  /// [organizationName] The Pulumi Cloud organization name.
  /// [permissions] The role's permission descriptor tree, expressed in the Pulumi Cloud wire grammar. The provider exposes the descriptor as `map[string]Any` and passes it through verbatim — the wire-format `__type` discriminator is used at every level (SDK and API alike).
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
