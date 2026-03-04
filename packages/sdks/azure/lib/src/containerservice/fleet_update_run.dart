import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_run_args.dart';
import 'fleet_update_run_managed_cluster_update.dart';
import 'fleet_update_run_state.dart';

/// Manages a Kubernetes Fleet Update Run.
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
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "example",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_DS2_v2",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleFleetMember = new azure.containerservice.FleetMember("example", {
///     name: "example",
///     kubernetesFleetId: exampleKubernetesFleetManager.id,
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     group: "example-group",
/// });
/// const exampleFleetUpdateRun = new azure.containerservice.FleetUpdateRun("example", {
///     name: "example",
///     kubernetesFleetManagerId: exampleKubernetesFleetManager.id,
///     managedClusterUpdate: {
///         upgrade: {
///             type: "Full",
///             kubernetesVersion: "1.27",
///         },
///         nodeImageSelection: {
///             type: "Latest",
///         },
///     },
///     stages: [{
///         name: "example",
///         groups: [{
///             name: "example-group",
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
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="example",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_DS2_v2",
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_fleet_member = azure.containerservice.FleetMember("example",
///     name="example",
///     kubernetes_fleet_id=example_kubernetes_fleet_manager.id,
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     group="example-group")
/// example_fleet_update_run = azure.containerservice.FleetUpdateRun("example",
///     name="example",
///     kubernetes_fleet_manager_id=example_kubernetes_fleet_manager.id,
///     managed_cluster_update={
///         "upgrade": {
///             "type": "Full",
///             "kubernetes_version": "1.27",
///         },
///         "node_image_selection": {
///             "type": "Latest",
///         },
///     },
///     stages=[{
///         "name": "example",
///         "groups": [{
///             "name": "example-group",
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
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "example",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_DS2_v2",
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleFleetMember = new Azure.ContainerService.FleetMember("example", new()
///     {
///         Name = "example",
///         KubernetesFleetId = exampleKubernetesFleetManager.Id,
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         Group = "example-group",
///     });
///
///     var exampleFleetUpdateRun = new Azure.ContainerService.FleetUpdateRun("example", new()
///     {
///         Name = "example",
///         KubernetesFleetManagerId = exampleKubernetesFleetManager.Id,
///         ManagedClusterUpdate = new Azure.ContainerService.Inputs.FleetUpdateRunManagedClusterUpdateArgs
///         {
///             Upgrade = new Azure.ContainerService.Inputs.FleetUpdateRunManagedClusterUpdateUpgradeArgs
///             {
///                 Type = "Full",
///                 KubernetesVersion = "1.27",
///             },
///             NodeImageSelection = new Azure.ContainerService.Inputs.FleetUpdateRunManagedClusterUpdateNodeImageSelectionArgs
///             {
///                 Type = "Latest",
///             },
///         },
///         Stages = new[]
///         {
///             new Azure.ContainerService.Inputs.FleetUpdateRunStageArgs
///             {
///                 Name = "example",
///                 Groups = new[]
///                 {
///                     new Azure.ContainerService.Inputs.FleetUpdateRunStageGroupArgs
///                     {
///                         Name = "example-group",
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
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("example"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_DS2_v2"),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewFleetMember(ctx, "example", &containerservice.FleetMemberArgs{
/// 			Name:                pulumi.String("example"),
/// 			KubernetesFleetId:   exampleKubernetesFleetManager.ID(),
/// 			KubernetesClusterId: exampleKubernetesCluster.ID(),
/// 			Group:               pulumi.String("example-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewFleetUpdateRun(ctx, "example", &containerservice.FleetUpdateRunArgs{
/// 			Name:                     pulumi.String("example"),
/// 			KubernetesFleetManagerId: exampleKubernetesFleetManager.ID(),
/// 			ManagedClusterUpdate: &containerservice.FleetUpdateRunManagedClusterUpdateArgs{
/// 				Upgrade: &containerservice.FleetUpdateRunManagedClusterUpdateUpgradeArgs{
/// 					Type:              pulumi.String("Full"),
/// 					KubernetesVersion: pulumi.String("1.27"),
/// 				},
/// 				NodeImageSelection: &containerservice.FleetUpdateRunManagedClusterUpdateNodeImageSelectionArgs{
/// 					Type: pulumi.String("Latest"),
/// 				},
/// 			},
/// 			Stages: containerservice.FleetUpdateRunStageArray{
/// 				&containerservice.FleetUpdateRunStageArgs{
/// 					Name: pulumi.String("example"),
/// 					Groups: containerservice.FleetUpdateRunStageGroupArray{
/// 						&containerservice.FleetUpdateRunStageGroupArgs{
/// 							Name: pulumi.String("example-group"),
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
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.FleetMember;
/// import com.pulumi.azure.containerservice.FleetMemberArgs;
/// import com.pulumi.azure.containerservice.FleetUpdateRun;
/// import com.pulumi.azure.containerservice.FleetUpdateRunArgs;
/// import com.pulumi.azure.containerservice.inputs.FleetUpdateRunManagedClusterUpdateArgs;
/// import com.pulumi.azure.containerservice.inputs.FleetUpdateRunManagedClusterUpdateUpgradeArgs;
/// import com.pulumi.azure.containerservice.inputs.FleetUpdateRunManagedClusterUpdateNodeImageSelectionArgs;
/// import com.pulumi.azure.containerservice.inputs.FleetUpdateRunStageArgs;
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
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("example")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleFleetMember = new FleetMember("exampleFleetMember", FleetMemberArgs.builder()
///             .name("example")
///             .kubernetesFleetId(exampleKubernetesFleetManager.id())
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .group("example-group")
///             .build());
///
///         var exampleFleetUpdateRun = new FleetUpdateRun("exampleFleetUpdateRun", FleetUpdateRunArgs.builder()
///             .name("example")
///             .kubernetesFleetManagerId(exampleKubernetesFleetManager.id())
///             .managedClusterUpdate(FleetUpdateRunManagedClusterUpdateArgs.builder()
///                 .upgrade(FleetUpdateRunManagedClusterUpdateUpgradeArgs.builder()
///                     .type("Full")
///                     .kubernetesVersion("1.27")
///                     .build())
///                 .nodeImageSelection(FleetUpdateRunManagedClusterUpdateNodeImageSelectionArgs.builder()
///                     .type("Latest")
///                     .build())
///                 .build())
///             .stages(FleetUpdateRunStageArgs.builder()
///                 .name("example")
///                 .groups(FleetUpdateRunStageGroupArgs.builder()
///                     .name("example-group")
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
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: example
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_DS2_v2
///       identity:
///         type: SystemAssigned
///   exampleFleetMember:
///     type: azure:containerservice:FleetMember
///     name: example
///     properties:
///       name: example
///       kubernetesFleetId: ${exampleKubernetesFleetManager.id}
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       group: example-group
///   exampleFleetUpdateRun:
///     type: azure:containerservice:FleetUpdateRun
///     name: example
///     properties:
///       name: example
///       kubernetesFleetManagerId: ${exampleKubernetesFleetManager.id}
///       managedClusterUpdate:
///         upgrade:
///           type: Full
///           kubernetesVersion: '1.27'
///         nodeImageSelection:
///           type: Latest
///       stages:
///         - name: example
///           groups:
///             - name: example-group
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
/// Kubernetes Fleet Update Runs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/fleetUpdateRun:FleetUpdateRun example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.ContainerService/fleets/fleet1/updateRuns/updateRun1
/// ```
class FleetUpdateRun extends pulumi.CustomResource {
  /// The ID of the Fleet Update Strategy. Only one of `fleet_update_strategy_id` or `stage` can be specified.
  late final pulumi.Output<String?> fleetUpdateStrategyId;

  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Run to be created.
  late final pulumi.Output<String> kubernetesFleetManagerId;

  /// A `managed_cluster_update` block as defined below.
  late final pulumi.Output<FleetUpdateRunManagedClusterUpdate>
  managedClusterUpdate;

  /// The name which should be used for this Kubernetes Fleet Update Run. Changing this forces a new Kubernetes Fleet Update Run to be created.
  late final pulumi.Output<String> name;

  /// One or more `stage` blocks as defined below. Only one of `stage` or `fleet_update_strategy_id` can be specified.
  late final pulumi.Output<List<Map<String, dynamic>>?> stages;

  /// Creates a new [FleetUpdateRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetUpdateRun]. {@macro pulumi_containerservice_fleet_update_run_fleet_update_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetUpdateRun(
    String name, {
    FleetUpdateRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/fleetUpdateRun:FleetUpdateRun',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fleetUpdateStrategyId = registerOutput<String?>('fleetUpdateStrategyId');
    kubernetesFleetManagerId = registerOutput<String>(
      'kubernetesFleetManagerId',
    );
    managedClusterUpdate = registerOutput<FleetUpdateRunManagedClusterUpdate>(
      'managedClusterUpdate',
    );
    this.name = registerOutput<String>('name');
    stages = registerOutput<List<Map<String, dynamic>>?>('stages');
  }

  /// Gets an existing [FleetUpdateRun] resource's state with the given [name] and [id].
  static FleetUpdateRun get(
    String name,
    pulumi.Input<String> id, {
    FleetUpdateRunState? state,
  }) {
    return FleetUpdateRun._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FleetUpdateRun._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/fleetUpdateRun:FleetUpdateRun',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fleetUpdateStrategyId = registerOutput<String?>('fleetUpdateStrategyId');
    kubernetesFleetManagerId = registerOutput<String>(
      'kubernetesFleetManagerId',
    );
    managedClusterUpdate = registerOutput<FleetUpdateRunManagedClusterUpdate>(
      'managedClusterUpdate',
    );
    this.name = registerOutput<String>('name');
    stages = registerOutput<List<Map<String, dynamic>>?>('stages');
  }
}
