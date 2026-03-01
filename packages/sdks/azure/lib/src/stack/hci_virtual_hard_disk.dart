import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_virtual_hard_disk_args.dart';
import 'hci_virtual_hard_disk_state.dart';

/// Manages an Azure Stack HCI Virtual Hard Disk.
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
/// const exampleHciStoragePath = new azure.stack.HciStoragePath("example", {
///     name: "example-sp",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     path: "C:\\ClusterStorage\\UserStorage_2\\sp-example",
///     tags: {
///         foo: "bar",
///     },
/// });
/// const exampleHciVirtualHardDisk = new azure.stack.HciVirtualHardDisk("example", {
///     name: "example-vhd",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     diskSizeInGb: 2,
///     storagePathId: exampleHciStoragePath.id,
///     tags: {
///         foo: "bar",
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
/// example_hci_storage_path = azure.stack.HciStoragePath("example",
///     name="example-sp",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     path="C:\\ClusterStorage\\UserStorage_2\\sp-example",
///     tags={
///         "foo": "bar",
///     })
/// example_hci_virtual_hard_disk = azure.stack.HciVirtualHardDisk("example",
///     name="example-vhd",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     disk_size_in_gb=2,
///     storage_path_id=example_hci_storage_path.id,
///     tags={
///         "foo": "bar",
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
///     var exampleHciStoragePath = new Azure.Stack.HciStoragePath("example", new()
///     {
///         Name = "example-sp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///         Path = "C:\\ClusterStorage\\UserStorage_2\\sp-example",
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var exampleHciVirtualHardDisk = new Azure.Stack.HciVirtualHardDisk("example", new()
///     {
///         Name = "example-vhd",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///         DiskSizeInGb = 2,
///         StoragePathId = exampleHciStoragePath.Id,
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
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
/// 		exampleHciStoragePath, err := stack.NewHciStoragePath(ctx, "example", &stack.HciStoragePathArgs{
/// 			Name:              pulumi.String("example-sp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1"),
/// 			Path:              pulumi.String("C:\\ClusterStorage\\UserStorage_2\\sp-example"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = stack.NewHciVirtualHardDisk(ctx, "example", &stack.HciVirtualHardDiskArgs{
/// 			Name:              pulumi.String("example-vhd"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1"),
/// 			DiskSizeInGb:      pulumi.Int(2),
/// 			StoragePathId:     exampleHciStoragePath.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.stack.HciStoragePath;
/// import com.pulumi.azure.stack.HciStoragePathArgs;
/// import com.pulumi.azure.stack.HciVirtualHardDisk;
/// import com.pulumi.azure.stack.HciVirtualHardDiskArgs;
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
///         var exampleHciStoragePath = new HciStoragePath("exampleHciStoragePath", HciStoragePathArgs.builder()
///             .name("example-sp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1")
///             .path("C:\\ClusterStorage\\UserStorage_2\\sp-example")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         var exampleHciVirtualHardDisk = new HciVirtualHardDisk("exampleHciVirtualHardDisk", HciVirtualHardDiskArgs.builder()
///             .name("example-vhd")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1")
///             .diskSizeInGb(2)
///             .storagePathId(exampleHciStoragePath.id())
///             .tags(Map.of("foo", "bar"))
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
///   exampleHciStoragePath:
///     type: azure:stack:HciStoragePath
///     name: example
///     properties:
///       name: example-sp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1
///       path: C:\ClusterStorage\UserStorage_2\sp-example
///       tags:
///         foo: bar
///   exampleHciVirtualHardDisk:
///     type: azure:stack:HciVirtualHardDisk
///     name: example
///     properties:
///       name: example-vhd
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1
///       diskSizeInGb: 2
///       storagePathId: ${exampleHciStoragePath.id}
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AzureStackHCI` - 2024-01-01
///
/// ## Import
///
/// Azure Stack HCI Virtual Hard Disks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciVirtualHardDisk:HciVirtualHardDisk example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AzureStackHCI/virtualHardDisks/disk1
/// ```
class HciVirtualHardDisk extends pulumi.CustomResource {
  /// The block size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<int?> blockSizeInBytes;
  /// The ID of the Custom Location where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String> customLocationId;
  /// The format of the disk file. Possible values are `vhdx` and `vhd`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String?> diskFileFormat;
  /// The size of the disk in GB. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<int> diskSizeInGb;
  /// Whether to enable dynamic sizing for the Azure Stack HCI Virtual Hard Disk. Defaults to `false`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<bool?> dynamicEnabled;
  /// The hypervisor generation of the Azure Stack HCI Virtual Hard Disk. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String?> hypervGeneration;
  /// The Azure Region where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String> location;
  /// The logical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<int?> logicalSectorInBytes;
  /// The name which should be used for this Azure Stack HCI Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String> name;
  /// The physical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<int?> physicalSectorInBytes;
  /// The name of the Resource Group where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Azure Stack HCI Storage Path used for this Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  ///
  /// > **Note:** If `storage_path_id` is not specified, the Virtual Hard Disk will be placed in a high availability Storage Path. If you experience a diff you may need to add this to `ignore_changes`.
  late final pulumi.Output<String?> storagePathId;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Virtual Hard Disk.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [HciVirtualHardDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciVirtualHardDisk]. {@macro pulumi_stack_hci_virtual_hard_disk_hci_virtual_hard_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciVirtualHardDisk(
    String name, {
    HciVirtualHardDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciVirtualHardDisk:HciVirtualHardDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockSizeInBytes = registerOutput<int?>('blockSizeInBytes');
    this.customLocationId = registerOutput<String>('customLocationId');
    this.diskFileFormat = registerOutput<String?>('diskFileFormat');
    this.diskSizeInGb = registerOutput<int>('diskSizeInGb');
    this.dynamicEnabled = registerOutput<bool?>('dynamicEnabled');
    this.hypervGeneration = registerOutput<String?>('hypervGeneration');
    this.location = registerOutput<String>('location');
    this.logicalSectorInBytes = registerOutput<int?>('logicalSectorInBytes');
    this.name = registerOutput<String>('name');
    this.physicalSectorInBytes = registerOutput<int?>('physicalSectorInBytes');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storagePathId = registerOutput<String?>('storagePathId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [HciVirtualHardDisk] resource's state with the given [name] and [id].
  static HciVirtualHardDisk get(
    String name,
    pulumi.Input<String> id, {
    HciVirtualHardDiskState? state,
  }) {
    return HciVirtualHardDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciVirtualHardDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciVirtualHardDisk:HciVirtualHardDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockSizeInBytes = registerOutput<int?>('blockSizeInBytes');
    this.customLocationId = registerOutput<String>('customLocationId');
    this.diskFileFormat = registerOutput<String?>('diskFileFormat');
    this.diskSizeInGb = registerOutput<int>('diskSizeInGb');
    this.dynamicEnabled = registerOutput<bool?>('dynamicEnabled');
    this.hypervGeneration = registerOutput<String?>('hypervGeneration');
    this.location = registerOutput<String>('location');
    this.logicalSectorInBytes = registerOutput<int?>('logicalSectorInBytes');
    this.name = registerOutput<String>('name');
    this.physicalSectorInBytes = registerOutput<int?>('physicalSectorInBytes');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storagePathId = registerOutput<String?>('storagePathId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
