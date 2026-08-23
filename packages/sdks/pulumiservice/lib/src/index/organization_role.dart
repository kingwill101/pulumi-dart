import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_role_args.dart';

/// A custom (fine-grained) role defined on a Pulumi Cloud organization. Custom roles allow precise permission control beyond the built-in `admin` / `member` / `billing-manager` roles. Assign them to members via the `OrganizationMember.roleId` field or to teams via `TeamRoleAssignment`.
///
/// Requires the Custom Roles feature to be enabled on the organization. See the [Pulumi Cloud RBAC docs](https://www.pulumi.com/docs/pulumi-cloud/access-management/rbac/) for the shape of the `permissions` descriptor.
class OrganizationRole extends pulumi.CustomResource {
  /// Human-readable description of what the role grants.
  late final pulumi.Output<String?> description;
  /// The role's display name. Must be unique within the organization.
  late final pulumi.Output<String> name;
  /// The Pulumi Cloud organization name.
  late final pulumi.Output<String> organizationName;
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
  late final pulumi.Output<Map<String, dynamic>> permissions;
  /// The resource type the role's permissions apply to. Defaults to `global` (the org-wide role that can be assigned to members and teams). Other valid values: `stack`, `environment`, `insights-account`.
  late final pulumi.Output<String?> resourceType;
  /// The unique identifier of the custom role.
  late final pulumi.Output<String> roleId;
  /// The service-maintained version number that increments on every update.
  late final pulumi.Output<int> version;

  /// Creates a new [OrganizationRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationRole]. {@macro pulumi_index_organization_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationRole(
    String name, {
    OrganizationRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OrganizationRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    permissions = registerOutput<Map<String, dynamic>>('permissions');
    resourceType = registerOutput<String?>('resourceType');
    roleId = registerOutput<String>('roleId');
    version = registerOutput<int>('version');
  }
}
