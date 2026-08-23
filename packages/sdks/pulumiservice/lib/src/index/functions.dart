import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_allow_permissions_args.dart';
import 'build_allow_permissions_result.dart';
import 'build_environment_scoped_permissions_args.dart';
import 'build_environment_scoped_permissions_result.dart';
import 'build_insights_account_scoped_permissions_args.dart';
import 'build_insights_account_scoped_permissions_result.dart';
import 'build_stack_scoped_permissions_args.dart';
import 'build_stack_scoped_permissions_result.dart';
import 'get_current_user_result.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_insights_account_args.dart';
import 'get_insights_account_result.dart';
import 'get_insights_accounts_args.dart';
import 'get_insights_accounts_result.dart';
import 'get_organization_member_args.dart';
import 'get_organization_member_result.dart';
import 'get_organization_members_args.dart';
import 'get_organization_members_result.dart';
import 'get_organization_role_scopes_args.dart';
import 'get_organization_role_scopes_result.dart';
import 'get_policy_pack_args.dart';
import 'get_policy_pack_result.dart';
import 'get_policy_packs_args.dart';
import 'get_policy_packs_result.dart';

/// Builds an `OrganizationRole.permissions` descriptor that grants the supplied scopes globally — i.e. on every entity of the matching resource type. This is the simplest descriptor: a flat `PermissionDescriptorAllow`. Use this helper instead of hand-authoring the descriptor literal so the wire-format `__type` discriminator stays an implementation detail. For grants scoped to a specific entity, see `buildEnvironmentScopedPermissions`, `buildStackScopedPermissions`, or `buildInsightsAccountScopedPermissions`. The result is directly assignable to `OrganizationRole.permissions`. To grant scopes on more than one entity in a single role, hand-roll a `PermissionDescriptorGroup` whose `entries` list pulls the output of each helper.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_allow_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildAllowPermissionsResult> buildAllowPermissions(
  BuildAllowPermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildAllowPermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildAllowPermissionsResult.fromMap(result);
}

/// Builds an `OrganizationRole.permissions` descriptor that grants the supplied scopes only on the named environment. Pair with `Environment.environmentId` (or the `getEnvironment` data source) to avoid hand-rolling the `PermissionDescriptorCondition` tree yourself. The result is directly assignable to `OrganizationRole.permissions`. To grant scopes on more than one entity in a single role, hand-roll a `PermissionDescriptorGroup` whose `entries` list pulls the output of each helper.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_environment_scoped_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildEnvironmentScopedPermissionsResult> buildEnvironmentScopedPermissions(
  BuildEnvironmentScopedPermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildEnvironmentScopedPermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildEnvironmentScopedPermissionsResult.fromMap(result);
}

/// Builds an `OrganizationRole.permissions` descriptor that grants the supplied scopes only on the named insights account. Pair with `InsightsAccount.insightsAccountId` (or the `getInsightsAccount` data source). The result is directly assignable to `OrganizationRole.permissions`. To grant scopes on more than one entity in a single role, hand-roll a `PermissionDescriptorGroup` whose `entries` list pulls the output of each helper.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_insights_account_scoped_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildInsightsAccountScopedPermissionsResult> buildInsightsAccountScopedPermissions(
  BuildInsightsAccountScopedPermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildInsightsAccountScopedPermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildInsightsAccountScopedPermissionsResult.fromMap(result);
}

/// Builds an `OrganizationRole.permissions` descriptor that grants the supplied scopes only on the named stack. The `stackId` is the stack's opaque Pulumi Cloud identifier — distinct from the `organization/project/stack` triple. The result is directly assignable to `OrganizationRole.permissions`. To grant scopes on more than one entity in a single role, hand-roll a `PermissionDescriptorGroup` whose `entries` list pulls the output of each helper.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_stack_scoped_permissions_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildStackScopedPermissionsResult> buildStackScopedPermissions(
  BuildStackScopedPermissionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildStackScopedPermissions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildStackScopedPermissionsResult.fromMap(result);
}

/// Returns the Pulumi Cloud user that the provider's access token belongs to. Useful for seeding a newly-created `Team` with the creator as a member, since Pulumi Cloud auto-adds the creator. Omitting this user from the team will result in a refresh drift.
/// [options] Invoke options controlling this call.
Future<GetCurrentUserResult> getCurrentUser(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getCurrentUser',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCurrentUserResult.fromMap(result);
}

/// Looks up an existing ESC environment by name and returns its UUID. Use this to scope a custom RBAC role to a specific environment — pass the returned UUID into `buildEnvironmentScopedPermissions`, or use it as the `identity` field of a hand-rolled `PermissionLiteralExpressionEnvironment` in `OrganizationRole.permissions`. Errors when the environment is not found.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Get details about a specific Insights account.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_insights_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsAccountResult> getInsightsAccount(
  GetInsightsAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsAccountResult.fromMap(result);
}

/// Get a list of all Insights accounts for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_insights_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsAccountsResult> getInsightsAccounts(
  GetInsightsAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsAccountsResult.fromMap(result);
}

/// Looks up a single member of a Pulumi Cloud organization by username (the backing identity-provider login, e.g. GitHub login). Returns an error when the member is not found.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_organization_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationMemberResult> getOrganizationMember(
  GetOrganizationMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationMemberResult.fromMap(result);
}

/// Lists all members of a Pulumi Cloud organization, including their role assignments. Merges Pulumi Cloud's identity-provider roster (paginated; includes users who haven't signed in to Pulumi yet) with the seat-count roster, deduped by username, so SAML- and non-SAML-provisioned members both appear regardless of which roster they're tracked in.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_organization_members_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationMembersResult> getOrganizationMembers(
  GetOrganizationMembersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationMembers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationMembersResult.fromMap(result);
}

/// Lists the permission scopes available for custom roles in an organization. Use this to discover valid scope names before setting `OrganizationRole.permissions`. The catalogue is flattened into a single list with resource type and group context, sorted deterministically.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_organization_role_scopes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationRoleScopesResult> getOrganizationRoleScopes(
  GetOrganizationRoleScopesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRoleScopes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationRoleScopesResult.fromMap(result);
}

/// Get details about a specific version of a policy pack.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_policy_pack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyPackResult> getPolicyPack(
  GetPolicyPackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyPackResult.fromMap(result);
}

/// Get a list of all policy packs for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_policy_packs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyPacksResult> getPolicyPacks(
  GetPolicyPacksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPacks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyPacksResult.fromMap(result);
}
