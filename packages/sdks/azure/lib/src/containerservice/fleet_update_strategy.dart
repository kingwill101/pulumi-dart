import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_args.dart';
import 'fleet_update_strategy_state.dart';

/// Manages a Kubernetes Fleet Update Strategy.
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
///     location: "westeurope",
/// });
/// const exampleKubernetesFleetManager = new azure.containerservice.KubernetesFleetManager("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// const exampleFleetUpdateStrategy = new azure.containerservice.FleetUpdateStrategy("example", {
///     name: "example",
///     kubernetesFleetManagerId: exampleKubernetesFleetManager.id,
///     stages: [{
///         name: "example-stage-1",
///         groups: [{
///             name: "example-group-1",
///         }],
///         afterStageWaitInSeconds: 21,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="westeurope")
/// example_kubernetes_fleet_manager = azure.containerservice.KubernetesFleetManager("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
/// example_fleet_update_strategy = azure.containerservice.FleetUpdateStrategy("example",
///     name="example",
///     kubernetes_fleet_manager_id=example_kubernetes_fleet_manager.id,
///     stages=[{
///         "name": "example-stage-1",
///         "groups": [{
///             "name": "example-group-1",
///         }],
///         "after_stage_wait_in_seconds": 21,
///     }])
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
///         Location = "westeurope",
///     });
///
///     var exampleKubernetesFleetManager = new Azure.ContainerService.KubernetesFleetManager("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFleetUpdateStrategy = new Azure.ContainerService.FleetUpdateStrategy("example", new()
///     {
///         Name = "example",
///         KubernetesFleetManagerId = exampleKubernetesFleetManager.Id,
///         Stages = new[]
///         {
///             new Azure.ContainerService.Inputs.FleetUpdateStrategyStageArgs
///             {
///                 Name = "example-stage-1",
///                 Groups = new[]
///                 {
///                     new Azure.ContainerService.Inputs.FleetUpdateStrategyStageGroupArgs
///                     {
///                         Name = "example-group-1",
///                     },
///                 },
///                 AfterStageWaitInSeconds = 21,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesFleetManager, err := containerservice.NewKubernetesFleetManager(ctx, "example", &containerservice.KubernetesFleetManagerArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewFleetUpdateStrategy(ctx, "example", &containerservice.FleetUpdateStrategyArgs{
/// 			Name:                     pulumi.String("example"),
/// 			KubernetesFleetManagerId: exampleKubernetesFleetManager.ID(),
/// 			Stages: containerservice.FleetUpdateStrategyStageArray{
/// 				&containerservice.FleetUpdateStrategyStageArgs{
/// 					Name: pulumi.String("example-stage-1"),
/// 					Groups: containerservice.FleetUpdateStrategyStageGroupArray{
/// 						&containerservice.FleetUpdateStrategyStageGroupArgs{
/// 							Name: pulumi.String("example-group-1"),
/// 						},
/// 					},
/// 					AfterStageWaitInSeconds: pulumi.Int(21),
/// 				},
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
/// import com.pulumi.azure.containerservice.KubernetesFleetManager;
/// import com.pulumi.azure.containerservice.KubernetesFleetManagerArgs;
/// import com.pulumi.azure.containerservice.FleetUpdateStrategy;
/// import com.pulumi.azure.containerservice.FleetUpdateStrategyArgs;
/// import com.pulumi.azure.containerservice.inputs.FleetUpdateStrategyStageArgs;
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
///             .location("westeurope")
///             .build());
///
///         var exampleKubernetesFleetManager = new KubernetesFleetManager("exampleKubernetesFleetManager", KubernetesFleetManagerArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFleetUpdateStrategy = new FleetUpdateStrategy("exampleFleetUpdateStrategy", FleetUpdateStrategyArgs.builder()
///             .name("example")
///             .kubernetesFleetManagerId(exampleKubernetesFleetManager.id())
///             .stages(FleetUpdateStrategyStageArgs.builder()
///                 .name("example-stage-1")
///                 .groups(FleetUpdateStrategyStageGroupArgs.builder()
///                     .name("example-group-1")
///                     .build())
///                 .afterStageWaitInSeconds(21)
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
///       location: westeurope
///   exampleKubernetesFleetManager:
///     type: azure:containerservice:KubernetesFleetManager
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///   exampleFleetUpdateStrategy:
///     type: azure:containerservice:FleetUpdateStrategy
///     name: example
///     properties:
///       name: example
///       kubernetesFleetManagerId: ${exampleKubernetesFleetManager.id}
///       stages:
///         - name: example-stage-1
///           groups:
///             - name: example-group-1
///           afterStageWaitInSeconds: 21
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2024-04-01
///
/// ## Import
///
/// Kubernetes Fleet Update Strategies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/fleetUpdateStrategy:FleetUpdateStrategy example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.ContainerService/fleets/fleet1/updateStrategies/updateStrategy1
/// ```
class FleetUpdateStrategy extends pulumi.CustomResource {
  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  late final pulumi.Output<String> kubernetesFleetManagerId;
  /// The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  late final pulumi.Output<String> name;
  /// One or more `stage` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> stages;

  /// Creates a new [FleetUpdateStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetUpdateStrategy]. {@macro pulumi_containerservice_fleet_update_strategy_fleet_update_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetUpdateStrategy(
    String name, {
    FleetUpdateStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/fleetUpdateStrategy:FleetUpdateStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kubernetesFleetManagerId = registerOutput<String>('kubernetesFleetManagerId');
    this.name = registerOutput<String>('name');
    stages = registerOutput<List<Map<String, dynamic>>>('stages');
  }

  /// Gets an existing [FleetUpdateStrategy] resource's state with the given [name] and [id].
  static FleetUpdateStrategy get(
    String name,
    pulumi.Input<String> id, {
    FleetUpdateStrategyState? state,
  }) {
    return FleetUpdateStrategy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FleetUpdateStrategy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/fleetUpdateStrategy:FleetUpdateStrategy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kubernetesFleetManagerId = registerOutput<String>('kubernetesFleetManagerId');
    this.name = registerOutput<String>('name');
    stages = registerOutput<List<Map<String, dynamic>>>('stages');
  }
}
