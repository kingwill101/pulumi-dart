import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_args.dart';
import 'capacity_sku.dart';
import 'capacity_state.dart';

/// Manages a Fabric Capacity.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCapacity = new azure.fabric.Capacity("example", {
///     name: "exampleffc",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     administrationMembers: [current.then(current => current.objectId)],
///     sku: {
///         name: "F32",
///         tier: "Fabric",
///     },
///     tags: {
///         environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_capacity = azure.fabric.Capacity("example",
///     name="exampleffc",
///     resource_group_name=example.name,
///     location="West Europe",
///     administration_members=[current.object_id],
///     sku={
///         "name": "F32",
///         "tier": "Fabric",
///     },
///     tags={
///         "environment": "test",
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCapacity = new Azure.Fabric.Capacity("example", new()
///     {
///         Name = "exampleffc",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         AdministrationMembers = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Sku = new Azure.Fabric.Inputs.CapacitySkuArgs
///         {
///             Name = "F32",
///             Tier = "Fabric",
///         },
///         Tags =
///         {
///             { "environment", "test" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/fabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fabric.NewCapacity(ctx, "example", &fabric.CapacityArgs{
/// 			Name:              pulumi.String("exampleffc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			AdministrationMembers: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			Sku: &fabric.CapacitySkuArgs{
/// 				Name: pulumi.String("F32"),
/// 				Tier: pulumi.String("Fabric"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.fabric.Capacity;
/// import com.pulumi.azure.fabric.CapacityArgs;
/// import com.pulumi.azure.fabric.inputs.CapacitySkuArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCapacity = new Capacity("exampleCapacity", CapacityArgs.builder()
///             .name("exampleffc")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .administrationMembers(current.objectId())
///             .sku(CapacitySkuArgs.builder()
///                 .name("F32")
///                 .tier("Fabric")
///                 .build())
///             .tags(Map.of("environment", "test"))
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
///   exampleCapacity:
///     type: azure:fabric:Capacity
///     name: example
///     properties:
///       name: exampleffc
///       resourceGroupName: ${example.name}
///       location: West Europe
///       administrationMembers:
///         - ${current.objectId}
///       sku:
///         name: F32
///         tier: Fabric
///       tags:
///         environment: test
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Fabric` - 2023-11-01
///
/// ## Import
///
/// Fabric Capacities can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:fabric/capacity:Capacity example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Fabric/capacities/capacity1
/// ```
class Capacity extends pulumi.CustomResource {
  /// An array of administrator user identities. The member must be an Entra user or a service principal.
  ///
  /// > **Note:** If the member is an Entra user, use user principal name (UPN) format. If the user is a service principal, use object ID.
  late final pulumi.Output<List<String>?> administrationMembers;
  /// The supported Azure location where the Fabric Capacity exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for the Fabric Capacity. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which to create the Fabric Capacity. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` block as defined below.
  late final pulumi.Output<CapacitySku> sku;
  /// A mapping of tags to assign to the Fabric Capacity.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Capacity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Capacity]. {@macro pulumi_fabric_capacity_capacity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Capacity(
    String name, {
    CapacityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:fabric/capacity:Capacity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administrationMembers = registerOutput<List<String>?>('administrationMembers');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<CapacitySku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Capacity] resource's state with the given [name] and [id].
  static Capacity get(
    String name,
    pulumi.Input<String> id, {
    CapacityState? state,
  }) {
    return Capacity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Capacity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:fabric/capacity:Capacity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administrationMembers = registerOutput<List<String>?>('administrationMembers');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<CapacitySku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
