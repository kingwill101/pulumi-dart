import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_create_source.dart';
import 'volume_state.dart';

/// Manages an Elastic SAN Volume resource.
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
/// const exampleElasticSan = new azure.elasticsan.ElasticSan("example", {
///     name: "example-es",
///     resourceGroupName: example.name,
///     location: example.location,
///     baseSizeInTib: 1,
///     sku: {
///         name: "Premium_LRS",
///     },
/// });
/// const exampleVolumeGroup = new azure.elasticsan.VolumeGroup("example", {
///     name: "example-esvg",
///     elasticSanId: exampleElasticSan.id,
/// });
/// const exampleVolume = new azure.elasticsan.Volume("example", {
///     name: "example-esv",
///     volumeGroupId: exampleVolumeGroup.id,
///     sizeInGib: 1,
/// });
/// export const targetIqn = exampleVolume.targetIqn;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_elastic_san = azure.elasticsan.ElasticSan("example",
///     name="example-es",
///     resource_group_name=example.name,
///     location=example.location,
///     base_size_in_tib=1,
///     sku={
///         "name": "Premium_LRS",
///     })
/// example_volume_group = azure.elasticsan.VolumeGroup("example",
///     name="example-esvg",
///     elastic_san_id=example_elastic_san.id)
/// example_volume = azure.elasticsan.Volume("example",
///     name="example-esv",
///     volume_group_id=example_volume_group.id,
///     size_in_gib=1)
/// pulumi.export("targetIqn", example_volume.target_iqn)
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
///     var exampleElasticSan = new Azure.ElasticSan.ElasticSan("example", new()
///     {
///         Name = "example-es",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         BaseSizeInTib = 1,
///         Sku = new Azure.ElasticSan.Inputs.ElasticSanSkuArgs
///         {
///             Name = "Premium_LRS",
///         },
///     });
///
///     var exampleVolumeGroup = new Azure.ElasticSan.VolumeGroup("example", new()
///     {
///         Name = "example-esvg",
///         ElasticSanId = exampleElasticSan.Id,
///     });
///
///     var exampleVolume = new Azure.ElasticSan.Volume("example", new()
///     {
///         Name = "example-esv",
///         VolumeGroupId = exampleVolumeGroup.Id,
///         SizeInGib = 1,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["targetIqn"] = exampleVolume.TargetIqn,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
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
/// 		exampleElasticSan, err := elasticsan.NewElasticSan(ctx, "example", &elasticsan.ElasticSanArgs{
/// 			Name:              pulumi.String("example-es"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			BaseSizeInTib:     pulumi.Int(1),
/// 			Sku: &elasticsan.ElasticSanSkuArgs{
/// 				Name: pulumi.String("Premium_LRS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolumeGroup, err := elasticsan.NewVolumeGroup(ctx, "example", &elasticsan.VolumeGroupArgs{
/// 			Name:         pulumi.String("example-esvg"),
/// 			ElasticSanId: exampleElasticSan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolume, err := elasticsan.NewVolume(ctx, "example", &elasticsan.VolumeArgs{
/// 			Name:          pulumi.String("example-esv"),
/// 			VolumeGroupId: exampleVolumeGroup.ID(),
/// 			SizeInGib:     pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("targetIqn", exampleVolume.TargetIqn)
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
/// import com.pulumi.azure.elasticsan.ElasticSan;
/// import com.pulumi.azure.elasticsan.ElasticSanArgs;
/// import com.pulumi.azure.elasticsan.inputs.ElasticSanSkuArgs;
/// import com.pulumi.azure.elasticsan.VolumeGroup;
/// import com.pulumi.azure.elasticsan.VolumeGroupArgs;
/// import com.pulumi.azure.elasticsan.Volume;
/// import com.pulumi.azure.elasticsan.VolumeArgs;
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
///         var exampleElasticSan = new ElasticSan("exampleElasticSan", ElasticSanArgs.builder()
///             .name("example-es")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .baseSizeInTib(1)
///             .sku(ElasticSanSkuArgs.builder()
///                 .name("Premium_LRS")
///                 .build())
///             .build());
///
///         var exampleVolumeGroup = new VolumeGroup("exampleVolumeGroup", VolumeGroupArgs.builder()
///             .name("example-esvg")
///             .elasticSanId(exampleElasticSan.id())
///             .build());
///
///         var exampleVolume = new Volume("exampleVolume", VolumeArgs.builder()
///             .name("example-esv")
///             .volumeGroupId(exampleVolumeGroup.id())
///             .sizeInGib(1)
///             .build());
///
///         ctx.export("targetIqn", exampleVolume.targetIqn());
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
///   exampleElasticSan:
///     type: azure:elasticsan:ElasticSan
///     name: example
///     properties:
///       name: example-es
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       baseSizeInTib: 1
///       sku:
///         name: Premium_LRS
///   exampleVolumeGroup:
///     type: azure:elasticsan:VolumeGroup
///     name: example
///     properties:
///       name: example-esvg
///       elasticSanId: ${exampleElasticSan.id}
///   exampleVolume:
///     type: azure:elasticsan:Volume
///     name: example
///     properties:
///       name: example-esv
///       volumeGroupId: ${exampleVolumeGroup.id}
///       sizeInGib: 1
/// outputs:
///   targetIqn: ${exampleVolume.targetIqn}
/// ```
///
///
/// ## Example of creating an Elastic SAN Volume from a Disk Snapshot
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
/// const exampleElasticSan = new azure.elasticsan.ElasticSan("example", {
///     name: "example-es",
///     resourceGroupName: example.name,
///     location: example.location,
///     baseSizeInTib: 1,
///     sku: {
///         name: "Premium_LRS",
///     },
/// });
/// const exampleVolumeGroup = new azure.elasticsan.VolumeGroup("example", {
///     name: "example-esvg",
///     elasticSanId: exampleElasticSan.id,
/// });
/// const exampleManagedDisk = new azure.compute.ManagedDisk("example", {
///     name: "example-disk",
///     location: example.location,
///     resourceGroupName: example.name,
///     createOption: "Empty",
///     storageAccountType: "Standard_LRS",
///     diskSizeGb: 2,
/// });
/// const exampleSnapshot = new azure.compute.Snapshot("example", {
///     name: "example-ss",
///     location: example.location,
///     resourceGroupName: example.name,
///     createOption: "Copy",
///     sourceUri: exampleManagedDisk.id,
/// });
/// const example2 = new azure.elasticsan.Volume("example2", {
///     name: "example-esv2",
///     volumeGroupId: exampleVolumeGroup.id,
///     sizeInGib: 2,
///     createSource: {
///         sourceType: "DiskSnapshot",
///         sourceId: exampleSnapshot.id,
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
/// example_elastic_san = azure.elasticsan.ElasticSan("example",
///     name="example-es",
///     resource_group_name=example.name,
///     location=example.location,
///     base_size_in_tib=1,
///     sku={
///         "name": "Premium_LRS",
///     })
/// example_volume_group = azure.elasticsan.VolumeGroup("example",
///     name="example-esvg",
///     elastic_san_id=example_elastic_san.id)
/// example_managed_disk = azure.compute.ManagedDisk("example",
///     name="example-disk",
///     location=example.location,
///     resource_group_name=example.name,
///     create_option="Empty",
///     storage_account_type="Standard_LRS",
///     disk_size_gb=2)
/// example_snapshot = azure.compute.Snapshot("example",
///     name="example-ss",
///     location=example.location,
///     resource_group_name=example.name,
///     create_option="Copy",
///     source_uri=example_managed_disk.id)
/// example2 = azure.elasticsan.Volume("example2",
///     name="example-esv2",
///     volume_group_id=example_volume_group.id,
///     size_in_gib=2,
///     create_source={
///         "source_type": "DiskSnapshot",
///         "source_id": example_snapshot.id,
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
///     var exampleElasticSan = new Azure.ElasticSan.ElasticSan("example", new()
///     {
///         Name = "example-es",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         BaseSizeInTib = 1,
///         Sku = new Azure.ElasticSan.Inputs.ElasticSanSkuArgs
///         {
///             Name = "Premium_LRS",
///         },
///     });
///
///     var exampleVolumeGroup = new Azure.ElasticSan.VolumeGroup("example", new()
///     {
///         Name = "example-esvg",
///         ElasticSanId = exampleElasticSan.Id,
///     });
///
///     var exampleManagedDisk = new Azure.Compute.ManagedDisk("example", new()
///     {
///         Name = "example-disk",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         CreateOption = "Empty",
///         StorageAccountType = "Standard_LRS",
///         DiskSizeGb = 2,
///     });
///
///     var exampleSnapshot = new Azure.Compute.Snapshot("example", new()
///     {
///         Name = "example-ss",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         CreateOption = "Copy",
///         SourceUri = exampleManagedDisk.Id,
///     });
///
///     var example2 = new Azure.ElasticSan.Volume("example2", new()
///     {
///         Name = "example-esv2",
///         VolumeGroupId = exampleVolumeGroup.Id,
///         SizeInGib = 2,
///         CreateSource = new Azure.ElasticSan.Inputs.VolumeCreateSourceArgs
///         {
///             SourceType = "DiskSnapshot",
///             SourceId = exampleSnapshot.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
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
/// 		exampleElasticSan, err := elasticsan.NewElasticSan(ctx, "example", &elasticsan.ElasticSanArgs{
/// 			Name:              pulumi.String("example-es"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			BaseSizeInTib:     pulumi.Int(1),
/// 			Sku: &elasticsan.ElasticSanSkuArgs{
/// 				Name: pulumi.String("Premium_LRS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolumeGroup, err := elasticsan.NewVolumeGroup(ctx, "example", &elasticsan.VolumeGroupArgs{
/// 			Name:         pulumi.String("example-esvg"),
/// 			ElasticSanId: exampleElasticSan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedDisk, err := compute.NewManagedDisk(ctx, "example", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("example-disk"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			CreateOption:       pulumi.String("Empty"),
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			DiskSizeGb:         pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSnapshot, err := compute.NewSnapshot(ctx, "example", &compute.SnapshotArgs{
/// 			Name:              pulumi.String("example-ss"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			CreateOption:      pulumi.String("Copy"),
/// 			SourceUri:         exampleManagedDisk.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticsan.NewVolume(ctx, "example2", &elasticsan.VolumeArgs{
/// 			Name:          pulumi.String("example-esv2"),
/// 			VolumeGroupId: exampleVolumeGroup.ID(),
/// 			SizeInGib:     pulumi.Int(2),
/// 			CreateSource: &elasticsan.VolumeCreateSourceArgs{
/// 				SourceType: pulumi.String("DiskSnapshot"),
/// 				SourceId:   exampleSnapshot.ID(),
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
/// import com.pulumi.azure.elasticsan.ElasticSan;
/// import com.pulumi.azure.elasticsan.ElasticSanArgs;
/// import com.pulumi.azure.elasticsan.inputs.ElasticSanSkuArgs;
/// import com.pulumi.azure.elasticsan.VolumeGroup;
/// import com.pulumi.azure.elasticsan.VolumeGroupArgs;
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import com.pulumi.azure.compute.Snapshot;
/// import com.pulumi.azure.compute.SnapshotArgs;
/// import com.pulumi.azure.elasticsan.Volume;
/// import com.pulumi.azure.elasticsan.VolumeArgs;
/// import com.pulumi.azure.elasticsan.inputs.VolumeCreateSourceArgs;
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
///         var exampleElasticSan = new ElasticSan("exampleElasticSan", ElasticSanArgs.builder()
///             .name("example-es")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .baseSizeInTib(1)
///             .sku(ElasticSanSkuArgs.builder()
///                 .name("Premium_LRS")
///                 .build())
///             .build());
///
///         var exampleVolumeGroup = new VolumeGroup("exampleVolumeGroup", VolumeGroupArgs.builder()
///             .name("example-esvg")
///             .elasticSanId(exampleElasticSan.id())
///             .build());
///
///         var exampleManagedDisk = new ManagedDisk("exampleManagedDisk", ManagedDiskArgs.builder()
///             .name("example-disk")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .createOption("Empty")
///             .storageAccountType("Standard_LRS")
///             .diskSizeGb(2)
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .name("example-ss")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .createOption("Copy")
///             .sourceUri(exampleManagedDisk.id())
///             .build());
///
///         var example2 = new Volume("example2", VolumeArgs.builder()
///             .name("example-esv2")
///             .volumeGroupId(exampleVolumeGroup.id())
///             .sizeInGib(2)
///             .createSource(VolumeCreateSourceArgs.builder()
///                 .sourceType("DiskSnapshot")
///                 .sourceId(exampleSnapshot.id())
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
///   exampleElasticSan:
///     type: azure:elasticsan:ElasticSan
///     name: example
///     properties:
///       name: example-es
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       baseSizeInTib: 1
///       sku:
///         name: Premium_LRS
///   exampleVolumeGroup:
///     type: azure:elasticsan:VolumeGroup
///     name: example
///     properties:
///       name: example-esvg
///       elasticSanId: ${exampleElasticSan.id}
///   exampleManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: example
///     properties:
///       name: example-disk
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       createOption: Empty
///       storageAccountType: Standard_LRS
///       diskSizeGb: 2
///   exampleSnapshot:
///     type: azure:compute:Snapshot
///     name: example
///     properties:
///       name: example-ss
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       createOption: Copy
///       sourceUri: ${exampleManagedDisk.id}
///   example2:
///     type: azure:elasticsan:Volume
///     properties:
///       name: example-esv2
///       volumeGroupId: ${exampleVolumeGroup.id}
///       sizeInGib: 2
///       createSource:
///         sourceType: DiskSnapshot
///         sourceId: ${exampleSnapshot.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ElasticSan` - 2023-01-01
///
/// ## Import
///
/// An existing Elastic SAN Volume can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:elasticsan/volume:Volume example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ElasticSan/elasticSans/esan1/volumeGroups/vg1/volumes/vol1
/// ```
class Volume extends pulumi.CustomResource {
  /// A `create_source` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<VolumeCreateSource?> createSource;

  /// Specifies the name of this Elastic SAN Volume. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the size of the Elastic SAN Volume in GiB. The size should be within the remaining capacity of the parent Elastic SAN. Possible values are between `1` and `65536` (16 TiB).
  ///
  /// &gt; **Note:** The size can only be increased. If `create_source` is specified, then the size must be equal to or greater than the source's size.
  late final pulumi.Output<int> sizeInGib;

  /// The iSCSI Target IQN of the Elastic SAN Volume.
  late final pulumi.Output<String> targetIqn;

  /// The iSCSI Target Portal Host Name of the Elastic SAN Volume.
  late final pulumi.Output<String> targetPortalHostname;

  /// The iSCSI Target Portal Port of the Elastic SAN Volume.
  late final pulumi.Output<int> targetPortalPort;

  /// Specifies the Volume Group ID within which this Elastic SAN Volume should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumeGroupId;

  /// The UUID of the Elastic SAN Volume.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_elasticsan_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(String name, {VolumeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:elasticsan/volume:Volume',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createSource = registerOutput<VolumeCreateSource?>(
      'createSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeCreateSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    sizeInGib = registerOutput<int>('sizeInGib');
    targetIqn = registerOutput<String>('targetIqn');
    targetPortalHostname = registerOutput<String>('targetPortalHostname');
    targetPortalPort = registerOutput<int>('targetPortalPort');
    volumeGroupId = registerOutput<String>('volumeGroupId');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [Volume] resource's state with the given [name] and [id].
  static Volume get(
    String name,
    pulumi.Input<String> id, {
    VolumeState? state,
  }) {
    return Volume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Volume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:elasticsan/volume:Volume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createSource = registerOutput<VolumeCreateSource?>(
      'createSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeCreateSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    sizeInGib = registerOutput<int>('sizeInGib');
    targetIqn = registerOutput<String>('targetIqn');
    targetPortalHostname = registerOutput<String>('targetPortalHostname');
    targetPortalPort = registerOutput<int>('targetPortalPort');
    volumeGroupId = registerOutput<String>('volumeGroupId');
    volumeId = registerOutput<String>('volumeId');
  }
}
