import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_args.dart';
import 'placement_group_state.dart';

/// Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets.
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
/// const examplePlacementGroup = new azure.proximity.PlacementGroup("example", {
///     name: "exampleProximityPlacementGroup",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         environment: "Production",
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
/// example_placement_group = azure.proximity.PlacementGroup("example",
///     name="exampleProximityPlacementGroup",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "environment": "Production",
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
///     var examplePlacementGroup = new Azure.Proximity.PlacementGroup("example", new()
///     {
///         Name = "exampleProximityPlacementGroup",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/proximity"
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
/// 		_, err = proximity.NewPlacementGroup(ctx, "example", &proximity.PlacementGroupArgs{
/// 			Name:              pulumi.String("exampleProximityPlacementGroup"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.proximity.PlacementGroup;
/// import com.pulumi.azure.proximity.PlacementGroupArgs;
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
///         var examplePlacementGroup = new PlacementGroup("examplePlacementGroup", PlacementGroupArgs.builder()
///             .name("exampleProximityPlacementGroup")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("environment", "Production"))
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
///   examplePlacementGroup:
///     type: azure:proximity:PlacementGroup
///     name: example
///     properties:
///       name: exampleProximityPlacementGroup
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
/// * `Microsoft.Compute` - 2022-03-01
///
/// ## Import
///
/// Proximity Placement Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:proximity/placementGroup:PlacementGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Compute/proximityPlacementGroups/example-ppg
/// ```
class PlacementGroup extends pulumi.CustomResource {
  /// Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group.
  ///
  /// &gt; **Note:** Removing `allowed_vm_sizes` after it is set forces a new resource to be created.
  late final pulumi.Output<List<String>?> allowedVmSizes;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the proximity placement group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `allowed_vm_sizes` must be set when `zone` is specified.
  late final pulumi.Output<String?> zone;

  /// Creates a new [PlacementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementGroup]. {@macro pulumi_proximity_placement_group_placement_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:proximity/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedVmSizes = registerOutput<List<String>?>('allowedVmSizes');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [PlacementGroup] resource's state with the given [name] and [id].
  static PlacementGroup get(
    String name,
    pulumi.Input<String> id, {
    PlacementGroupState? state,
  }) {
    return PlacementGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PlacementGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:proximity/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedVmSizes = registerOutput<List<String>?>('allowedVmSizes');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String?>('zone');
  }
}
