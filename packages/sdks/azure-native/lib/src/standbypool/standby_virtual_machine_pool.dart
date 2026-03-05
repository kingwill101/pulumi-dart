import 'package:pulumi/pulumi.dart' as pulumi;
import 'standby_virtual_machine_pool_args.dart';
import 'standby_virtual_machine_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// A StandbyVirtualMachinePoolResource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-12-01-preview.
///
/// Other available API versions: 2023-12-01-preview, 2024-03-01-preview, 2025-03-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native standbypool [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StandbyVirtualMachinePools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var standbyVirtualMachinePool = new AzureNative.StandbyPool.StandbyVirtualMachinePool("standbyVirtualMachinePool", new()
///     {
///         AttachedVirtualMachineScaleSetId = "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss",
///         ElasticityProfile = new AzureNative.StandbyPool.Inputs.StandbyVirtualMachinePoolElasticityProfileArgs
///         {
///             MaxReadyCapacity = 304,
///             MinReadyCapacity = 300,
///         },
///         Location = "West US",
///         ResourceGroupName = "rgstandbypool",
///         StandbyVirtualMachinePoolName = "pool",
///         Tags = null,
///         VirtualMachineState = AzureNative.StandbyPool.VirtualMachineState.Running,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	standbypool "github.com/pulumi/pulumi-azure-native-sdk/standbypool/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := standbypool.NewStandbyVirtualMachinePool(ctx, "standbyVirtualMachinePool", &standbypool.StandbyVirtualMachinePoolArgs{
/// 			AttachedVirtualMachineScaleSetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss"),
/// 			ElasticityProfile: &standbypool.StandbyVirtualMachinePoolElasticityProfileArgs{
/// 				MaxReadyCapacity: pulumi.Float64(304),
/// 				MinReadyCapacity: pulumi.Float64(300),
/// 			},
/// 			Location:                      pulumi.String("West US"),
/// 			ResourceGroupName:             pulumi.String("rgstandbypool"),
/// 			StandbyVirtualMachinePoolName: pulumi.String("pool"),
/// 			Tags:                          pulumi.StringMap{},
/// 			VirtualMachineState:           pulumi.String(standbypool.VirtualMachineStateRunning),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.standbypool.StandbyVirtualMachinePool;
/// import com.pulumi.azurenative.standbypool.StandbyVirtualMachinePoolArgs;
/// import com.pulumi.azurenative.standbypool.inputs.StandbyVirtualMachinePoolElasticityProfileArgs;
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
///         var standbyVirtualMachinePool = new StandbyVirtualMachinePool("standbyVirtualMachinePool", StandbyVirtualMachinePoolArgs.builder()
///             .attachedVirtualMachineScaleSetId("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss")
///             .elasticityProfile(StandbyVirtualMachinePoolElasticityProfileArgs.builder()
///                 .maxReadyCapacity(304.0)
///                 .minReadyCapacity(300.0)
///                 .build())
///             .location("West US")
///             .resourceGroupName("rgstandbypool")
///             .standbyVirtualMachinePoolName("pool")
///             .tags(Map.ofEntries(
///             ))
///             .virtualMachineState("Running")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const standbyVirtualMachinePool = new azure_native.standbypool.StandbyVirtualMachinePool("standbyVirtualMachinePool", {
///     attachedVirtualMachineScaleSetId: "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss",
///     elasticityProfile: {
///         maxReadyCapacity: 304,
///         minReadyCapacity: 300,
///     },
///     location: "West US",
///     resourceGroupName: "rgstandbypool",
///     standbyVirtualMachinePoolName: "pool",
///     tags: {},
///     virtualMachineState: azure_native.standbypool.VirtualMachineState.Running,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// standby_virtual_machine_pool = azure_native.standbypool.StandbyVirtualMachinePool("standbyVirtualMachinePool",
///     attached_virtual_machine_scale_set_id="/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss",
///     elasticity_profile={
///         "max_ready_capacity": 304,
///         "min_ready_capacity": 300,
///     },
///     location="West US",
///     resource_group_name="rgstandbypool",
///     standby_virtual_machine_pool_name="pool",
///     tags={},
///     virtual_machine_state=azure_native.standbypool.VirtualMachineState.RUNNING)
///
/// ```
///
/// ```yaml
/// resources:
///   standbyVirtualMachinePool:
///     type: azure-native:standbypool:StandbyVirtualMachinePool
///     properties:
///       attachedVirtualMachineScaleSetId: /subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Compute/virtualMachineScaleSets/myVmss
///       elasticityProfile:
///         maxReadyCapacity: 304
///         minReadyCapacity: 300
///       location: West US
///       resourceGroupName: rgstandbypool
///       standbyVirtualMachinePoolName: pool
///       tags: {}
///       virtualMachineState: Running
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:standbypool:StandbyVirtualMachinePool pool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyVirtualMachinePools/{standbyVirtualMachinePoolName}
/// ```
class StandbyVirtualMachinePool extends pulumi.CustomResource {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  late final pulumi.Output<String?> attachedVirtualMachineScaleSetId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the elasticity profile of the standby virtual machine pools.
  late final pulumi.Output<StandbyVirtualMachinePoolElasticityProfileResponse?> elasticityProfile;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Specifies the desired state of virtual machines in the pool.
  late final pulumi.Output<String> virtualMachineState;

  /// Creates a new [StandbyVirtualMachinePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandbyVirtualMachinePool]. {@macro pulumi_standbypool_standby_virtual_machine_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandbyVirtualMachinePool(
    String name, {
    StandbyVirtualMachinePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:standbypool:StandbyVirtualMachinePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedVirtualMachineScaleSetId = registerOutput<String?>('attachedVirtualMachineScaleSetId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    elasticityProfile = registerOutput<StandbyVirtualMachinePoolElasticityProfileResponse?>('elasticityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandbyVirtualMachinePoolElasticityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualMachineState = registerOutput<String>('virtualMachineState');
  }
}
