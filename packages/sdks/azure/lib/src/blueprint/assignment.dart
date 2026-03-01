import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_args.dart';
import 'assignment_identity.dart';
import 'assignment_state.dart';

/// Manages a Blueprint Assignment resource
///
/// > **NOTE:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.
///
/// > **NOTE:** Azure Blueprint Assignments can only be applied to Subscriptions.  Assignments to Management Groups is not currently supported by the service or by this provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = azure.core.getSubscription({});
/// const exampleGetDefinition = example.then(example => azure.blueprint.getDefinition({
///     name: "exampleBlueprint",
///     scopeId: example.id,
/// }));
/// const exampleGetPublishedVersion = Promise.all([exampleGetDefinition, exampleGetDefinition]).then(([exampleGetDefinition, exampleGetDefinition1]) => azure.blueprint.getPublishedVersion({
///     scopeId: exampleGetDefinition.scopeId,
///     blueprintName: exampleGetDefinition1.name,
///     version: "v1.0.0",
/// }));
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "exampleRG-bp",
///     location: "West Europe",
///     tags: {
///         Environment: "example",
///     },
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     name: "bp-user-example",
/// });
/// const operator = new azure.authorization.Assignment("operator", {
///     scope: example.then(example => example.id),
///     roleDefinitionName: "Blueprint Operator",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const owner = new azure.authorization.Assignment("owner", {
///     scope: example.then(example => example.id),
///     roleDefinitionName: "Owner",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleAssignment = new azure.blueprint.Assignment("example", {
///     name: "testAccBPAssignment",
///     targetSubscriptionId: example.then(example => example.id),
///     versionId: exampleGetPublishedVersion.then(exampleGetPublishedVersion => exampleGetPublishedVersion.id),
///     location: exampleResourceGroup.location,
///     lockMode: "AllResourcesDoNotDelete",
///     lockExcludePrincipals: [current.then(current => current.objectId)],
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     resourceGroups: `    {
///       \\"ResourceGroup\\": {
///         \\"name\\": \\"exampleRG-bp\\"
///       }
///     }
/// `,
///     parameterValues: `    {
///       \\"allowedlocationsforresourcegroups_listOfAllowedLocations\\": {
///         \\"value\\": [\\"westus\\", \\"westus2\\", \\"eastus\\", \\"centralus\\", \\"centraluseuap\\", \\"southcentralus\\", \\"northcentralus\\", \\"westcentralus\\", \\"eastus2\\", \\"eastus2euap\\", \\"brazilsouth\\", \\"brazilus\\", \\"northeurope\\", \\"westeurope\\", \\"eastasia\\", \\"southeastasia\\", \\"japanwest\\", \\"japaneast\\", \\"koreacentral\\", \\"koreasouth\\", \\"indiasouth\\", \\"indiawest\\", \\"indiacentral\\", \\"australiaeast\\", \\"australiasoutheast\\", \\"canadacentral\\", \\"canadaeast\\", \\"uknorth\\", \\"uksouth2\\", \\"uksouth\\", \\"ukwest\\", \\"francecentral\\", \\"francesouth\\", \\"australiacentral\\", \\"australiacentral2\\", \\"uaecentral\\", \\"uaenorth\\", \\"southafricanorth\\", \\"southafricawest\\", \\"switzerlandnorth\\", \\"switzerlandwest\\", \\"germanynorth\\", \\"germanywestcentral\\", \\"norwayeast\\", \\"norwaywest\\"]
///       }
///     }
/// `,
/// }, {
///     dependsOn: [
///         operator,
///         owner,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.get_subscription()
/// example_get_definition = azure.blueprint.get_definition(name="exampleBlueprint",
///     scope_id=example.id)
/// example_get_published_version = azure.blueprint.get_published_version(scope_id=example_get_definition.scope_id,
///     blueprint_name=example_get_definition.name,
///     version="v1.0.0")
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="exampleRG-bp",
///     location="West Europe",
///     tags={
///         "Environment": "example",
///     })
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     name="bp-user-example")
/// operator = azure.authorization.Assignment("operator",
///     scope=example.id,
///     role_definition_name="Blueprint Operator",
///     principal_id=example_user_assigned_identity.principal_id)
/// owner = azure.authorization.Assignment("owner",
///     scope=example.id,
///     role_definition_name="Owner",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_assignment = azure.blueprint.Assignment("example",
///     name="testAccBPAssignment",
///     target_subscription_id=example.id,
///     version_id=example_get_published_version.id,
///     location=example_resource_group.location,
///     lock_mode="AllResourcesDoNotDelete",
///     lock_exclude_principals=[current.object_id],
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     resource_groups="""    {
///       \"ResourceGroup\": {
///         \"name\": \"exampleRG-bp\"
///       }
///     }
/// """,
///     parameter_values="""    {
///       \"allowedlocationsforresourcegroups_listOfAllowedLocations\": {
///         \"value\": [\"westus\", \"westus2\", \"eastus\", \"centralus\", \"centraluseuap\", \"southcentralus\", \"northcentralus\", \"westcentralus\", \"eastus2\", \"eastus2euap\", \"brazilsouth\", \"brazilus\", \"northeurope\", \"westeurope\", \"eastasia\", \"southeastasia\", \"japanwest\", \"japaneast\", \"koreacentral\", \"koreasouth\", \"indiasouth\", \"indiawest\", \"indiacentral\", \"australiaeast\", \"australiasoutheast\", \"canadacentral\", \"canadaeast\", \"uknorth\", \"uksouth2\", \"uksouth\", \"ukwest\", \"francecentral\", \"francesouth\", \"australiacentral\", \"australiacentral2\", \"uaecentral\", \"uaenorth\", \"southafricanorth\", \"southafricawest\", \"switzerlandnorth\", \"switzerlandwest\", \"germanynorth\", \"germanywestcentral\", \"norwayeast\", \"norwaywest\"]
///       }
///     }
/// """,
///     opts = pulumi.ResourceOptions(depends_on=[
///             operator,
///             owner,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = Azure.Core.GetSubscription.Invoke();
///
///     var exampleGetDefinition = Azure.Blueprint.GetDefinition.Invoke(new()
///     {
///         Name = "exampleBlueprint",
///         ScopeId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
///     var exampleGetPublishedVersion = Azure.Blueprint.GetPublishedVersion.Invoke(new()
///     {
///         ScopeId = exampleGetDefinition.Apply(getDefinitionResult => getDefinitionResult.ScopeId),
///         BlueprintName = exampleGetDefinition.Apply(getDefinitionResult => getDefinitionResult.Name),
///         Version = "v1.0.0",
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "exampleRG-bp",
///         Location = "West Europe",
///         Tags =
///         {
///             { "Environment", "example" },
///         },
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Name = "bp-user-example",
///     });
///
///     var @operator = new Azure.Authorization.Assignment("operator", new()
///     {
///         Scope = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Blueprint Operator",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var owner = new Azure.Authorization.Assignment("owner", new()
///     {
///         Scope = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Owner",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var exampleAssignment = new Azure.Blueprint.Assignment("example", new()
///     {
///         Name = "testAccBPAssignment",
///         TargetSubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         VersionId = exampleGetPublishedVersion.Apply(getPublishedVersionResult => getPublishedVersionResult.Id),
///         Location = exampleResourceGroup.Location,
///         LockMode = "AllResourcesDoNotDelete",
///         LockExcludePrincipals = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Identity = new Azure.Blueprint.Inputs.AssignmentIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         ResourceGroups = @"    {
///       \""ResourceGroup\"": {
///         \""name\"": \""exampleRG-bp\""
///       }
///     }
/// ",
///         ParameterValues = @"    {
///       \""allowedlocationsforresourcegroups_listOfAllowedLocations\"": {
///         \""value\"": [\""westus\"", \""westus2\"", \""eastus\"", \""centralus\"", \""centraluseuap\"", \""southcentralus\"", \""northcentralus\"", \""westcentralus\"", \""eastus2\"", \""eastus2euap\"", \""brazilsouth\"", \""brazilus\"", \""northeurope\"", \""westeurope\"", \""eastasia\"", \""southeastasia\"", \""japanwest\"", \""japaneast\"", \""koreacentral\"", \""koreasouth\"", \""indiasouth\"", \""indiawest\"", \""indiacentral\"", \""australiaeast\"", \""australiasoutheast\"", \""canadacentral\"", \""canadaeast\"", \""uknorth\"", \""uksouth2\"", \""uksouth\"", \""ukwest\"", \""francecentral\"", \""francesouth\"", \""australiacentral\"", \""australiacentral2\"", \""uaecentral\"", \""uaenorth\"", \""southafricanorth\"", \""southafricawest\"", \""switzerlandnorth\"", \""switzerlandwest\"", \""germanynorth\"", \""germanywestcentral\"", \""norwayeast\"", \""norwaywest\""]
///       }
///     }
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @operator,
///             owner,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/blueprint"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetDefinition, err := blueprint.GetDefinition(ctx, &blueprint.GetDefinitionArgs{
/// 			Name:    "exampleBlueprint",
/// 			ScopeId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetPublishedVersion, err := blueprint.GetPublishedVersion(ctx, &blueprint.GetPublishedVersionArgs{
/// 			ScopeId:       exampleGetDefinition.ScopeId,
/// 			BlueprintName: exampleGetDefinition.Name,
/// 			Version:       "v1.0.0",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("exampleRG-bp"),
/// 			Location: pulumi.String("West Europe"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Name:              pulumi.String("bp-user-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		operator, err := authorization.NewAssignment(ctx, "operator", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(example.Id),
/// 			RoleDefinitionName: pulumi.String("Blueprint Operator"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		owner, err := authorization.NewAssignment(ctx, "owner", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(example.Id),
/// 			RoleDefinitionName: pulumi.String("Owner"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = blueprint.NewAssignment(ctx, "example", &blueprint.AssignmentArgs{
/// 			Name:                 pulumi.String("testAccBPAssignment"),
/// 			TargetSubscriptionId: pulumi.String(example.Id),
/// 			VersionId:            pulumi.String(exampleGetPublishedVersion.Id),
/// 			Location:             exampleResourceGroup.Location,
/// 			LockMode:             pulumi.String("AllResourcesDoNotDelete"),
/// 			LockExcludePrincipals: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			Identity: &blueprint.AssignmentIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			ResourceGroups: pulumi.String(`    {
///       \"ResourceGroup\": {
///         \"name\": \"exampleRG-bp\"
///       }
///     }
/// `),
/// 			ParameterValues: pulumi.String(`    {
///       \"allowedlocationsforresourcegroups_listOfAllowedLocations\": {
///         \"value\": [\"westus\", \"westus2\", \"eastus\", \"centralus\", \"centraluseuap\", \"southcentralus\", \"northcentralus\", \"westcentralus\", \"eastus2\", \"eastus2euap\", \"brazilsouth\", \"brazilus\", \"northeurope\", \"westeurope\", \"eastasia\", \"southeastasia\", \"japanwest\", \"japaneast\", \"koreacentral\", \"koreasouth\", \"indiasouth\", \"indiawest\", \"indiacentral\", \"australiaeast\", \"australiasoutheast\", \"canadacentral\", \"canadaeast\", \"uknorth\", \"uksouth2\", \"uksouth\", \"ukwest\", \"francecentral\", \"francesouth\", \"australiacentral\", \"australiacentral2\", \"uaecentral\", \"uaenorth\", \"southafricanorth\", \"southafricawest\", \"switzerlandnorth\", \"switzerlandwest\", \"germanynorth\", \"germanywestcentral\", \"norwayeast\", \"norwaywest\"]
///       }
///     }
/// `),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			operator,
/// 			owner,
/// 		}))
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
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.blueprint.BlueprintFunctions;
/// import com.pulumi.azure.blueprint.inputs.GetDefinitionArgs;
/// import com.pulumi.azure.blueprint.inputs.GetPublishedVersionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.blueprint.inputs.AssignmentIdentityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var example = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var exampleGetDefinition = BlueprintFunctions.getDefinition(GetDefinitionArgs.builder()
///             .name("exampleBlueprint")
///             .scopeId(example.id())
///             .build());
///
///         final var exampleGetPublishedVersion = BlueprintFunctions.getPublishedVersion(GetPublishedVersionArgs.builder()
///             .scopeId(exampleGetDefinition.scopeId())
///             .blueprintName(exampleGetDefinition.name())
///             .version("v1.0.0")
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("exampleRG-bp")
///             .location("West Europe")
///             .tags(Map.of("Environment", "example"))
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .name("bp-user-example")
///             .build());
///
///         var operator = new com.pulumi.azure.authorization.Assignment("operator", com.pulumi.azure.authorization.AssignmentArgs.builder()
///             .scope(example.id())
///             .roleDefinitionName("Blueprint Operator")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var owner = new com.pulumi.azure.authorization.Assignment("owner", com.pulumi.azure.authorization.AssignmentArgs.builder()
///             .scope(example.id())
///             .roleDefinitionName("Owner")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var exampleAssignment = new com.pulumi.azure.blueprint.Assignment("exampleAssignment", com.pulumi.azure.blueprint.AssignmentArgs.builder()
///             .name("testAccBPAssignment")
///             .targetSubscriptionId(example.id())
///             .versionId(exampleGetPublishedVersion.id())
///             .location(exampleResourceGroup.location())
///             .lockMode("AllResourcesDoNotDelete")
///             .lockExcludePrincipals(current.objectId())
///             .identity(AssignmentIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .resourceGroups("""
///     {
///       \"ResourceGroup\": {
///         \"name\": \"exampleRG-bp\"
///       }
///     }
///             """)
///             .parameterValues("""
///     {
///       \"allowedlocationsforresourcegroups_listOfAllowedLocations\": {
///         \"value\": [\"westus\", \"westus2\", \"eastus\", \"centralus\", \"centraluseuap\", \"southcentralus\", \"northcentralus\", \"westcentralus\", \"eastus2\", \"eastus2euap\", \"brazilsouth\", \"brazilus\", \"northeurope\", \"westeurope\", \"eastasia\", \"southeastasia\", \"japanwest\", \"japaneast\", \"koreacentral\", \"koreasouth\", \"indiasouth\", \"indiawest\", \"indiacentral\", \"australiaeast\", \"australiasoutheast\", \"canadacentral\", \"canadaeast\", \"uknorth\", \"uksouth2\", \"uksouth\", \"ukwest\", \"francecentral\", \"francesouth\", \"australiacentral\", \"australiacentral2\", \"uaecentral\", \"uaenorth\", \"southafricanorth\", \"southafricawest\", \"switzerlandnorth\", \"switzerlandwest\", \"germanynorth\", \"germanywestcentral\", \"norwayeast\", \"norwaywest\"]
///       }
///     }
///             """)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     operator,
///                     owner)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: exampleRG-bp
///       location: West Europe
///       tags:
///         Environment: example
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       name: bp-user-example
///   operator:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${example.id}
///       roleDefinitionName: Blueprint Operator
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   owner:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${example.id}
///       roleDefinitionName: Owner
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   exampleAssignment:
///     type: azure:blueprint:Assignment
///     name: example
///     properties:
///       name: testAccBPAssignment
///       targetSubscriptionId: ${example.id}
///       versionId: ${exampleGetPublishedVersion.id}
///       location: ${exampleResourceGroup.location}
///       lockMode: AllResourcesDoNotDelete
///       lockExcludePrincipals:
///         - ${current.objectId}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       resourceGroups: |2
///             {
///               \"ResourceGroup\": {
///                 \"name\": \"exampleRG-bp\"
///               }
///             }
///       parameterValues: |2
///             {
///               \"allowedlocationsforresourcegroups_listOfAllowedLocations\": {
///                 \"value\": [\"westus\", \"westus2\", \"eastus\", \"centralus\", \"centraluseuap\", \"southcentralus\", \"northcentralus\", \"westcentralus\", \"eastus2\", \"eastus2euap\", \"brazilsouth\", \"brazilus\", \"northeurope\", \"westeurope\", \"eastasia\", \"southeastasia\", \"japanwest\", \"japaneast\", \"koreacentral\", \"koreasouth\", \"indiasouth\", \"indiawest\", \"indiacentral\", \"australiaeast\", \"australiasoutheast\", \"canadacentral\", \"canadaeast\", \"uknorth\", \"uksouth2\", \"uksouth\", \"ukwest\", \"francecentral\", \"francesouth\", \"australiacentral\", \"australiacentral2\", \"uaecentral\", \"uaenorth\", \"southafricanorth\", \"southafricawest\", \"switzerlandnorth\", \"switzerlandwest\", \"germanynorth\", \"germanywestcentral\", \"norwayeast\", \"norwaywest\"]
///               }
///             }
///     options:
///       dependsOn:
///         - ${operator}
///         - ${owner}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   exampleGetDefinition:
///     fn::invoke:
///       function: azure:blueprint:getDefinition
///       arguments:
///         name: exampleBlueprint
///         scopeId: ${example.id}
///   exampleGetPublishedVersion:
///     fn::invoke:
///       function: azure:blueprint:getPublishedVersion
///       arguments:
///         scopeId: ${exampleGetDefinition.scopeId}
///         blueprintName: ${exampleGetDefinition.name}
///         version: v1.0.0
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Blueprint` - 2018-11-01-preview
///
/// ## Import
///
/// Azure Blueprint Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:blueprint/assignment:Assignment example "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Blueprint/blueprintAssignments/assignSimpleBlueprint"
/// ```
class Assignment extends pulumi.CustomResource {
  /// The name of the blueprint assigned
  late final pulumi.Output<String> blueprintName;
  /// The Description on the Blueprint
  late final pulumi.Output<String> description;
  /// The display name of the blueprint
  late final pulumi.Output<String> displayName;
  /// An `identity` block as defined below.
  late final pulumi.Output<AssignmentIdentity> identity;
  /// The Azure location of the Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  late final pulumi.Output<List<String>?> lockExcludeActions;
  /// a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  late final pulumi.Output<List<String>?> lockExcludePrincipals;
  /// The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  late final pulumi.Output<String?> lockMode;
  /// The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// a JSON string to supply Blueprint Assignment parameter values.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  late final pulumi.Output<String?> parameterValues;
  /// a JSON string to supply the Blueprint Resource Group information.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  late final pulumi.Output<String?> resourceGroups;
  /// The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetSubscriptionId;
  late final pulumi.Output<String> type;
  /// The ID of the Published Version of the blueprint to be assigned.
  late final pulumi.Output<String> versionId;

