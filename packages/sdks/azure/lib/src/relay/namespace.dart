import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Manages an Azure Relay Namespace.
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
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
///     tags: {
///         source: "example",
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
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard",
///     tags={
///         "source": "example",
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
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///         Tags =
///         {
///             { "source", "example" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
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
/// 		_, err = relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
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
/// resource "azure_relay_namespace" "example" {
///   name                = "example-relay"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
///   tags = {
///     "source" = "example"
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
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .tags(Map.of("source", "example"))
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
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///       tags:
///         source: example
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// ## Import
///
/// Azure Relay Namespace's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:relay/namespace:Namespace relay1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Relay/namespaces/relay1
/// ```
class Namespace extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Identifier for Azure Insights metrics.
  late final pulumi.Output<String> metricId;
  /// Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> primaryConnectionString;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> primaryKey;
  /// The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> secondaryKey;
  /// The name of the SKU to use. At this time the only supported value is `Standard`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_relay_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:relay/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:relay/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
