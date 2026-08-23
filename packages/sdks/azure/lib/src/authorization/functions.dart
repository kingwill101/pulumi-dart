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
/// const custom = azure.authorization.getRoleDefinitionOutput({
///     roleDefinitionId: customRoleDefinition.roleDefinitionId,
///     scope: primary.then(primary => primary.id),
/// });
/// const custom_byname = azure.authorization.getRoleDefinitionOutput({
///     name: customRoleDefinition.name,
///     scope: primary.then(primary => primary.id),
/// });
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
/// custom = azure.authorization.get_role_definition_output(role_definition_id=custom_role_definition.role_definition_id,
///     scope=primary.id)
/// custom_byname = azure.authorization.get_role_definition_output(name=custom_role_definition.name,
///     scope=primary.id)
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
/// 		custom := authorization.LookupRoleDefinitionOutput(ctx, authorization.GetRoleDefinitionOutputArgs{
/// 			RoleDefinitionId: customRoleDefinition.RoleDefinitionId,
/// 			Scope:            pulumi.String(primary.Id),
/// 		}, nil)
/// 		_ = authorization.LookupRoleDefinitionOutput(ctx, authorization.GetRoleDefinitionOutputArgs{
/// 			Name:  customRoleDefinition.Name,
/// 			Scope: pulumi.String(primary.Id),
/// 		}, nil)
/// 		builtin, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Contributor"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("customRoleDefinitionId", custom.ApplyT(func(custom authorization.GetRoleDefinitionResult) (*string, error) {
/// 			return custom.Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("contributorRoleDefinitionId", builtin.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getsubscription" "primary" {
/// }
/// data "azure_authorization_getroledefinition" "custom" {
///   role_definition_id = azure_authorization_roledefinition.custom.role_definition_id
///   scope              = data.azure_core_getsubscription.primary.id
/// }
/// data "azure_authorization_getroledefinition" "custom-byname" {
///   name  = azure_authorization_roledefinition.custom.name
///   scope = data.azure_core_getsubscription.primary.id
/// }
/// data "azure_authorization_getroledefinition" "builtin" {
///   name = "Contributor"
/// }
///
/// resource "azure_authorization_roledefinition" "custom" {
///   role_definition_id = "00000000-0000-0000-0000-000000000000"
///   name               = "CustomRoleDef"
///   scope              = data.azure_core_getsubscription.primary.id
/// }
/// output "customRoleDefinitionId" {
///   value = data.azure_authorization_getroledefinition.custom.id
/// }
/// output "contributorRoleDefinitionId" {
///   value = data.azure_authorization_getroledefinition.builtin.id
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var customRoleDefinition = new RoleDefinition("customRoleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .name("CustomRoleDef")
///             .scope(primary.id())
///             .build());
///
///         final var custom = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .roleDefinitionId(customRoleDefinition.roleDefinitionId())
///             .scope(primary.id())
///             .build());
///
///         final var custom-byname = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name(customRoleDefinition.name())
///             .scope(primary.id())
///             .build());
///
///         final var builtin = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .build());
///
///         ctx.export("customRoleDefinitionId", custom.applyValue(_custom -> _custom.id()));
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_authorization_getuserassignedidentity" "example" {
///   name                = "name_of_user_assigned_identity"
///   resource_group_name = "name_of_resource_group"
/// }
///
/// output "uaiClientId" {
///   value = data.azure_authorization_getuserassignedidentity.example.client_id
/// }
/// output "uaiPrincipalId" {
///   value = data.azure_authorization_getuserassignedidentity.example.principal_id
/// }
/// output "uaiTenantId" {
///   value = data.azure_authorization_getuserassignedidentity.example.tenant_id
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
