import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_args.dart';
import 'file_system_encryption_key.dart';
import 'file_system_hsm_setting.dart';
import 'file_system_identity.dart';
import 'file_system_maintenance_window.dart';
import 'file_system_root_squash.dart';
import 'file_system_state.dart';

/// Manages an Azure Managed Lustre File System.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleFileSystem = new azure.managedlustre.FileSystem("example", {
///     name: "example-amlfs",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "AMLFS-Durable-Premium-250",
///     subnetId: exampleSubnet.id,
///     storageCapacityInTb: 8,
///     zones: ["2"],
///     maintenanceWindow: {
///         dayOfWeek: "Friday",
///         timeOfDayUtc: "22:00",
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
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_file_system = azure.managedlustre.FileSystem("example",
///     name="example-amlfs",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="AMLFS-Durable-Premium-250",
///     subnet_id=example_subnet.id,
///     storage_capacity_in_tb=8,
///     zones=["2"],
///     maintenance_window={
///         "day_of_week": "Friday",
///         "time_of_day_utc": "22:00",
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleFileSystem = new Azure.ManagedLustre.FileSystem("example", new()
///     {
///         Name = "example-amlfs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "AMLFS-Durable-Premium-250",
///         SubnetId = exampleSubnet.Id,
///         StorageCapacityInTb = 8,
///         Zones = new[]
///         {
///             "2",
///         },
///         MaintenanceWindow = new Azure.ManagedLustre.Inputs.FileSystemMaintenanceWindowArgs
///         {
///             DayOfWeek = "Friday",
///             TimeOfDayUtc = "22:00",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedlustre"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedlustre.NewFileSystem(ctx, "example", &managedlustre.FileSystemArgs{
/// 			Name:                pulumi.String("example-amlfs"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			SkuName:             pulumi.String("AMLFS-Durable-Premium-250"),
/// 			SubnetId:            exampleSubnet.ID(),
/// 			StorageCapacityInTb: pulumi.Int(8),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("2"),
/// 			},
/// 			MaintenanceWindow: &managedlustre.FileSystemMaintenanceWindowArgs{
/// 				DayOfWeek:    pulumi.String("Friday"),
/// 				TimeOfDayUtc: "22:00",
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.managedlustre.FileSystem;
/// import com.pulumi.azure.managedlustre.FileSystemArgs;
/// import com.pulumi.azure.managedlustre.inputs.FileSystemMaintenanceWindowArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .name("example-amlfs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("AMLFS-Durable-Premium-250")
///             .subnetId(exampleSubnet.id())
///             .storageCapacityInTb(8)
///             .zones("2")
///             .maintenanceWindow(FileSystemMaintenanceWindowArgs.builder()
///                 .dayOfWeek("Friday")
///                 .timeOfDayUtc("22:00")
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleFileSystem:
///     type: azure:managedlustre:FileSystem
///     name: example
///     properties:
///       name: example-amlfs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: AMLFS-Durable-Premium-250
///       subnetId: ${exampleSubnet.id}
///       storageCapacityInTb: 8
///       zones:
///         - '2'
///       maintenanceWindow:
///         dayOfWeek: Friday
///         timeOfDayUtc: 22:00
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageCache` - 2024-07-01
///
/// ## Import
///
/// Azure Managed Lustre File Systems can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedlustre/fileSystem:FileSystem example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageCache/amlFilesystems/amlFilesystem1
/// ```
class FileSystem extends pulumi.CustomResource {
  /// An `encryption_key` block as defined below.
  ///
  /// &gt; **Note:** Removing `encryption_key` forces a new resource to be created.
  late final pulumi.Output<FileSystemEncryptionKey?> encryptionKey;
  /// A `hsm_setting` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<FileSystemHsmSetting?> hsmSetting;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<FileSystemIdentity?> identity;
  /// The Azure Region where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `maintenance_window` block as defined below.
  late final pulumi.Output<FileSystemMaintenanceWindow> maintenanceWindow;
  /// IP Address of Managed Lustre File System Services.
  late final pulumi.Output<String> mgsAddress;
  /// The name which should be used for this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Azure Managed Lustre File System should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `root_squash` block as defined below.
  late final pulumi.Output<FileSystemRootSquash?> rootSquash;
  /// The SKU name for the Azure Managed Lustre File System. Possible values are `AMLFS-Durable-Premium-40`, `AMLFS-Durable-Premium-125`, `AMLFS-Durable-Premium-250` and `AMLFS-Durable-Premium-500`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuName;
  /// The size of the Azure Managed Lustre File System in TiB. The valid values for this field are dependant on which `sku_name` has been defined in the configuration file. For more information on the valid values for this field please see the [product documentation](https://learn.microsoft.com/azure/azure-managed-lustre/create-file-system-resource-manager#file-system-type-and-size-options). Changing this forces a new resource to be created.
  late final pulumi.Output<int> storageCapacityInTb;
  /// The resource ID of the Subnet that is used for managing the Azure Managed Lustre file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the Virtual Network's address space. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags which should be assigned to the Azure Managed Lustre File System.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of availability zones for the Azure Managed Lustre File System. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [FileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystem]. {@macro pulumi_managedlustre_file_system_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystem(
    String name, {
    FileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedlustre/fileSystem:FileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    encryptionKey = registerOutput<FileSystemEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hsmSetting = registerOutput<FileSystemHsmSetting?>('hsmSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemHsmSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FileSystemIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<FileSystemMaintenanceWindow>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mgsAddress = registerOutput<String>('mgsAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rootSquash = registerOutput<FileSystemRootSquash?>('rootSquash', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemRootSquash.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    storageCapacityInTb = registerOutput<int>('storageCapacityInTb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>>('zones');
  }

  /// Gets an existing [FileSystem] resource's state with the given [name] and [id].
  static FileSystem get(
    String name,
    pulumi.Input<String> id, {
    FileSystemState? state,
  }) {
    return FileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedlustre/fileSystem:FileSystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    encryptionKey = registerOutput<FileSystemEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hsmSetting = registerOutput<FileSystemHsmSetting?>('hsmSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemHsmSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FileSystemIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<FileSystemMaintenanceWindow>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mgsAddress = registerOutput<String>('mgsAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rootSquash = registerOutput<FileSystemRootSquash?>('rootSquash', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemRootSquash.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    storageCapacityInTb = registerOutput<int>('storageCapacityInTb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>>('zones');
  }
}
