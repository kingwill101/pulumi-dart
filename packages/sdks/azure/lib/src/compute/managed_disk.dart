import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_args.dart';
import 'managed_disk_encryption_settings.dart';
import 'managed_disk_state.dart';

/// Manages a managed disk.
///
/// ## Example Usage
///
/// ### With Create Empty
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
/// const exampleManagedDisk = new azure.compute.ManagedDisk("example", {
///     name: "acctestmd",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 1,
///     tags: {
///         environment: "staging",
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
/// example_managed_disk = azure.compute.ManagedDisk("example",
///     name="acctestmd",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=1,
///     tags={
///         "environment": "staging",
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
///     var exampleManagedDisk = new Azure.Compute.ManagedDisk("example", new()
///     {
///         Name = "acctestmd",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 1,
///         Tags =
///         {
///             { "environment", "staging" },
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
/// 		_, err = compute.NewManagedDisk(ctx, "example", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("acctestmd"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_compute_manageddisk" "example" {
///   name                 = "acctestmd"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Empty"
///   disk_size_gb         = "1"
///   tags = {
///     "environment" = "staging"
///   }
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
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleManagedDisk = new ManagedDisk("exampleManagedDisk", ManagedDiskArgs.builder()
///             .name("acctestmd")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(1)
///             .tags(Map.of("environment", "staging"))
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
///   exampleManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: example
///     properties:
///       name: acctestmd
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: '1'
///       tags:
///         environment: staging
/// ```
///
///
///
/// ### With Create Copy
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
/// const source = new azure.compute.ManagedDisk("source", {
///     name: "acctestmd1",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 1,
///     tags: {
///         environment: "staging",
///     },
/// });
/// const copy = new azure.compute.ManagedDisk("copy", {
///     name: "acctestmd2",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Copy",
///     sourceResourceId: source.id,
///     diskSizeGb: 1,
///     tags: {
///         environment: "staging",
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
/// source = azure.compute.ManagedDisk("source",
///     name="acctestmd1",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=1,
///     tags={
///         "environment": "staging",
///     })
/// copy = azure.compute.ManagedDisk("copy",
///     name="acctestmd2",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Copy",
///     source_resource_id=source.id,
///     disk_size_gb=1,
///     tags={
///         "environment": "staging",
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
///     var source = new Azure.Compute.ManagedDisk("source", new()
///     {
///         Name = "acctestmd1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 1,
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var copy = new Azure.Compute.ManagedDisk("copy", new()
///     {
///         Name = "acctestmd2",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Copy",
///         SourceResourceId = source.Id,
///         DiskSizeGb = 1,
///         Tags =
///         {
///             { "environment", "staging" },
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
/// 		source, err := compute.NewManagedDisk(ctx, "source", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("acctestmd1"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewManagedDisk(ctx, "copy", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("acctestmd2"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Copy"),
/// 			SourceResourceId:   source.ID(),
/// 			DiskSizeGb:         pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_compute_manageddisk" "source" {
///   name                 = "acctestmd1"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Empty"
///   disk_size_gb         = "1"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_compute_manageddisk" "copy" {
///   name                 = "acctestmd2"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Copy"
///   source_resource_id   = azure_compute_manageddisk.source.id
///   disk_size_gb         = "1"
///   tags = {
///     "environment" = "staging"
///   }
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
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var source = new ManagedDisk("source", ManagedDiskArgs.builder()
///             .name("acctestmd1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(1)
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var copy = new ManagedDisk("copy", ManagedDiskArgs.builder()
///             .name("acctestmd2")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Copy")
///             .sourceResourceId(source.id())
///             .diskSizeGb(1)
///             .tags(Map.of("environment", "staging"))
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
///   source:
///     type: azure:compute:ManagedDisk
///     properties:
///       name: acctestmd1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: '1'
///       tags:
///         environment: staging
///   copy:
///     type: azure:compute:ManagedDisk
///     properties:
///       name: acctestmd2
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Copy
///       sourceResourceId: ${source.id}
///       diskSizeGb: '1'
///       tags:
///         environment: staging
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2023-04-02
///
/// ## Import
///
/// Managed Disks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/managedDisk:ManagedDisk example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/disks/manageddisk1
/// ```
class ManagedDisk extends pulumi.CustomResource {
  /// The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include:
  /// * `Import` - Import a VHD file in to the managed disk (VHD specified with `sourceUri`).
  /// * `ImportSecure` - Securely import a VHD file in to the managed disk (VHD specified with `sourceUri`).
  /// * `Empty` - Create an empty managed disk.
  /// * `Copy` - Copy an existing managed disk or snapshot (specified with `sourceResourceId`).
  /// * `FromImage` - Copy a Platform Image (specified with `imageReferenceId`)
  /// * `Restore` - Set by Azure Backup or Site Recovery on a restored disk (specified with `sourceResourceId`).
  /// * `Upload` - Upload a VHD disk with the help of SAS URL (to be used with `uploadSizeBytes`).
  late final pulumi.Output<String> createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  ///
  /// &gt; **Note:** `diskAccessId` is only supported when `networkAccessPolicy` is set to `AllowPrivate`.
  late final pulumi.Output<String?> diskAccessId;
  /// The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with `secureVmDiskEncryptionSetId`.
  ///
  /// &gt; **NOTE:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// &gt; **NOTE:** Disk Encryption Sets are in Public Preview in a limited set of regions
  late final pulumi.Output<String?> diskEncryptionSetId;
  /// The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes.
  late final pulumi.Output<int> diskIopsReadOnly;
  /// The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes.
  late final pulumi.Output<int> diskIopsReadWrite;
  /// The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second.
  late final pulumi.Output<int> diskMbpsReadOnly;
  /// The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second.
  late final pulumi.Output<int> diskMbpsReadWrite;
  /// (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If `createOption` is `Copy` or `FromImage`, then the value must be equal to or greater than the source's size. The size can only be increased.
  ///
  /// &gt; **NOTE:** In certain conditions the Data Disk size can be updated without shutting down the Virtual Machine, however only a subset of Virtual Machine SKUs/Disk combinations support this. More information can be found [for Linux Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/expand-disks?tabs=azure-cli%2Cubuntu#expand-without-downtime) and [Windows Virtual Machines](https://learn.microsoft.com/azure/virtual-machines/windows/expand-os-disk#expand-without-downtime) respectively.
  ///
  /// &gt; **NOTE:** If No Downtime Resizing is not available, be aware that changing this value is disruptive if the disk is attached to a Virtual Machine. The VM will be shut down and de-allocated as required by Azure to action the change. The provider will attempt to start the machine again after the update if it was in a `running` state when the apply was started.
  ///
  /// &gt; **NOTE:** When upgrading `diskSizeGb` from a value less than 4095 to one greater than 4095, and if `storageAccountType` is not set to `PremiumV2_LRS` or `UltraSSD_LRS`, the disk will be detached from its associated Virtual Machine as required by Azure to action the change. Terraform will attempt to reattach the disk again after the update.
  ///
  /// &gt; **Note:** Expanding Ultra Disks and Premium SSD v2 disks without downtime has additional limitations. Allow up to 10 minutes for the correct size to be reflected, and a `rescan` function may be required. For more details, refer to [Expand with Ultra Disks and Premium SSD v2](https://learn.microsoft.com/azure/virtual-machines/linux/expand-disks?tabs=ubuntu#expand-with-ultra-disks-and-premium-ssd-v2).
  late final pulumi.Output<int> diskSizeGb;
  /// Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created.
  late final pulumi.Output<String?> edgeZone;
  /// A `encryptionSettings` block as defined below.
  ///
  /// &gt; **NOTE:** Removing `encryptionSettings` forces a new resource to be created.
  late final pulumi.Output<ManagedDiskEncryptionSettings?> encryptionSettings;
  /// ID of a Gallery Image Version to copy when `createOption` is `FromImage`. This field cannot be specified if imageReferenceId is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> galleryImageReferenceId;
  /// The HyperV Generation of the Disk when the source of an `Import` or `Copy` operation targets a source that contains an operating system. Possible values are `V1` and `V2`. For `ImportSecure` it must be set to `V2`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hyperVGeneration;
  /// ID of an existing platform/marketplace disk image to copy when `createOption` is `FromImage`. This field cannot be specified if galleryImageReferenceId is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> imageReferenceId;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Logical Sector Size. Possible values are: `512` and `4096`. Defaults to `4096`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Setting logical sector size is supported only with `UltraSSD_LRS` disks and `PremiumV2_LRS` disks.
  late final pulumi.Output<int> logicalSectorSize;
  /// The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  ///
  /// &gt; **Note:** Premium SSD maxShares limit: `P15` and `P20` disks: 2. `P30`,`P40`,`P50` disks: 5. `P60`,`P70`,`P80` disks: 10. For ultra disks the `maxShares` minimum value is 1 and the maximum is 5.
  late final pulumi.Output<int> maxShares;
  /// Specifies the name of the Managed Disk. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Policy for accessing the disk via network. Allowed values are `AllowAll`, `AllowPrivate`, and `DenyAll`. Defaults to `AllowAll`.
  late final pulumi.Output<String?> networkAccessPolicy;
  /// Specifies if On-Demand Bursting is enabled for the Managed Disk.
  ///
  /// &gt; **Note:** Credit-Based Bursting is enabled by default on all eligible disks. More information on [Credit-Based and On-Demand Bursting can be found in the documentation](https://docs.microsoft.com/azure/virtual-machines/disk-bursting#disk-level-bursting).
  late final pulumi.Output<bool?> onDemandBurstingEnabled;
  /// Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to `false`.
  ///
  /// &gt; **Note:** Setting `optimizedFrequentAttachEnabled` to `true` causes the disks to not align with the fault domain of the Virtual Machine, which can have operational implications.
  late final pulumi.Output<bool?> optimizedFrequentAttachEnabled;
  /// Specify a value when the source of an `Import`, `ImportSecure` or `Copy` operation targets a source that contains an operating system. Valid values are `Linux` or `Windows`.
  late final pulumi.Output<String?> osType;
  /// Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> performancePlusEnabled;
  /// Whether it is allowed to access the disk via public network. Defaults to `true`.
  ///
  /// For more information on managed disks, such as sizing options and pricing, please check out the [Azure Documentation](https://docs.microsoft.com/azure/storage/storage-managed-disks-overview).
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `diskEncryptionSetId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `secureVmDiskEncryptionSetId` can only be specified when `securityType` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey`.
  late final pulumi.Output<String?> secureVmDiskEncryptionSetId;
  /// Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey` and `ConfidentialVM_DiskEncryptedWithCustomerKey`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** When `securityType` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey` the value of `createOption` must be one of `FromImage` or `ImportSecure`.
  ///
  ///
  /// &gt; **NOTE:** `securityType` cannot be specified when `trustedLaunchEnabled` is set to true.
  ///
  /// &gt; **NOTE:** `secureVmDiskEncryptionSetId` must be specified when `securityType` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey`.
  late final pulumi.Output<String?> securityType;
  /// The ID of an existing Managed Disk or Snapshot to copy when `createOption` is `Copy` or the recovery point to restore when `createOption` is `Restore`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceResourceId;
  /// URI to a valid VHD file to be used when `createOption` is `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceUri;
  /// The ID of the Storage Account where the `sourceUri` is located. Required when `createOption` is set to `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> storageAccountId;
  /// The type of storage to use for the managed disk. Possible values are `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS` or `UltraSSD_LRS`.
  ///
  /// &gt; **Note:** Azure Ultra Disk Storage is only available in a region that support availability zones and can only enabled on the following VM series: `ESv3`, `DSv3`, `FSv3`, `LSv2`, `M` and `Mv2`. For more information see the `Azure Ultra Disk Storage` [product documentation](https://docs.microsoft.com/azure/virtual-machines/windows/disks-enable-ultra-ssd).
  late final pulumi.Output<String> storageAccountType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs.
  ///
  /// &gt; **NOTE:** Changing this value is disruptive if the disk is attached to a Virtual Machine. The VM will be shut down and de-allocated as required by Azure to action the change. Terraform will attempt to start the machine again after the update if it was in a `running` state when the apply was started.
  late final pulumi.Output<String> tier;
  /// Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Trusted Launch can only be enabled when `createOption` is `FromImage` or `Import`.
  late final pulumi.Output<bool?> trustedLaunchEnabled;
  /// Specifies the size of the managed disk to create in bytes. Required when `createOption` is `Upload`. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with `ls -l` or `wc -c`. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created.
  late final pulumi.Output<int?> uploadSizeBytes;
  /// Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created.
  ///
  /// &gt; **Note:** Availability Zones are [only supported in select regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  late final pulumi.Output<String?> zone;

  /// Creates a new [ManagedDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDisk]. {@macro pulumi_compute_managed_disk_managed_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDisk(
    String name, {
    ManagedDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/managedDisk:ManagedDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createOption = registerOutput<String>('createOption');
    diskAccessId = registerOutput<String?>('diskAccessId');
    diskEncryptionSetId = registerOutput<String?>('diskEncryptionSetId');
    diskIopsReadOnly = registerOutput<int>('diskIopsReadOnly');
    diskIopsReadWrite = registerOutput<int>('diskIopsReadWrite');
    diskMbpsReadOnly = registerOutput<int>('diskMbpsReadOnly');
    diskMbpsReadWrite = registerOutput<int>('diskMbpsReadWrite');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    edgeZone = registerOutput<String?>('edgeZone');
    encryptionSettings = registerOutput<ManagedDiskEncryptionSettings?>('encryptionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDiskEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    galleryImageReferenceId = registerOutput<String?>('galleryImageReferenceId');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    imageReferenceId = registerOutput<String?>('imageReferenceId');
    location = registerOutput<String>('location');
    logicalSectorSize = registerOutput<int>('logicalSectorSize');
    maxShares = registerOutput<int>('maxShares');
    this.name = registerOutput<String>('name');
    networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    onDemandBurstingEnabled = registerOutput<bool?>('onDemandBurstingEnabled');
    optimizedFrequentAttachEnabled = registerOutput<bool?>('optimizedFrequentAttachEnabled');
    osType = registerOutput<String?>('osType');
    performancePlusEnabled = registerOutput<bool?>('performancePlusEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secureVmDiskEncryptionSetId = registerOutput<String?>('secureVmDiskEncryptionSetId');
    securityType = registerOutput<String?>('securityType');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    sourceUri = registerOutput<String>('sourceUri');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountType = registerOutput<String>('storageAccountType');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    trustedLaunchEnabled = registerOutput<bool?>('trustedLaunchEnabled');
    uploadSizeBytes = registerOutput<int?>('uploadSizeBytes');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [ManagedDisk] resource's state with the given [name] and [id].
  static ManagedDisk get(
    String name,
    pulumi.Input<String> id, {
    ManagedDiskState? state,
  }) {
    return ManagedDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/managedDisk:ManagedDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createOption = registerOutput<String>('createOption');
    diskAccessId = registerOutput<String?>('diskAccessId');
    diskEncryptionSetId = registerOutput<String?>('diskEncryptionSetId');
    diskIopsReadOnly = registerOutput<int>('diskIopsReadOnly');
    diskIopsReadWrite = registerOutput<int>('diskIopsReadWrite');
    diskMbpsReadOnly = registerOutput<int>('diskMbpsReadOnly');
    diskMbpsReadWrite = registerOutput<int>('diskMbpsReadWrite');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    edgeZone = registerOutput<String?>('edgeZone');
    encryptionSettings = registerOutput<ManagedDiskEncryptionSettings?>('encryptionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDiskEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    galleryImageReferenceId = registerOutput<String?>('galleryImageReferenceId');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    imageReferenceId = registerOutput<String?>('imageReferenceId');
    location = registerOutput<String>('location');
    logicalSectorSize = registerOutput<int>('logicalSectorSize');
    maxShares = registerOutput<int>('maxShares');
    this.name = registerOutput<String>('name');
    networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    onDemandBurstingEnabled = registerOutput<bool?>('onDemandBurstingEnabled');
    optimizedFrequentAttachEnabled = registerOutput<bool?>('optimizedFrequentAttachEnabled');
    osType = registerOutput<String?>('osType');
    performancePlusEnabled = registerOutput<bool?>('performancePlusEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secureVmDiskEncryptionSetId = registerOutput<String?>('secureVmDiskEncryptionSetId');
    securityType = registerOutput<String?>('securityType');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    sourceUri = registerOutput<String>('sourceUri');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountType = registerOutput<String>('storageAccountType');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    trustedLaunchEnabled = registerOutput<bool?>('trustedLaunchEnabled');
    uploadSizeBytes = registerOutput<int?>('uploadSizeBytes');
    zone = registerOutput<String?>('zone');
  }
}