  /// Creates a new [Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assignment]. {@macro pulumi_blueprint_assignment_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assignment(
    String name, {
    AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:blueprint/assignment:Assignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blueprintName = registerOutput<String>('blueprintName');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.identity = registerOutput<AssignmentIdentity>('identity');
    this.location = registerOutput<String>('location');
    this.lockExcludeActions = registerOutput<List<String>?>('lockExcludeActions');
    this.lockExcludePrincipals = registerOutput<List<String>?>('lockExcludePrincipals');
    this.lockMode = registerOutput<String?>('lockMode');
    this.name = registerOutput<String>('name');
    this.parameterValues = registerOutput<String?>('parameterValues');
    this.resourceGroups = registerOutput<String?>('resourceGroups');
    this.targetSubscriptionId = registerOutput<String>('targetSubscriptionId');
    this.type = registerOutput<String>('type');
    this.versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [Assignment] resource's state with the given [name] and [id].
  static Assignment get(
    String name,
    pulumi.Input<String> id, {
    AssignmentState? state,
  }) {
    return Assignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Assignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:blueprint/assignment:Assignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blueprintName = registerOutput<String>('blueprintName');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.identity = registerOutput<AssignmentIdentity>('identity');
    this.location = registerOutput<String>('location');
    this.lockExcludeActions = registerOutput<List<String>?>('lockExcludeActions');
    this.lockExcludePrincipals = registerOutput<List<String>?>('lockExcludePrincipals');
    this.lockMode = registerOutput<String?>('lockMode');
    this.name = registerOutput<String>('name');
    this.parameterValues = registerOutput<String?>('parameterValues');
    this.resourceGroups = registerOutput<String?>('resourceGroups');
    this.targetSubscriptionId = registerOutput<String>('targetSubscriptionId');
    this.type = registerOutput<String>('type');
    this.versionId = registerOutput<String>('versionId');
  }
}
