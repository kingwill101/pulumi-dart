import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_encryption_settings.dart';
import 'snapshot_state.dart';

/// Manages a Disk Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "snapshot-rg",
///     location: "West Europe",
/// });
/// const exampleManagedDisk = new azure.compute.ManagedDisk("example", {
///     name: "managed-disk",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 10,
/// });
/// const exampleSnapshot = new azure.compute.Snapshot("example", {
///     name: "snapshot",
///     location: example.location,
///     resourceGroupName: example.name,
///     createOption: "Copy",
///     sourceUri: exampleManagedDisk.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="snapshot-rg",
///     location="West Europe")
/// example_managed_disk = azure.compute.ManagedDisk("example",
///     name="managed-disk",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=10)
/// example_snapshot = azure.compute.Snapshot("example",
///     name="snapshot",
///     location=example.location,
///     resource_group_name=example.name,
///     create_option="Copy",
///     source_uri=example_managed_disk.id)
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
///         Name = "snapshot-rg",
///         Location = "West Europe",
///     });
///
///     var exampleManagedDisk = new Azure.Compute.ManagedDisk("example", new()
///     {
///         Name = "managed-disk",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 10,
///     });
///
///     var exampleSnapshot = new Azure.Compute.Snapshot("example", new()
///     {
///         Name = "snapshot",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         CreateOption = "Copy",
///         SourceUri = exampleManagedDisk.Id,
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
/// 			Name:     pulumi.String("snapshot-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedDisk, err := compute.NewManagedDisk(ctx, "example", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("managed-disk"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "example", &compute.SnapshotArgs{
/// 			Name:              pulumi.String("snapshot"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			CreateOption:      pulumi.String("Copy"),
/// 			SourceUri:         exampleManagedDisk.ID(),
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
///   name     = "snapshot-rg"
///   location = "West Europe"
/// }
/// resource "azure_compute_manageddisk" "example" {
///   name                 = "managed-disk"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Empty"
///   disk_size_gb         = "10"
/// }
/// resource "azure_compute_snapshot" "example" {
///   name                = "snapshot"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   create_option       = "Copy"
///   source_uri          = azure_compute_manageddisk.example.id
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
/// import com.pulumi.azure.compute.Snapshot;
/// import com.pulumi.azure.compute.SnapshotArgs;
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
///             .name("snapshot-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleManagedDisk = new ManagedDisk("exampleManagedDisk", ManagedDiskArgs.builder()
///             .name("managed-disk")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(10)
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .name("snapshot")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .createOption("Copy")
///             .sourceUri(exampleManagedDisk.id())
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
///       name: snapshot-rg
///       location: West Europe
///   exampleManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: example
///     properties:
///       name: managed-disk
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: '10'
///   exampleSnapshot:
///     type: azure:compute:Snapshot
///     name: example
///     properties:
///       name: snapshot
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       createOption: Copy
///       sourceUri: ${exampleManagedDisk.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
///
/// ## Import
///
/// Snapshots can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/snapshot:Snapshot example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/snapshots/snapshot1
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`.
  ///
  /// &gt; **Note:** One of `sourceUri`, `sourceResourceId` or `storageAccountId` must be specified.
  late final pulumi.Output<String> createOption;
  /// Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting `networkAccessPolicy` to `AllowPrivate`.
  late final pulumi.Output<String?> diskAccessId;
  /// The size of the Snapshotted Disk in GB.
  late final pulumi.Output<int> diskSizeGb;
  /// A `encryptionSettings` block as defined below.
  ///
  /// &gt; **Note:** Removing `encryptionSettings` forces a new resource to be created.
  late final pulumi.Output<SnapshotEncryptionSettings?> encryptionSettings;
  /// Specifies if the Snapshot is incremental. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> incrementalEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Snapshot resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Policy for accessing the disk via network. Possible values are `AllowAll`, `AllowPrivate`, or `DenyAll`. Defaults to `AllowAll`.
  late final pulumi.Output<String?> networkAccessPolicy;
  /// Policy for controlling export on the disk. Possible values are `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies a reference to an existing snapshot, when `createOption` is `Copy`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceResourceId;
  /// Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceUri;
  /// Specifies the ID of an storage account. Used with `sourceUri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> storageAccountId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether Trusted Launch is enabled for the Snapshot.
  late final pulumi.Output<bool> trustedLaunchEnabled;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_compute_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createOption = registerOutput<String>('createOption');
    diskAccessId = registerOutput<String?>('diskAccessId');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    encryptionSettings = registerOutput<SnapshotEncryptionSettings?>('encryptionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incrementalEnabled = registerOutput<bool?>('incrementalEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    sourceUri = registerOutput<String?>('sourceUri');
    storageAccountId = registerOutput<String?>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    trustedLaunchEnabled = registerOutput<bool>('trustedLaunchEnabled');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createOption = registerOutput<String>('createOption');
    diskAccessId = registerOutput<String?>('diskAccessId');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    encryptionSettings = registerOutput<SnapshotEncryptionSettings?>('encryptionSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incrementalEnabled = registerOutput<bool?>('incrementalEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    sourceUri = registerOutput<String?>('sourceUri');
    storageAccountId = registerOutput<String?>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    trustedLaunchEnabled = registerOutput<bool>('trustedLaunchEnabled');
  }
}
