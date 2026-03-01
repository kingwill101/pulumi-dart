import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_async_replication_args.dart';
import 'disk_async_replication_secondary_disk.dart';
import 'disk_async_replication_state.dart';

/// Starts and stops asynchronous persistent disk replication. For more information
/// see [the official documentation](https://cloud.google.com/compute/docs/disks/async-pd/about)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/disks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary_disk = new gcp.compute.Disk("primary-disk", {
///     name: "primary-disk",
///     type: "pd-ssd",
///     zone: "europe-west4-a",
///     physicalBlockSizeBytes: 4096,
/// });
/// const secondary_disk = new gcp.compute.Disk("secondary-disk", {
///     name: "secondary-disk",
///     type: "pd-ssd",
///     zone: "europe-west3-a",
///     asyncPrimaryDisk: {
///         disk: primary_disk.id,
///     },
///     physicalBlockSizeBytes: 4096,
/// });
/// const replication = new gcp.compute.DiskAsyncReplication("replication", {
///     primaryDisk: primary_disk.id,
///     secondaryDisk: {
///         disk: secondary_disk.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary_disk = gcp.compute.Disk("primary-disk",
///     name="primary-disk",
///     type="pd-ssd",
///     zone="europe-west4-a",
///     physical_block_size_bytes=4096)
/// secondary_disk = gcp.compute.Disk("secondary-disk",
///     name="secondary-disk",
///     type="pd-ssd",
///     zone="europe-west3-a",
///     async_primary_disk={
///         "disk": primary_disk.id,
///     },
///     physical_block_size_bytes=4096)
/// replication = gcp.compute.DiskAsyncReplication("replication",
///     primary_disk=primary_disk.id,
///     secondary_disk={
///         "disk": secondary_disk.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary_disk = new Gcp.Compute.Disk("primary-disk", new()
///     {
///         Name = "primary-disk",
///         Type = "pd-ssd",
///         Zone = "europe-west4-a",
///         PhysicalBlockSizeBytes = 4096,
///     });
///
///     var secondary_disk = new Gcp.Compute.Disk("secondary-disk", new()
///     {
///         Name = "secondary-disk",
///         Type = "pd-ssd",
///         Zone = "europe-west3-a",
///         AsyncPrimaryDisk = new Gcp.Compute.Inputs.DiskAsyncPrimaryDiskArgs
///         {
///             Disk = primary_disk.Id,
///         },
///         PhysicalBlockSizeBytes = 4096,
///     });
///
///     var replication = new Gcp.Compute.DiskAsyncReplication("replication", new()
///     {
///         PrimaryDisk = primary_disk.Id,
///         SecondaryDisk = new Gcp.Compute.Inputs.DiskAsyncReplicationSecondaryDiskArgs
///         {
///             Disk = secondary_disk.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary_disk, err := compute.NewDisk(ctx, "primary-disk", &compute.DiskArgs{
/// 			Name:                   pulumi.String("primary-disk"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Zone:                   pulumi.String("europe-west4-a"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary_disk, err := compute.NewDisk(ctx, "secondary-disk", &compute.DiskArgs{
/// 			Name: pulumi.String("secondary-disk"),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("europe-west3-a"),
/// 			AsyncPrimaryDisk: &compute.DiskAsyncPrimaryDiskArgs{
/// 				Disk: primary_disk.ID(),
/// 			},
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewDiskAsyncReplication(ctx, "replication", &compute.DiskAsyncReplicationArgs{
/// 			PrimaryDisk: primary_disk.ID(),
/// 			SecondaryDisk: &compute.DiskAsyncReplicationSecondaryDiskArgs{
/// 				Disk: secondary_disk.ID(),
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
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.inputs.DiskAsyncPrimaryDiskArgs;
/// import com.pulumi.gcp.compute.DiskAsyncReplication;
/// import com.pulumi.gcp.compute.DiskAsyncReplicationArgs;
/// import com.pulumi.gcp.compute.inputs.DiskAsyncReplicationSecondaryDiskArgs;
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
///         var primary_disk = new Disk("primary-disk", DiskArgs.builder()
///             .name("primary-disk")
///             .type("pd-ssd")
///             .zone("europe-west4-a")
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///         var secondary_disk = new Disk("secondary-disk", DiskArgs.builder()
///             .name("secondary-disk")
///             .type("pd-ssd")
///             .zone("europe-west3-a")
///             .asyncPrimaryDisk(DiskAsyncPrimaryDiskArgs.builder()
///                 .disk(primary_disk.id())
///                 .build())
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///         var replication = new DiskAsyncReplication("replication", DiskAsyncReplicationArgs.builder()
///             .primaryDisk(primary_disk.id())
///             .secondaryDisk(DiskAsyncReplicationSecondaryDiskArgs.builder()
///                 .disk(secondary_disk.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary-disk:
///     type: gcp:compute:Disk
///     properties:
///       name: primary-disk
///       type: pd-ssd
///       zone: europe-west4-a
///       physicalBlockSizeBytes: 4096
///   secondary-disk:
///     type: gcp:compute:Disk
///     properties:
///       name: secondary-disk
///       type: pd-ssd
///       zone: europe-west3-a
///       asyncPrimaryDisk:
///         disk: ${["primary-disk"].id}
///       physicalBlockSizeBytes: 4096
///   replication:
///     type: gcp:compute:DiskAsyncReplication
///     properties:
///       primaryDisk: ${["primary-disk"].id}
///       secondaryDisk:
///         disk: ${["secondary-disk"].id}
/// ```
class DiskAsyncReplication extends pulumi.CustomResource {
  /// The primary disk (source of replication).
  late final pulumi.Output<String> primaryDisk;
  /// The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  ///
  /// The `secondary_disk` block includes:
  late final pulumi.Output<DiskAsyncReplicationSecondaryDisk> secondaryDisk;

  /// Creates a new [DiskAsyncReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskAsyncReplication]. {@macro pulumi_compute_disk_async_replication_disk_async_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskAsyncReplication(
    String name, {
    DiskAsyncReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/diskAsyncReplication:DiskAsyncReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.primaryDisk = registerOutput<String>('primaryDisk');
    this.secondaryDisk = registerOutput<DiskAsyncReplicationSecondaryDisk>('secondaryDisk');
  }

  /// Gets an existing [DiskAsyncReplication] resource's state with the given [name] and [id].
  static DiskAsyncReplication get(
    String name,
    pulumi.Input<String> id, {
    DiskAsyncReplicationState? state,
  }) {
    return DiskAsyncReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskAsyncReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/diskAsyncReplication:DiskAsyncReplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.primaryDisk = registerOutput<String>('primaryDisk');
    this.secondaryDisk = registerOutput<DiskAsyncReplicationSecondaryDisk>('secondaryDisk');
  }
}
