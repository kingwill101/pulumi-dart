import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_assignments_args.dart';
import 'get_role_assignments_result.dart';
import 'get_role_management_policy_args.dart';
import 'get_role_management_policy_result.dart';

/// Use this data source to access information about existing Role Assignments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const example = azure.pim.getRoleAssignmentsOutput({
///     scope: exampleResourceGroup.id,
/// });
/// export const id = example.apply(example => example.roleAssignments);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example = azure.pim.get_role_assignments_output(scope=example_resource_group.id)
/// pulumi.export("id", example.role_assignments)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Pim.GetRoleAssignments.Invoke(new()
///     {
///         Scope = exampleResourceGroup.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getRoleAssignmentsResult => getRoleAssignmentsResult.RoleAssignments),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := pim.GetRoleAssignmentsOutput(ctx, pim.GetRoleAssignmentsOutputArgs{
/// 			Scope: exampleResourceGroup.ID(),
/// 		}, nil)
/// 		ctx.Export("id", example.ApplyT(func(example pim.GetRoleAssignmentsResult) ([]pim.GetRoleAssignmentsRoleAssignment, error) {
/// 			return []pim.GetRoleAssignmentsRoleAssignment(example.RoleAssignments), nil
/// 		}).([]pim.GetRoleAssignmentsRoleAssignmentOutput))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.pim.PimFunctions;
/// import com.pulumi.azure.pim.inputs.GetRoleAssignmentsArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         final var example = PimFunctions.getRoleAssignments(GetRoleAssignmentsArgs.builder()
///             .scope(exampleResourceGroup.id())
///             .build());
///
///         ctx.export("id", example.applyValue(_example -> _example.roleAssignments()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example
///       location: West Europe
/// variables:
///   example:
///     fn::invoke:
///       function: azure:pim:getRoleAssignments
///       arguments:
///         scope: ${exampleResourceGroup.id}
/// outputs:
///   id: ${example.roleAssignments}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_pim_get_role_assignments_get_role_assignments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleAssignmentsResult> getRoleAssignments(
  GetRoleAssignmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:pim/getRoleAssignments:getRoleAssignments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleAssignmentsResult.fromMap(result);
}

/// Use this data source to get information on a role policy for an Azure Management Group, Subscription, Resource Group or resource.
///
/// ## Example Usage
///
/// ### Resource Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getResourceGroup({
///     name: "example-rg",
/// });
/// const rgContributor = example.then(example => azure.authorization.getRoleDefinition({
///     name: "Contributor",
///     scope: example.id,
/// }));
/// const exampleGetRoleManagementPolicy = azure.pim.getRoleManagementPolicy({
///     scope: test.id,
///     roleDefinitionId: contributor.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_resource_group(name="example-rg")
/// rg_contributor = azure.authorization.get_role_definition(name="Contributor",
///     scope=example.id)
/// example_get_role_management_policy = azure.pim.get_role_management_policy(scope=test["id"],
///     role_definition_id=contributor["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetResourceGroup.Invoke(new()
///     {
///         Name = "example-rg",
///     });
///
///     var rgContributor = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Contributor",
///         Scope = example.Apply(getResourceGroupResult => getResourceGroupResult.Id),
///     });
///
///     var exampleGetRoleManagementPolicy = Azure.Pim.GetRoleManagementPolicy.Invoke(new()
///     {
///         Scope = test.Id,
///         RoleDefinitionId = contributor.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupResourceGroup(ctx, &core.LookupResourceGroupArgs{
/// 			Name: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name:  pulumi.StringRef("Contributor"),
/// 			Scope: pulumi.StringRef(example.Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pim.LookupRoleManagementPolicy(ctx, &pim.LookupRoleManagementPolicyArgs{
/// 			Scope:            test.Id,
/// 			RoleDefinitionId: contributor.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.core.inputs.GetResourceGroupArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.pim.PimFunctions;
/// import com.pulumi.azure.pim.inputs.GetRoleManagementPolicyArgs;
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
///         final var example = CoreFunctions.getResourceGroup(GetResourceGroupArgs.builder()
///             .name("example-rg")
///             .build());
///
///         final var rgContributor = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .scope(example.id())
///             .build());
///
///         final var exampleGetRoleManagementPolicy = PimFunctions.getRoleManagementPolicy(GetRoleManagementPolicyArgs.builder()
///             .scope(test.id())
///             .roleDefinitionId(contributor.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getResourceGroup
///       arguments:
///         name: example-rg
///   rgContributor:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Contributor
///         scope: ${example.id}
///   exampleGetRoleManagementPolicy:
///     fn::invoke:
///       function: azure:pim:getRoleManagementPolicy
///       arguments:
///         scope: ${test.id}
///         roleDefinitionId: ${contributor.id}
/// ```
///
///
/// ### Management Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.management.getGroup({
///     name: "example-group",
/// });
/// const mgContributor = azure.authorization.getRoleDefinition({
///     name: "Contributor",
///     scope: exampleAzurermManagementGroup.id,
/// });
/// const exampleGetRoleManagementPolicy = Promise.all([example, mgContributor]).then(([example, mgContributor]) => azure.pim.getRoleManagementPolicy({
///     scope: example.id,
///     roleDefinitionId: mgContributor.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.get_group(name="example-group")
/// mg_contributor = azure.authorization.get_role_definition(name="Contributor",
///     scope=example_azurerm_management_group["id"])
/// example_get_role_management_policy = azure.pim.get_role_management_policy(scope=example.id,
///     role_definition_id=mg_contributor.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "example-group",
///     });
///
///     var mgContributor = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Contributor",
///         Scope = exampleAzurermManagementGroup.Id,
///     });
///
///     var exampleGetRoleManagementPolicy = Azure.Pim.GetRoleManagementPolicy.Invoke(new()
///     {
///         Scope = example.Apply(getGroupResult => getGroupResult.Id),
///         RoleDefinitionId = mgContributor.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("example-group"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mgContributor, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name:  pulumi.StringRef("Contributor"),
/// 			Scope: pulumi.StringRef(exampleAzurermManagementGroup.Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pim.LookupRoleManagementPolicy(ctx, &pim.LookupRoleManagementPolicyArgs{
/// 			Scope:            example.Id,
/// 			RoleDefinitionId: mgContributor.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.pim.PimFunctions;
/// import com.pulumi.azure.pim.inputs.GetRoleManagementPolicyArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("example-group")
///             .build());
///
///         final var mgContributor = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .scope(exampleAzurermManagementGroup.id())
///             .build());
///
///         final var exampleGetRoleManagementPolicy = PimFunctions.getRoleManagementPolicy(GetRoleManagementPolicyArgs.builder()
///             .scope(example.id())
///             .roleDefinitionId(mgContributor.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: example-group
///   mgContributor:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Contributor
///         scope: ${exampleAzurermManagementGroup.id}
///   exampleGetRoleManagementPolicy:
///     fn::invoke:
///       function: azure:pim:getRoleManagementPolicy
///       arguments:
///         scope: ${example.id}
///         roleDefinitionId: ${mgContributor.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2020-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_pim_get_role_management_policy_get_role_management_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleManagementPolicyResult> getRoleManagementPolicy(
  GetRoleManagementPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:pim/getRoleManagementPolicy:getRoleManagementPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleManagementPolicyResult.fromMap(result);
}
