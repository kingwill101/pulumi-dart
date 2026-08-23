import 'package:pulumi/pulumi.dart' as pulumi;
import 'services_account_args.dart';
import 'services_account_state.dart';

/// Manages a Microsoft Graph Services Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example-app"});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleServicesAccount = new azure.graph.ServicesAccount("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     applicationId: example.applicationId,
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example-app")
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_services_account = azure.graph.ServicesAccount("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     application_id=example.application_id,
///     tags={
///         "environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example-app",
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServicesAccount = new Azure.Graph.ServicesAccount("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ApplicationId = example.ApplicationId,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/graph"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = graph.NewServicesAccount(ctx, "example", &graph.ServicesAccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ApplicationId:     example.ApplicationId,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_application" "example" {
///   display_name = "example-app"
/// }
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_graph_servicesaccount" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_id      = azuread_application.example.applicationId
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.graph.ServicesAccount;
/// import com.pulumi.azure.graph.ServicesAccountArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example-app")
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleServicesAccount = new ServicesAccount("exampleServicesAccount", ServicesAccountArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .applicationId(example.applicationId())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example-app
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleServicesAccount:
///     type: azure:graph:ServicesAccount
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       applicationId: ${example.applicationId}
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.GraphServices` - 2023-04-13
///
/// ## Import
///
/// An existing Account can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:graph/servicesAccount:ServicesAccount example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.GraphServices/accounts/account1
/// ```
class ServicesAccount extends pulumi.CustomResource {
  /// Customer owned application ID. Changing this forces a new Account to be created.
  late final pulumi.Output<String> applicationId;
  /// Billing Plan Id.
  late final pulumi.Output<String> billingPlanId;
  /// Specifies the name of this Account. Changing this forces a new Account to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ServicesAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicesAccount]. {@macro pulumi_graph_services_account_services_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicesAccount(
    String name, {
    ServicesAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:graph/servicesAccount:ServicesAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    billingPlanId = registerOutput<String>('billingPlanId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ServicesAccount] resource's state with the given [name] and [id].
  static ServicesAccount get(
    String name,
    pulumi.Input<String> id, {
    ServicesAccountState? state,
  }) {
    return ServicesAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicesAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:graph/servicesAccount:ServicesAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    billingPlanId = registerOutput<String>('billingPlanId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
