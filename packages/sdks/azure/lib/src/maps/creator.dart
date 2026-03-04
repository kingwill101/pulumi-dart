import 'package:pulumi/pulumi.dart' as pulumi;
import 'creator_args.dart';
import 'creator_state.dart';

/// Manages an Azure Maps Creator.
///
/// &gt; **Note:** The `azure.maps.Creator` resource has been deprecated because the service is retiring from 2024-09-23 and will be removed in v5.0 of the AzureRM Provider.
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
/// const exampleAccount = new azure.maps.Account("example", {
///     name: "example-maps-account",
///     resourceGroupName: example.name,
///     skuName: "G2",
///     tags: {
///         environment: "Test",
///     },
/// });
/// const exampleCreator = new azure.maps.Creator("example", {
///     name: "example-maps-creator",
///     mapsAccountId: exampleAccount.id,
///     location: example.location,
///     storageUnits: 1,
///     tags: {
///         environment: "Test",
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
/// example_account = azure.maps.Account("example",
///     name="example-maps-account",
///     resource_group_name=example.name,
///     sku_name="G2",
///     tags={
///         "environment": "Test",
///     })
/// example_creator = azure.maps.Creator("example",
///     name="example-maps-creator",
///     maps_account_id=example_account.id,
///     location=example.location,
///     storage_units=1,
///     tags={
///         "environment": "Test",
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
///     var exampleAccount = new Azure.Maps.Account("example", new()
///     {
///         Name = "example-maps-account",
///         ResourceGroupName = example.Name,
///         SkuName = "G2",
///         Tags =
///         {
///             { "environment", "Test" },
///         },
///     });
///
///     var exampleCreator = new Azure.Maps.Creator("example", new()
///     {
///         Name = "example-maps-creator",
///         MapsAccountId = exampleAccount.Id,
///         Location = example.Location,
///         StorageUnits = 1,
///         Tags =
///         {
///             { "environment", "Test" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maps"
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
/// 		exampleAccount, err := maps.NewAccount(ctx, "example", &maps.AccountArgs{
/// 			Name:              pulumi.String("example-maps-account"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("G2"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = maps.NewCreator(ctx, "example", &maps.CreatorArgs{
/// 			Name:          pulumi.String("example-maps-creator"),
/// 			MapsAccountId: exampleAccount.ID(),
/// 			Location:      example.Location,
/// 			StorageUnits:  pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Test"),
/// 			},
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.maps.Account;
/// import com.pulumi.azure.maps.AccountArgs;
/// import com.pulumi.azure.maps.Creator;
/// import com.pulumi.azure.maps.CreatorArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-maps-account")
///             .resourceGroupName(example.name())
///             .skuName("G2")
///             .tags(Map.of("environment", "Test"))
///             .build());
///
///         var exampleCreator = new Creator("exampleCreator", CreatorArgs.builder()
///             .name("example-maps-creator")
///             .mapsAccountId(exampleAccount.id())
///             .location(example.location())
///             .storageUnits(1)
///             .tags(Map.of("environment", "Test"))
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
///   exampleAccount:
///     type: azure:maps:Account
///     name: example
///     properties:
///       name: example-maps-account
///       resourceGroupName: ${example.name}
///       skuName: G2
///       tags:
///         environment: Test
///   exampleCreator:
///     type: azure:maps:Creator
///     name: example
///     properties:
///       name: example-maps-creator
///       mapsAccountId: ${exampleAccount.id}
///       location: ${example.location}
///       storageUnits: 1
///       tags:
///         environment: Test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maps` - 2023-06-01
///
/// ## Import
///
/// An Azure Maps Creators can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maps/creator:Creator example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Maps/accounts/account1/creators/creator1
/// ```
class Creator extends pulumi.CustomResource {
  /// The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> mapsAccountId;

  /// The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  late final pulumi.Output<int> storageUnits;

  /// A mapping of tags which should be assigned to the Azure Maps Creator.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Creator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Creator]. {@macro pulumi_maps_creator_creator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Creator(
    String name, {
    CreatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:maps/creator:Creator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    mapsAccountId = registerOutput<String>('mapsAccountId');
    this.name = registerOutput<String>('name');
    storageUnits = registerOutput<int>('storageUnits');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Creator] resource's state with the given [name] and [id].
  static Creator get(
    String name,
    pulumi.Input<String> id, {
    CreatorState? state,
  }) {
    return Creator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Creator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:maps/creator:Creator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    mapsAccountId = registerOutput<String>('mapsAccountId');
    this.name = registerOutput<String>('name');
    storageUnits = registerOutput<int>('storageUnits');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
