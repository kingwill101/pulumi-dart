import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_account_match_rule_args.dart';
import 'build_account_match_rule_result.dart';
import 'build_allow_permissions_args.dart';
import 'build_allow_permissions_result.dart';
import 'build_environment_scoped_permissions_args.dart';
import 'build_environment_scoped_permissions_result.dart';
import 'build_insights_account_scoped_permissions_args.dart';
import 'build_insights_account_scoped_permissions_result.dart';
import 'build_stack_match_rule_args.dart';
import 'build_stack_match_rule_result.dart';
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
import 'get_organization_role_args.dart';
import 'get_organization_role_result.dart';
import 'get_organization_role_scopes_args.dart';
import 'get_organization_role_scopes_result.dart';
import 'get_organization_roles_args.dart';
import 'get_organization_roles_result.dart';
import 'get_policy_pack_args.dart';
import 'get_policy_pack_result.dart';
import 'get_policy_packs_args.dart';
import 'get_policy_packs_result.dart';

/// Builds a policy group's Insights account match rule from tag rules, without writing Pulumi Cloud's expression format by hand. Use the result as a policy group's `accountMatchRule`. Pulumi Cloud adds the accounts the rule matches to the group, alongside the accounts added individually, and keeps membership up to date as account tags change. Only `audit` policy groups support account rules. Match rules are a preview feature of Pulumi Cloud.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_account_match_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildAccountMatchRuleResult> buildAccountMatchRule(
  BuildAccountMatchRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildAccountMatchRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildAccountMatchRuleResult.fromMap(result);
}

pulumi.Output<BuildAccountMatchRuleResult> buildAccountMatchRuleOutput(
  BuildAccountMatchRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildAccountMatchRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildAccountMatchRuleResult.fromMap);
}

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

pulumi.Output<BuildAllowPermissionsResult> buildAllowPermissionsOutput(
  BuildAllowPermissionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildAllowPermissions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildAllowPermissionsResult.fromMap);
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

pulumi.Output<BuildEnvironmentScopedPermissionsResult> buildEnvironmentScopedPermissionsOutput(
  BuildEnvironmentScopedPermissionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildEnvironmentScopedPermissions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildEnvironmentScopedPermissionsResult.fromMap);
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

pulumi.Output<BuildInsightsAccountScopedPermissionsResult> buildInsightsAccountScopedPermissionsOutput(
  BuildInsightsAccountScopedPermissionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildInsightsAccountScopedPermissions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildInsightsAccountScopedPermissionsResult.fromMap);
}

/// Builds a policy group's stack match rule from tag rules, without writing Pulumi Cloud's expression format by hand. Use the result as a policy group's `stackMatchRule`. Pulumi Cloud adds the stacks the rule matches to the group, alongside the stacks added individually, and keeps membership up to date as stack tags change. Match rules are a preview feature of Pulumi Cloud.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_build_stack_match_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<BuildStackMatchRuleResult> buildStackMatchRule(
  BuildStackMatchRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:buildStackMatchRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return BuildStackMatchRuleResult.fromMap(result);
}

pulumi.Output<BuildStackMatchRuleResult> buildStackMatchRuleOutput(
  BuildStackMatchRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildStackMatchRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildStackMatchRuleResult.fromMap);
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

