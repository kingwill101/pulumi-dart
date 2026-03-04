import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_definition_args.dart';
import 'get_role_definition_result.dart';
import 'get_user_assigned_identity_args.dart';
import 'get_user_assigned_identity_result.dart';

/// Use this data source to access information about an existing Role Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const customRoleDefinition = new azure.authorization.RoleDefinition("custom", {
///     roleDefinitionId: "00000000-0000-0000-0000-000000000000",
///     name: "CustomRoleDef",
///     scope: primary.then(primary => primary.id),
/// });
/// const custom = pulumi.all([customRoleDefinition.roleDefinitionId, primary]).apply(([roleDefinitionId, primary]) => azure.authorization.getRoleDefinitionOutput({
///     roleDefinitionId: roleDefinitionId,
///     scope: primary.id,
/// }));
/// const custom_byname = pulumi.all([customRoleDefinition.name, primary]).apply(([name, primary]) => azure.authorization.getRoleDefinitionOutput({
///     name: name,
///     scope: primary.id,
/// }));
/// const builtin = azure.authorization.getRoleDefinition({
///     name: "Contributor",
/// });
/// export const customRoleDefinitionId = custom.apply(custom => custom.id);
/// export const contributorRoleDefinitionId = builtin.then(builtin => builtin.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// custom_role_definition = azure.authorization.RoleDefinition("custom",
///     role_definition_id="00000000-0000-0000-0000-000000000000",
///     name="CustomRoleDef",
///     scope=primary.id)
/// custom = custom_role_definition.role_definition_id.apply(lambda role_definition_id: azure.authorization.get_role_definition(role_definition_id=role_definition_id,
///     scope=primary.id))
/// custom_byname = custom_role_definition.name.apply(lambda name: azure.authorization.get_role_definition(name=name,
///     scope=primary.id))
/// builtin = azure.authorization.get_role_definition(name="Contributor")
/// pulumi.export("customRoleDefinitionId", custom.id)
/// pulumi.export("contributorRoleDefinitionId", builtin.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var customRoleDefinition = new Azure.Authorization.RoleDefinition("custom", new()
///     {
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000000",
///         Name = "CustomRoleDef",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
///     var custom = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         RoleDefinitionId = customRoleDefinition.RoleDefinitionId,
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
///     var custom_byname = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = customRoleDefinition.Name,
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
///     var builtin = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Contributor",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["customRoleDefinitionId"] = custom.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///         ["contributorRoleDefinitionId"] = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customRoleDefinition, err := authorization.NewRoleDefinition(ctx, "custom", &authorization.RoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Name:             pulumi.String("CustomRoleDef"),
/// 			Scope:            pulumi.String(primary.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		custom := customRoleDefinition.RoleDefinitionId.ApplyT(func(roleDefinitionId string) (authorization.GetRoleDefinitionResult, error) {
/// 			return authorization.GetRoleDefinitionResult(authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 				RoleDefinitionId: pulumi.StringRef(pulumi.StringRef(roleDefinitionId)),
/// 				Scope:            pulumi.StringRef(pulumi.StringRef(primary.Id)),
/// 			}, nil)), nil
/// 		}).(authorization.GetRoleDefinitionResultOutput)
/// 		_ = customRoleDefinition.Name.ApplyT(func(name string) (authorization.GetRoleDefinitionResult, error) {
/// 			return authorization.GetRoleDefinitionResult(authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 				Name:  pulumi.StringRef(pulumi.StringRef(name)),
/// 				Scope: pulumi.StringRef(pulumi.StringRef(primary.Id)),
/// 			}, nil)), nil
/// 		}).(authorization.GetRoleDefinitionResultOutput)
/// 		builtin, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Contributor"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("customRoleDefinitionId", custom.Id)
/// 		ctx.Export("contributorRoleDefinitionId", builtin.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var customRoleDefinition = new RoleDefinition("customRoleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .name("CustomRoleDef")
///             .scope(primary.id())
///             .build());
///
///         final var custom = customRoleDefinition.roleDefinitionId().applyValue(_roleDefinitionId -> AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .roleDefinitionId(_roleDefinitionId)
///             .scope(primary.id())
///             .build()));
///
///         final var custom-byname = customRoleDefinition.name().applyValue(_name -> AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name(_name)
///             .scope(primary.id())
///             .build()));
///
///         final var builtin = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .build());
///
///         ctx.export("customRoleDefinitionId", custom.id());
///         ctx.export("contributorRoleDefinitionId", builtin.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customRoleDefinition:
///     type: azure:authorization:RoleDefinition
///     name: custom
///     properties:
///       roleDefinitionId: 00000000-0000-0000-0000-000000000000
///       name: CustomRoleDef
///       scope: ${primary.id}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   custom:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         roleDefinitionId: ${customRoleDefinition.roleDefinitionId}
///         scope: ${primary.id}
///   custom-byname:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: ${customRoleDefinition.name}
///         scope: ${primary.id}
///   builtin:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Contributor
/// outputs:
///   customRoleDefinitionId: ${custom.id}
///   contributorRoleDefinitionId: ${builtin.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-05-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_role_definition_get_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleDefinitionResult> getRoleDefinition(
  GetRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:authorization/getRoleDefinition:getRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleDefinitionResult.fromMap(result);
}

