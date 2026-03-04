import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_standby_pool_args.dart';
import 'scale_set_standby_pool_elasticity_profile.dart';
import 'scale_set_standby_pool_state.dart';

/// Manages a Standby Pool for Virtual Machine Scale Sets.
/// &gt; **Note:** please follow the prerequisites mentioned in this [article](https://learn.microsoft.com/azure/virtual-machine-scale-sets/standby-pools-create?tabs=portal#prerequisites) before using this resource.
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
/// const exampleOrchestratedVirtualMachineScaleSet = new azure.compute.OrchestratedVirtualMachineScaleSet("example", {
///     name: "example-ovmss",
///     location: example.location,
///     resourceGroupName: example.name,
///     platformFaultDomainCount: 1,
///     zones: ["1"],
/// });
/// const exampleScaleSetStandbyPool = new azure.compute.ScaleSetStandbyPool("example", {
///     name: "example-spsvmp",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     attachedVirtualMachineScaleSetId: exampleOrchestratedVirtualMachineScaleSet.id,
///     virtualMachineState: "Running",
///     elasticityProfile: {
///         maxReadyCapacity: 10,
///         minReadyCapacity: 5,
///     },
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
///     location="West Europe")
/// example_orchestrated_virtual_machine_scale_set = azure.compute.OrchestratedVirtualMachineScaleSet("example",
///     name="example-ovmss",
///     location=example.location,
///     resource_group_name=example.name,
///     platform_fault_domain_count=1,
///     zones=["1"])
/// example_scale_set_standby_pool = azure.compute.ScaleSetStandbyPool("example",
///     name="example-spsvmp",
///     resource_group_name=example.name,
///     location="West Europe",
///     attached_virtual_machine_scale_set_id=example_orchestrated_virtual_machine_scale_set.id,
///     virtual_machine_state="Running",
///     elasticity_profile={
///         "max_ready_capacity": 10,
///         "min_ready_capacity": 5,
///     },
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
///         Location = "West Europe",
///     });
///
///     var exampleOrchestratedVirtualMachineScaleSet = new Azure.Compute.OrchestratedVirtualMachineScaleSet("example", new()
///     {
///         Name = "example-ovmss",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PlatformFaultDomainCount = 1,
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
///     var exampleScaleSetStandbyPool = new Azure.Compute.ScaleSetStandbyPool("example", new()
///     {
///         Name = "example-spsvmp",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         AttachedVirtualMachineScaleSetId = exampleOrchestratedVirtualMachineScaleSet.Id,
///         VirtualMachineState = "Running",
///         ElasticityProfile = new Azure.Compute.Inputs.ScaleSetStandbyPoolElasticityProfileArgs
///         {
///             MaxReadyCapacity = 10,
///             MinReadyCapacity = 5,
///         },
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
/// 		exampleOrchestratedVirtualMachineScaleSet, err := compute.NewOrchestratedVirtualMachineScaleSet(ctx, "example", &compute.OrchestratedVirtualMachineScaleSetArgs{
/// 			Name:                     pulumi.String("example-ovmss"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			PlatformFaultDomainCount: pulumi.Int(1),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewScaleSetStandbyPool(ctx, "example", &compute.ScaleSetStandbyPoolArgs{
/// 			Name:                             pulumi.String("example-spsvmp"),
/// 			ResourceGroupName:                example.Name,
/// 			Location:                         pulumi.String("West Europe"),
/// 			AttachedVirtualMachineScaleSetId: exampleOrchestratedVirtualMachineScaleSet.ID(),
/// 			VirtualMachineState:              pulumi.String("Running"),
/// 			ElasticityProfile: &compute.ScaleSetStandbyPoolElasticityProfileArgs{
/// 				MaxReadyCapacity: pulumi.Int(10),
/// 				MinReadyCapacity: pulumi.Int(5),
/// 			},
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
/// import com.pulumi.azure.compute.OrchestratedVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.OrchestratedVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.ScaleSetStandbyPool;
/// import com.pulumi.azure.compute.ScaleSetStandbyPoolArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStandbyPoolElasticityProfileArgs;
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
///         var exampleOrchestratedVirtualMachineScaleSet = new OrchestratedVirtualMachineScaleSet("exampleOrchestratedVirtualMachineScaleSet", OrchestratedVirtualMachineScaleSetArgs.builder()
///             .name("example-ovmss")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .platformFaultDomainCount(1)
///             .zones("1")
///             .build());
///
///         var exampleScaleSetStandbyPool = new ScaleSetStandbyPool("exampleScaleSetStandbyPool", ScaleSetStandbyPoolArgs.builder()
///             .name("example-spsvmp")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .attachedVirtualMachineScaleSetId(exampleOrchestratedVirtualMachineScaleSet.id())
///             .virtualMachineState("Running")
///             .elasticityProfile(ScaleSetStandbyPoolElasticityProfileArgs.builder()
///                 .maxReadyCapacity(10)
///                 .minReadyCapacity(5)
///                 .build())
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
///       location: West Europe
///   exampleOrchestratedVirtualMachineScaleSet:
///     type: azure:compute:OrchestratedVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example-ovmss
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       platformFaultDomainCount: 1
///       zones:
///         - '1'
///   exampleScaleSetStandbyPool:
///     type: azure:compute:ScaleSetStandbyPool
///     name: example
///     properties:
///       name: example-spsvmp
///       resourceGroupName: ${example.name}
///       location: West Europe
///       attachedVirtualMachineScaleSetId: ${exampleOrchestratedVirtualMachineScaleSet.id}
///       virtualMachineState: Running
///       elasticityProfile:
///         maxReadyCapacity: 10
///         minReadyCapacity: 5
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StandbyPool` - 2025-03-01
///
/// ## Import
///
/// Standby Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/scaleSetStandbyPool:ScaleSetStandbyPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StandbyPool/standbyVirtualMachinePools/standbyVirtualMachinePool1
/// ```
class ScaleSetStandbyPool extends pulumi.CustomResource {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  late final pulumi.Output<String> attachedVirtualMachineScaleSetId;

  /// An `elasticity_profile` block as defined below.
  late final pulumi.Output<ScaleSetStandbyPoolElasticityProfile>
  elasticityProfile;

  /// Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Standby Pool.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  late final pulumi.Output<String> virtualMachineState;

  /// Creates a new [ScaleSetStandbyPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScaleSetStandbyPool]. {@macro pulumi_compute_scale_set_standby_pool_scale_set_standby_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScaleSetStandbyPool(
    String name, {
    ScaleSetStandbyPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/scaleSetStandbyPool:ScaleSetStandbyPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachedVirtualMachineScaleSetId = registerOutput<String>(
      'attachedVirtualMachineScaleSetId',
    );
    elasticityProfile = registerOutput<ScaleSetStandbyPoolElasticityProfile>(
      'elasticityProfile',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineState = registerOutput<String>('virtualMachineState');
  }

  /// Gets an existing [ScaleSetStandbyPool] resource's state with the given [name] and [id].
  static ScaleSetStandbyPool get(
    String name,
    pulumi.Input<String> id, {
    ScaleSetStandbyPoolState? state,
  }) {
    return ScaleSetStandbyPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScaleSetStandbyPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/scaleSetStandbyPool:ScaleSetStandbyPool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachedVirtualMachineScaleSetId = registerOutput<String>(
      'attachedVirtualMachineScaleSetId',
    );
    elasticityProfile = registerOutput<ScaleSetStandbyPoolElasticityProfile>(
      'elasticityProfile',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineState = registerOutput<String>('virtualMachineState');
  }
}