pulumi.Output<BuildStackScopedPermissionsResult> buildStackScopedPermissionsOutput(
  BuildStackScopedPermissionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:buildStackScopedPermissions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(BuildStackScopedPermissionsResult.fromMap);
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

pulumi.Output<GetCurrentUserResult> getCurrentUserOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getCurrentUser',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetCurrentUserResult.fromMap);
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

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
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

pulumi.Output<GetInsightsAccountResult> getInsightsAccountOutput(
  GetInsightsAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInsightsAccountResult.fromMap);
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

pulumi.Output<GetInsightsAccountsResult> getInsightsAccountsOutput(
  GetInsightsAccountsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccounts',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInsightsAccountsResult.fromMap);
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

pulumi.Output<GetOrganizationMemberResult> getOrganizationMemberOutput(
  GetOrganizationMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationMemberResult.fromMap);
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

pulumi.Output<GetOrganizationMembersResult> getOrganizationMembersOutput(
  GetOrganizationMembersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationMembers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationMembersResult.fromMap);
}

/// Looks up a role in a Pulumi Cloud organization by the name shown in the Pulumi Cloud console. Finds both built-in and custom roles. Use the returned `roleId` for inputs that take a role ID, such as `TeamRoleAssignment.roleId` and `OrganizationMember.roleId`, instead of hardcoding the ID. Returns an error when no role has the given name.
///
/// {{% examples %}}
/// ## Example Usage
///
/// {{% example %}}
/// ### Look up a role you defined
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as pulumiservice from "@pulumi/pulumiservice";
///
/// const ciDeployerRole = pulumiservice.getOrganizationRoleOutput({
///     organizationName: "my-org",
///     name: "CI Deployer",
/// });
/// const platformTeamRole = new pulumiservice.TeamRoleAssignment("platformTeamRole", {
///     organizationName: "my-org",
///     teamName: "platform",
///     roleId: ciDeployerRole.roleId,
/// });
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_pulumiservice as pulumiservice
///
/// ci_deployer_role = pulumiservice.get_organization_role_output(organization_name="my-org",
///     name="CI Deployer")
/// platform_team_role = pulumiservice.TeamRoleAssignment("platformTeamRole",
///     organization_name="my-org",
///     team_name="platform",
///     role_id=ci_deployer_role.role_id)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-pulumiservice/sdk/go/pulumiservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ciDeployerRole := pulumiservice.GetOrganizationRoleOutput(ctx, pulumiservice.GetOrganizationRoleOutputArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 			Name:             pulumi.String("CI Deployer"),
/// 		}, nil)
/// 		_, err := pulumiservice.NewTeamRoleAssignment(ctx, "platformTeamRole", &pulumiservice.TeamRoleAssignmentArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 			TeamName:         pulumi.String("platform"),
/// 			RoleId:           ciDeployerRole.RoleId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PulumiService = Pulumi.PulumiService;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ciDeployerRole = PulumiService.GetOrganizationRole.Invoke(new()
///     {
///         OrganizationName = "my-org",
///         Name = "CI Deployer",
///     });
///
///     var platformTeamRole = new PulumiService.TeamRoleAssignment("platformTeamRole", new()
///     {
///         OrganizationName = "my-org",
///         TeamName = "platform",
///         RoleId = ciDeployerRole.Apply(getOrganizationRoleResult => getOrganizationRoleResult.RoleId),
///     });
///
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.pulumiservice.PulumiserviceFunctions;
/// import com.pulumi.pulumiservice.inputs.GetOrganizationRoleArgs;
/// import com.pulumi.pulumiservice.TeamRoleAssignment;
/// import com.pulumi.pulumiservice.TeamRoleAssignmentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ciDeployerRole = PulumiserviceFunctions.getOrganizationRole(GetOrganizationRoleArgs.builder()
///             .organizationName("my-org")
///             .name("CI Deployer")
///             .build());
///
///         var platformTeamRole = new TeamRoleAssignment("platformTeamRole", TeamRoleAssignmentArgs.builder()
///             .organizationName("my-org")
///             .teamName("platform")
///             .roleId(ciDeployerRole.applyValue(_ciDeployerRole -> _ciDeployerRole.roleId()))
///             .build());
///
///     }
/// }
/// ```
///
/// ```yaml
/// variables:
///   ciDeployerRole:
///     fn::invoke:
///       function: pulumiservice:getOrganizationRole
///       arguments:
///         organizationName: my-org
///         name: CI Deployer
/// resources:
///   platformTeamRole:
///     type: pulumiservice:TeamRoleAssignment
///     properties:
///       organizationName: my-org
///       teamName: platform
///       roleId: ${ciDeployerRole.roleId}
/// ```
/// {{% /example %}}
///
/// {{% example %}}
/// ### Look up a built-in role
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as pulumiservice from "@pulumi/pulumiservice";
///
/// const adminRole = pulumiservice.getOrganizationRoleOutput({
///     organizationName: "my-org",
///     name: "Admin",
/// });
/// export const adminRoleId = adminRole.roleId;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_pulumiservice as pulumiservice
///
/// admin_role = pulumiservice.get_organization_role_output(organization_name="my-org",
///     name="Admin")
/// pulumi.export("adminRoleId", admin_role.role_id)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-pulumiservice/sdk/go/pulumiservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		adminRole := pulumiservice.GetOrganizationRoleOutput(ctx, pulumiservice.GetOrganizationRoleOutputArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 			Name:             pulumi.String("Admin"),
/// 		}, nil)
/// 		ctx.Export("adminRoleId", adminRole.RoleId())
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PulumiService = Pulumi.PulumiService;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adminRole = PulumiService.GetOrganizationRole.Invoke(new()
///     {
///         OrganizationName = "my-org",
///         Name = "Admin",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["adminRoleId"] = adminRole.Apply(getOrganizationRoleResult => getOrganizationRoleResult.RoleId),
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.pulumiservice.PulumiserviceFunctions;
/// import com.pulumi.pulumiservice.inputs.GetOrganizationRoleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var adminRole = PulumiserviceFunctions.getOrganizationRole(GetOrganizationRoleArgs.builder()
///             .organizationName("my-org")
///             .name("Admin")
///             .build());
///
///         ctx.export("adminRoleId", adminRole.applyValue(_adminRole -> _adminRole.roleId()));
///     }
/// }
/// ```
///
/// ```yaml
/// variables:
///   adminRole:
///     fn::invoke:
///       function: pulumiservice:getOrganizationRole
///       arguments:
///         organizationName: my-org
///         name: Admin
/// outputs:
///   adminRoleId: ${adminRole.roleId}
/// ```
/// {{% /example %}}
/// {{% /examples %}}
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_organization_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationRoleResult> getOrganizationRole(
  GetOrganizationRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationRoleResult.fromMap(result);
}

pulumi.Output<GetOrganizationRoleResult> getOrganizationRoleOutput(
  GetOrganizationRoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationRoleResult.fromMap);
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

pulumi.Output<GetOrganizationRoleScopesResult> getOrganizationRoleScopesOutput(
  GetOrganizationRoleScopesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRoleScopes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationRoleScopesResult.fromMap);
}

/// Lists the roles in a Pulumi Cloud organization, including both built-in and custom roles, sorted by name. To look up a single role by the name shown in the Pulumi Cloud console, use `getOrganizationRole`.
///
/// {{% examples %}}
/// ## Example Usage
///
/// {{% example %}}
/// ### List all roles
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as pulumiservice from "@pulumi/pulumiservice";
///
/// const allRoles = pulumiservice.getOrganizationRolesOutput({
///     organizationName: "my-org",
/// });
/// export const roles = allRoles.apply(allRoles => allRoles.roles);
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_pulumiservice as pulumiservice
///
/// all_roles = pulumiservice.get_organization_roles_output(organization_name="my-org")
/// pulumi.export("roles", all_roles.roles)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-pulumiservice/sdk/go/pulumiservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		allRoles := pulumiservice.GetOrganizationRolesOutput(ctx, pulumiservice.GetOrganizationRolesOutputArgs{
/// 			OrganizationName: pulumi.String("my-org"),
/// 		}, nil)
/// 		ctx.Export("roles", allRoles.ApplyT(func(allRoles pulumiservice.GetOrganizationRolesResult) ([]pulumiservice.OrganizationRoleInfo, error) {
/// 			return allRoles.Roles.([]pulumiservice.OrganizationRoleInfo), nil
/// 		}).(pulumi.ArrayOutput))
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PulumiService = Pulumi.PulumiService;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allRoles = PulumiService.GetOrganizationRoles.Invoke(new()
///     {
///         OrganizationName = "my-org",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["roles"] = allRoles.Apply(getOrganizationRolesResult => getOrganizationRolesResult.Roles),
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.pulumiservice.PulumiserviceFunctions;
/// import com.pulumi.pulumiservice.inputs.GetOrganizationRolesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var allRoles = PulumiserviceFunctions.getOrganizationRoles(GetOrganizationRolesArgs.builder()
///             .organizationName("my-org")
///             .build());
///
///         ctx.export("roles", allRoles.applyValue(_allRoles -> _allRoles.roles()));
///     }
/// }
/// ```
///
/// ```yaml
/// variables:
///   allRoles:
///     fn::invoke:
///       function: pulumiservice:getOrganizationRoles
///       arguments:
///         organizationName: my-org
/// outputs:
///   roles: ${allRoles.roles}
/// ```
/// {{% /example %}}
/// {{% /examples %}}
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_organization_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationRolesResult> getOrganizationRoles(
  GetOrganizationRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationRolesResult.fromMap(result);
}

pulumi.Output<GetOrganizationRolesResult> getOrganizationRolesOutput(
  GetOrganizationRolesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getOrganizationRoles',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationRolesResult.fromMap);
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

pulumi.Output<GetPolicyPackResult> getPolicyPackOutput(
  GetPolicyPackArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPack',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyPackResult.fromMap);
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

pulumi.Output<GetPolicyPacksResult> getPolicyPacksOutput(
  GetPolicyPacksArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPacks',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyPacksResult.fromMap);
}