/// Use this data source to access information about an existing User Assigned Identity.
///
/// ## Example Usage
///
/// ### Reference An Existing)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.authorization.getUserAssignedIdentity({
///     name: "name_of_user_assigned_identity",
///     resourceGroupName: "name_of_resource_group",
/// });
/// export const uaiClientId = example.then(example => example.clientId);
/// export const uaiPrincipalId = example.then(example => example.principalId);
/// export const uaiTenantId = example.then(example => example.tenantId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.authorization.get_user_assigned_identity(name="name_of_user_assigned_identity",
///     resource_group_name="name_of_resource_group")
/// pulumi.export("uaiClientId", example.client_id)
/// pulumi.export("uaiPrincipalId", example.principal_id)
/// pulumi.export("uaiTenantId", example.tenant_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Authorization.GetUserAssignedIdentity.Invoke(new()
///     {
///         Name = "name_of_user_assigned_identity",
///         ResourceGroupName = "name_of_resource_group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["uaiClientId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.ClientId),
///         ["uaiPrincipalId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.PrincipalId),
///         ["uaiTenantId"] = example.Apply(getUserAssignedIdentityResult => getUserAssignedIdentityResult.TenantId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := authorization.LookupUserAssignedIdentity(ctx, &authorization.LookupUserAssignedIdentityArgs{
/// 			Name:              "name_of_user_assigned_identity",
/// 			ResourceGroupName: "name_of_resource_group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("uaiClientId", example.ClientId)
/// 		ctx.Export("uaiPrincipalId", example.PrincipalId)
/// 		ctx.Export("uaiTenantId", example.TenantId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetUserAssignedIdentityArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = AuthorizationFunctions.getUserAssignedIdentity(GetUserAssignedIdentityArgs.builder()
///             .name("name_of_user_assigned_identity")
///             .resourceGroupName("name_of_resource_group")
///             .build());
///
///         ctx.export("uaiClientId", example.clientId());
///         ctx.export("uaiPrincipalId", example.principalId());
///         ctx.export("uaiTenantId", example.tenantId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:authorization:getUserAssignedIdentity
///       arguments:
///         name: name_of_user_assigned_identity
///         resourceGroupName: name_of_resource_group
/// outputs:
///   uaiClientId: ${example.clientId}
///   uaiPrincipalId: ${example.principalId}
///   uaiTenantId: ${example.tenantId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ManagedIdentity` - 2024-11-30
/// [args] Arguments passed to this invoke. {@macro pulumi_authorization_get_user_assigned_identity_get_user_assigned_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserAssignedIdentityResult> getUserAssignedIdentity(
  GetUserAssignedIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:authorization/getUserAssignedIdentity:getUserAssignedIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAssignedIdentityResult.fromMap(result);
}
