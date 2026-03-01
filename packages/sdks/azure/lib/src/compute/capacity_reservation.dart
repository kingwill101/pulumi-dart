import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_args.dart';
import 'capacity_reservation_sku.dart';
import 'capacity_reservation_state.dart';

/// Manages a Capacity Reservation within a Capacity Reservation Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleCapacityReservationGroup = new azure.compute.CapacityReservationGroup("example", {
///     name: "example-capacity-reservation-group",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleCapacityReservation = new azure.compute.CapacityReservation("example", {
///     name: "example-capacity-reservation",
///     capacityReservationGroupId: exampleCapacityReservationGroup.id,
///     sku: {
///         name: "Standard_D2s_v3",
///         capacity: 1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_capacity_reservation_group = azure.compute.CapacityReservationGroup("example",
///     name="example-capacity-reservation-group",
///     resource_group_name=example.name,
///     location=example.location)
/// example_capacity_reservation = azure.compute.CapacityReservation("example",
///     name="example-capacity-reservation",
///     capacity_reservation_group_id=example_capacity_reservation_group.id,
///     sku={
///         "name": "Standard_D2s_v3",
///         "capacity": 1,
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleCapacityReservationGroup = new Azure.Compute.CapacityReservationGroup("example", new()
///     {
///         Name = "example-capacity-reservation-group",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleCapacityReservation = new Azure.Compute.CapacityReservation("example", new()
///     {
///         Name = "example-capacity-reservation",
///         CapacityReservationGroupId = exampleCapacityReservationGroup.Id,
///         Sku = new Azure.Compute.Inputs.CapacityReservationSkuArgs
///         {
///             Name = "Standard_D2s_v3",
///             Capacity = 1,
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
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCapacityReservationGroup, err := compute.NewCapacityReservationGroup(ctx, "example", &compute.CapacityReservationGroupArgs{
/// 			Name:              pulumi.String("example-capacity-reservation-group"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewCapacityReservation(ctx, "example", &compute.CapacityReservationArgs{
/// 			Name:                       pulumi.String("example-capacity-reservation"),
/// 			CapacityReservationGroupId: exampleCapacityReservationGroup.ID(),
/// 			Sku: &compute.CapacityReservationSkuArgs{
/// 				Name:     pulumi.String("Standard_D2s_v3"),
/// 				Capacity: pulumi.Int(1),
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
/// import com.pulumi.azure.compute.CapacityReservationGroup;
/// import com.pulumi.azure.compute.CapacityReservationGroupArgs;
/// import com.pulumi.azure.compute.CapacityReservation;
/// import com.pulumi.azure.compute.CapacityReservationArgs;
/// import com.pulumi.azure.compute.inputs.CapacityReservationSkuArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleCapacityReservationGroup = new CapacityReservationGroup("exampleCapacityReservationGroup", CapacityReservationGroupArgs.builder()
///             .name("example-capacity-reservation-group")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleCapacityReservation = new CapacityReservation("exampleCapacityReservation", CapacityReservationArgs.builder()
///             .name("example-capacity-reservation")
///             .capacityReservationGroupId(exampleCapacityReservationGroup.id())
///             .sku(CapacityReservationSkuArgs.builder()
///                 .name("Standard_D2s_v3")
///                 .capacity(1)
///                 .build())
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
///       name: example-rg
///       location: West Europe
///   exampleCapacityReservationGroup:
///     type: azure:compute:CapacityReservationGroup
///     name: example
///     properties:
///       name: example-capacity-reservation-group
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleCapacityReservation:
///     type: azure:compute:CapacityReservation
///     name: example
///     properties:
///       name: example-capacity-reservation
///       capacityReservationGroupId: ${exampleCapacityReservationGroup.id}
///       sku:
///         name: Standard_D2s_v3
///         capacity: 1
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-01
///
/// ## Import
///
/// Capacity Reservations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/capacityReservation:CapacityReservation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/capacityReservationGroups/capacityReservationGroup1/capacityReservations/capacityReservation1
/// ```
class CapacityReservation extends pulumi.CustomResource {
  /// The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> capacityReservationGroupId;
  /// Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `sku` block as defined below.
  late final pulumi.Output<CapacityReservationSku> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> zone;

  /// Creates a new [CapacityReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservation]. {@macro pulumi_compute_capacity_reservation_capacity_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacityReservationGroupId = registerOutput<String>('capacityReservationGroupId');
    this.name = registerOutput<String>('name');
    this.sku = registerOutput<CapacityReservationSku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [CapacityReservation] resource's state with the given [name] and [id].
  static CapacityReservation get(
    String name,
    pulumi.Input<String> id, {
    CapacityReservationState? state,
  }) {
    return CapacityReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacityReservationGroupId = registerOutput<String>('capacityReservationGroupId');
    this.name = registerOutput<String>('name');
    this.sku = registerOutput<CapacityReservationSku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zone = registerOutput<String?>('zone');
  }
}
