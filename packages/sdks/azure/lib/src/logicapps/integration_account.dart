import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_args.dart';
import 'integration_account_state.dart';

/// Manages a Logic App Integration Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleIntegrationAccount = new azure.logicapps.IntegrationAccount("example", {
///     name: "example-ia",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Standard",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_integration_account = azure.logicapps.IntegrationAccount("example",
///     name="example-ia",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Standard",
///     tags={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleIntegrationAccount = new Azure.LogicApps.IntegrationAccount("example", new()
///     {
///         Name = "example-ia",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Standard",
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewIntegrationAccount(ctx, "example", &logicapps.IntegrationAccountArgs{
/// 			Name:              pulumi.String("example-ia"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_logicapps_integrationaccount" "example" {
///   name                = "example-ia"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku_name            = "Standard"
///   tags = {
///     "foo" = "bar"
///   }
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
/// import com.pulumi.azure.logicapps.IntegrationAccount;
/// import com.pulumi.azure.logicapps.IntegrationAccountArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleIntegrationAccount = new IntegrationAccount("exampleIntegrationAccount", IntegrationAccountArgs.builder()
///             .name("example-ia")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Standard")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleIntegrationAccount:
///     type: azure:logicapps:IntegrationAccount
///     name: example
///     properties:
///       name: example-ia
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Standard
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccount:IntegrationAccount example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1
/// ```
class IntegrationAccount extends pulumi.CustomResource {
  /// The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created.
  late final pulumi.Output<String?> integrationServiceEnvironmentId;
  /// The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU name of the Logic App Integration Account. Possible Values are `Basic`, `Free` and `Standard`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the Logic App Integration Account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IntegrationAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccount]. {@macro pulumi_logicapps_integration_account_integration_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccount(
    String name, {
    IntegrationAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccount:IntegrationAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    integrationServiceEnvironmentId = registerOutput<String?>('integrationServiceEnvironmentId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IntegrationAccount] resource's state with the given [name] and [id].
  static IntegrationAccount get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountState? state,
  }) {
    return IntegrationAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccount:IntegrationAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    integrationServiceEnvironmentId = registerOutput<String?>('integrationServiceEnvironmentId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
