import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_traffic_collector_args.dart';
import 'azure_traffic_collector_state.dart';

/// Manages a Network Function Azure Traffic Collector.
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
///     location: "West US",
/// });
/// const exampleAzureTrafficCollector = new azure.networkfunction.AzureTrafficCollector("example", {
///     name: "example-nfatc",
///     resourceGroupName: example.name,
///     location: "West US",
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West US")
/// example_azure_traffic_collector = azure.networkfunction.AzureTrafficCollector("example",
///     name="example-nfatc",
///     resource_group_name=example.name,
///     location="West US",
///     tags={
///         "key": "value",
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
///         Location = "West US",
///     });
///
///     var exampleAzureTrafficCollector = new Azure.NetworkFunction.AzureTrafficCollector("example", new()
///     {
///         Name = "example-nfatc",
///         ResourceGroupName = example.Name,
///         Location = "West US",
///         Tags =
///         {
///             { "key", "value" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/networkfunction"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfunction.NewAzureTrafficCollector(ctx, "example", &networkfunction.AzureTrafficCollectorArgs{
/// 			Name:              pulumi.String("example-nfatc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West US"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.networkfunction.AzureTrafficCollector;
/// import com.pulumi.azure.networkfunction.AzureTrafficCollectorArgs;
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
///             .location("West US")
///             .build());
///
///         var exampleAzureTrafficCollector = new AzureTrafficCollector("exampleAzureTrafficCollector", AzureTrafficCollectorArgs.builder()
///             .name("example-nfatc")
///             .resourceGroupName(example.name())
///             .location("West US")
///             .tags(Map.of("key", "value"))
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
///       location: West US
///   exampleAzureTrafficCollector:
///     type: azure:networkfunction:AzureTrafficCollector
///     name: example
///     properties:
///       name: example-nfatc
///       resourceGroupName: ${example.name}
///       location: West US
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetworkFunction` - 2022-11-01
///
/// ## Import
///
/// Network Function Azure Traffic Collector can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:networkfunction/azureTrafficCollector:AzureTrafficCollector example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.NetworkFunction/azureTrafficCollectors/azureTrafficCollector1
/// ```
class AzureTrafficCollector extends pulumi.CustomResource {
  /// The list of Resource IDs of collector policies.
  late final pulumi.Output<List<String>> collectorPolicyIds;
  /// Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Network Function Azure Traffic Collector.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Resource ID of virtual hub.
  late final pulumi.Output<List<String>> virtualHubIds;

  /// Creates a new [AzureTrafficCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureTrafficCollector]. {@macro pulumi_networkfunction_azure_traffic_collector_azure_traffic_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureTrafficCollector(
    String name, {
    AzureTrafficCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:networkfunction/azureTrafficCollector:AzureTrafficCollector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectorPolicyIds = registerOutput<List<String>>('collectorPolicyIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualHubIds = registerOutput<List<String>>('virtualHubIds');
  }

  /// Gets an existing [AzureTrafficCollector] resource's state with the given [name] and [id].
  static AzureTrafficCollector get(
    String name,
    pulumi.Input<String> id, {
    AzureTrafficCollectorState? state,
  }) {
    return AzureTrafficCollector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AzureTrafficCollector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:networkfunction/azureTrafficCollector:AzureTrafficCollector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectorPolicyIds = registerOutput<List<String>>('collectorPolicyIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualHubIds = registerOutput<List<String>>('virtualHubIds');
  }
}
