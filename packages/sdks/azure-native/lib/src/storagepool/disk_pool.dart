import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_pool_args.dart';
import 'system_metadata_response.dart';

/// Response for Disk Pool request.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Disk pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diskPool = new AzureNative.StoragePool.DiskPool("diskPool", new()
///     {
///         AvailabilityZones = new[]
///         {
///             "1",
///         },
///         DiskPoolName = "myDiskPool",
///         Disks = new[]
///         {
///             new AzureNative.StoragePool.Inputs.DiskArgs
///             {
///                 Id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0",
///             },
///             new AzureNative.StoragePool.Inputs.DiskArgs
///             {
///                 Id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///             },
///         },
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.StoragePool.Inputs.SkuArgs
///         {
///             Name = "Basic_V1",
///             Tier = "Basic",
///         },
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet",
///         Tags =
///         {
///             { "key", "value" },
///         },
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
/// 	storagepool "github.com/pulumi/pulumi-azure-native-sdk/storagepool/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagepool.NewDiskPool(ctx, "diskPool", &storagepool.DiskPoolArgs{
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 			DiskPoolName: pulumi.String("myDiskPool"),
/// 			Disks: storagepool.DiskArray{
/// 				&storagepool.DiskArgs{
/// 					Id: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0"),
/// 				},
/// 				&storagepool.DiskArgs{
/// 					Id: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &storagepool.SkuArgs{
/// 				Name: pulumi.String("Basic_V1"),
/// 				Tier: pulumi.String("Basic"),
/// 			},
/// 			SubnetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet"),
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
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagepool.DiskPool;
/// import com.pulumi.azurenative.storagepool.DiskPoolArgs;
/// import com.pulumi.azurenative.storagepool.inputs.DiskArgs;
/// import com.pulumi.azurenative.storagepool.inputs.SkuArgs;
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
///         var diskPool = new DiskPool("diskPool", DiskPoolArgs.builder()
///             .availabilityZones("1")
///             .diskPoolName("myDiskPool")
///             .disks(
///                 DiskArgs.builder()
///                     .id("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0")
///                     .build(),
///                 DiskArgs.builder()
///                     .id("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1")
///                     .build())
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Basic_V1")
///                 .tier("Basic")
///                 .build())
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet")
///             .tags(Map.of("key", "value"))
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
/// const diskPool = new azure_native.storagepool.DiskPool("diskPool", {
///     availabilityZones: ["1"],
///     diskPoolName: "myDiskPool",
///     disks: [
///         {
///             id: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0",
///         },
///         {
///             id: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///         },
///     ],
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "Basic_V1",
///         tier: "Basic",
///     },
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet",
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk_pool = azure_native.storagepool.DiskPool("diskPool",
///     availability_zones=["1"],
///     disk_pool_name="myDiskPool",
///     disks=[
///         {
///             "id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0",
///         },
///         {
///             "id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///         },
///     ],
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "Basic_V1",
///         "tier": "Basic",
///     },
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet",
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   diskPool:
///     type: azure-native:storagepool:DiskPool
///     properties:
///       availabilityZones:
///         - '1'
///       diskPoolName: myDiskPool
///       disks:
///         - id: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_0
///         - id: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1
///       location: westus
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Basic_V1
///         tier: Basic
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myvnet/subnets/mysubnet
///       tags:
///         key: value
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
/// $ pulumi import azure-native:storagepool:DiskPool myDiskPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StoragePool/diskPools/{diskPoolName}
/// ```
class DiskPool extends pulumi.CustomResource {
  /// List of additional capabilities for Disk Pool.
  late final pulumi.Output<List<String>?> additionalCapabilities;

  /// Logical zone for Disk Pool resource; example: ["1"].
  late final pulumi.Output<List<String>> availabilityZones;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of Azure Managed Disks to attach to a Disk Pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> disks;

  /// The geo-location where the resource lives.
  late final pulumi.Output<String> location;

  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  late final pulumi.Output<String> managedBy;

  /// List of Azure resource ids that manage this resource.
  late final pulumi.Output<List<String>> managedByExtended;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;

  /// Operational status of the Disk Pool.
  late final pulumi.Output<String> status;

  /// Azure Resource ID of a Subnet for the Disk Pool.
  late final pulumi.Output<String> subnetId;

  /// Resource metadata required by ARM RPC
  late final pulumi.Output<SystemMetadataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Sku tier
  late final pulumi.Output<String?> tier;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [DiskPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskPool]. {@macro pulumi_storagepool_disk_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskPool(
    String name, {
    DiskPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagepool:DiskPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities = registerOutput<List<String>?>(
      'additionalCapabilities',
    );
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disks = registerOutput<List<Map<String, dynamic>>?>('disks');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String>('managedBy');
    managedByExtended = registerOutput<List<String>>('managedByExtended');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    subnetId = registerOutput<String>('subnetId');
    systemData = registerOutput<SystemMetadataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String?>('tier');
    type = registerOutput<String>('type');
  }
}
