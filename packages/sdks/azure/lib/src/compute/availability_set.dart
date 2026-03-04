import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_set_args.dart';
import 'availability_set_state.dart';

/// Manages an Availability Set for Virtual Machines.
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
/// const exampleAvailabilitySet = new azure.compute.AvailabilitySet("example", {
///     name: "example-aset",
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
/// example_availability_set = azure.compute.AvailabilitySet("example",
///     name="example-aset",
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
///     var exampleAvailabilitySet = new Azure.Compute.AvailabilitySet("example", new()
///     {
///         Name = "example-aset",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = compute.NewAvailabilitySet(ctx, "example", &compute.AvailabilitySetArgs{
/// 			Name:              pulumi.String("example-aset"),
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
/// import com.pulumi.azure.compute.AvailabilitySet;
/// import com.pulumi.azure.compute.AvailabilitySetArgs;
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
///         var exampleAvailabilitySet = new AvailabilitySet("exampleAvailabilitySet", AvailabilitySetArgs.builder()
///             .name("example-aset")
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
///   exampleAvailabilitySet:
///     type: azure:compute:AvailabilitySet
///     name: example
///     properties:
///       name: example-aset
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
/// * `Microsoft.Compute` - 2024-03-01
///
/// ## Import
///
/// Availability Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/availabilitySet:AvailabilitySet group1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/availabilitySets/webAvailSet
/// ```
class AvailabilitySet extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> managed;

  /// Specifies the name of the availability set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  late final pulumi.Output<int?> platformFaultDomainCount;

  /// Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Update Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  late final pulumi.Output<int?> platformUpdateDomainCount;

  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> proximityPlacementGroupId;

  /// The name of the resource group in which to create the availability set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AvailabilitySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvailabilitySet]. {@macro pulumi_compute_availability_set_availability_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvailabilitySet(
    String name, {
    AvailabilitySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/availabilitySet:AvailabilitySet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    managed = registerOutput<bool?>('managed');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int?>('platformFaultDomainCount');
    platformUpdateDomainCount = registerOutput<int?>(
      'platformUpdateDomainCount',
    );
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AvailabilitySet] resource's state with the given [name] and [id].
  static AvailabilitySet get(
    String name,
    pulumi.Input<String> id, {
    AvailabilitySetState? state,
  }) {
    return AvailabilitySet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AvailabilitySet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/availabilitySet:AvailabilitySet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    managed = registerOutput<bool?>('managed');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int?>('platformFaultDomainCount');
    platformUpdateDomainCount = registerOutput<int?>(
      'platformUpdateDomainCount',
    );
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
