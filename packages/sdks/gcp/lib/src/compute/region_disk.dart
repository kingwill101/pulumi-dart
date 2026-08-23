import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_disk_args.dart';
import 'region_disk_async_primary_disk.dart';
import 'region_disk_disk_encryption_key.dart';
import 'region_disk_source_image_encryption_key.dart';
import 'region_disk_source_snapshot_encryption_key.dart';
import 'region_disk_state.dart';

/// Persistent disks are durable storage devices that function similarly to
/// the physical disks in a desktop or a server. Compute Engine manages the
/// hardware behind these devices to ensure data redundancy and optimize
/// performance for you. Persistent disks are available as either standard
/// hard disk drives (HDD) or solid-state drives (SSD).
///
/// Persistent disks are located independently from your virtual machine
/// instances, so you can detach or move persistent disks to keep your data
/// even after you delete your instances. Persistent disk performance scales
/// automatically with size, so you can resize your existing persistent disks
/// or add more persistent disks to an instance to meet your performance and
/// storage space requirements.
///
/// Add a persistent disk to your instance when you need reliable and
/// affordable storage with consistent performance characteristics.
///
///
/// To get more information about RegionDisk, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks)
/// * How-to Guides
/// * [Adding or Resizing Regional Persistent Disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk)
///
///
///
/// ## Example Usage
///
/// ### Region Disk Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const disk = new gcp.compute.Disk("disk", {
///     name: "my-disk",
///     image: "debian-cloud/debian-11",
///     size: 50,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapdisk = new gcp.compute.Snapshot("snapdisk", {
///     name: "my-snapshot",
///     sourceDisk: disk.name,
///     zone: "us-central1-a",
/// });
/// const regiondisk = new gcp.compute.RegionDisk("regiondisk", {
///     name: "my-region-disk",
///     snapshot: snapdisk.id,
///     type: "pd-ssd",
///     region: "us-central1",
///     physicalBlockSizeBytes: 4096,
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// disk = gcp.compute.Disk("disk",
///     name="my-disk",
///     image="debian-cloud/debian-11",
///     size=50,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snapdisk = gcp.compute.Snapshot("snapdisk",
///     name="my-snapshot",
///     source_disk=disk.name,
///     zone="us-central1-a")
/// regiondisk = gcp.compute.RegionDisk("regiondisk",
///     name="my-region-disk",
///     snapshot=snapdisk.id,
///     type="pd-ssd",
///     region="us-central1",
///     physical_block_size_bytes=4096,
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new Gcp.Compute.Disk("disk", new()
///     {
///         Name = "my-disk",
///         Image = "debian-cloud/debian-11",
///         Size = 50,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapdisk = new Gcp.Compute.Snapshot("snapdisk", new()
///     {
///         Name = "my-snapshot",
///         SourceDisk = disk.Name,
///         Zone = "us-central1-a",
///     });
///
///     var regiondisk = new Gcp.Compute.RegionDisk("regiondisk", new()
///     {
///         Name = "my-region-disk",
///         Snapshot = snapdisk.Id,
///         Type = "pd-ssd",
///         Region = "us-central1",
///         PhysicalBlockSizeBytes = 4096,
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
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
/// 		disk, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			Name:  pulumi.String("my-disk"),
/// 			Image: pulumi.String("debian-cloud/debian-11"),
/// 			Size:  pulumi.Int(50),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snapdisk, err := compute.NewSnapshot(ctx, "snapdisk", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("my-snapshot"),
/// 			SourceDisk: disk.Name,
/// 			Zone:       pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionDisk(ctx, "regiondisk", &compute.RegionDiskArgs{
/// 			Name:                   pulumi.String("my-region-disk"),
/// 			Snapshot:               snapdisk.ID().ToIDOutput().ToStringOutput(),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regiondisk" "regiondisk" {
///   name                      = "my-region-disk"
///   snapshot                  = gcp_compute_snapshot.snapdisk.id
///   type                      = "pd-ssd"
///   region                    = "us-central1"
///   physical_block_size_bytes = 4096
///   replica_zones             = ["us-central1-a", "us-central1-f"]
/// }
/// resource "gcp_compute_disk" "disk" {
///   name  = "my-disk"
///   image = "debian-cloud/debian-11"
///   size  = 50
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// resource "gcp_compute_snapshot" "snapdisk" {
///   name        = "my-snapshot"
///   source_disk = gcp_compute_disk.disk.name
///   zone        = "us-central1-a"
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
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .name("my-disk")
///             .image("debian-cloud/debian-11")
///             .size(50)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapdisk = new Snapshot("snapdisk", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .sourceDisk(disk.name())
///             .zone("us-central1-a")
///             .build());
///
///         var regiondisk = new RegionDisk("regiondisk", RegionDiskArgs.builder()
///             .name("my-region-disk")
///             .snapshot(snapdisk.id())
///             .type("pd-ssd")
///             .region("us-central1")
///             .physicalBlockSizeBytes(4096)
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regiondisk:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: my-region-disk
///       snapshot: ${snapdisk.id}
///       type: pd-ssd
///       region: us-central1
///       physicalBlockSizeBytes: 4096
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///   disk:
///     type: gcp:compute:Disk
///     properties:
///       name: my-disk
///       image: debian-cloud/debian-11
///       size: 50
///       type: pd-ssd
///       zone: us-central1-a
///   snapdisk:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       sourceDisk: ${disk.name}
///       zone: us-central1-a
/// ```
///
/// ### Region Disk Async
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.compute.RegionDisk("primary", {
///     name: "primary-region-disk",
///     type: "pd-ssd",
///     region: "us-central1",
///     physicalBlockSizeBytes: 4096,
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
/// });
/// const secondary = new gcp.compute.RegionDisk("secondary", {
///     name: "secondary-region-disk",
///     type: "pd-ssd",
///     region: "us-east1",
///     physicalBlockSizeBytes: 4096,
///     asyncPrimaryDisk: {
///         disk: primary.id,
///     },
///     replicaZones: [
///         "us-east1-b",
///         "us-east1-c",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.compute.RegionDisk("primary",
///     name="primary-region-disk",
///     type="pd-ssd",
///     region="us-central1",
///     physical_block_size_bytes=4096,
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ])
/// secondary = gcp.compute.RegionDisk("secondary",
///     name="secondary-region-disk",
///     type="pd-ssd",
///     region="us-east1",
///     physical_block_size_bytes=4096,
///     async_primary_disk={
///         "disk": primary.id,
///     },
///     replica_zones=[
///         "us-east1-b",
///         "us-east1-c",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Compute.RegionDisk("primary", new()
///     {
///         Name = "primary-region-disk",
///         Type = "pd-ssd",
///         Region = "us-central1",
///         PhysicalBlockSizeBytes = 4096,
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
///     });
///
///     var secondary = new Gcp.Compute.RegionDisk("secondary", new()
///     {
///         Name = "secondary-region-disk",
///         Type = "pd-ssd",
///         Region = "us-east1",
///         PhysicalBlockSizeBytes = 4096,
///         AsyncPrimaryDisk = new Gcp.Compute.Inputs.RegionDiskAsyncPrimaryDiskArgs
///         {
///             Disk = primary.Id,
///         },
///         ReplicaZones = new[]
///         {
///             "us-east1-b",
///             "us-east1-c",
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
/// 		primary, err := compute.NewRegionDisk(ctx, "primary", &compute.RegionDiskArgs{
/// 			Name:                   pulumi.String("primary-region-disk"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionDisk(ctx, "secondary", &compute.RegionDiskArgs{
/// 			Name:                   pulumi.String("secondary-region-disk"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Region:                 pulumi.String("us-east1"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 			AsyncPrimaryDisk: &compute.RegionDiskAsyncPrimaryDiskArgs{
/// 				Disk: primary.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-east1-b"),
/// 				pulumi.String("us-east1-c"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regiondisk" "primary" {
///   name                      = "primary-region-disk"
///   type                      = "pd-ssd"
///   region                    = "us-central1"
///   physical_block_size_bytes = 4096
///   replica_zones             = ["us-central1-a", "us-central1-f"]
/// }
/// resource "gcp_compute_regiondisk" "secondary" {
///   name                      = "secondary-region-disk"
///   type                      = "pd-ssd"
///   region                    = "us-east1"
///   physical_block_size_bytes = 4096
///   async_primary_disk = {
///     disk = gcp_compute_regiondisk.primary.id
///   }
///   replica_zones = ["us-east1-b", "us-east1-c"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
/// import com.pulumi.gcp.compute.inputs.RegionDiskAsyncPrimaryDiskArgs;
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
///         var primary = new RegionDisk("primary", RegionDiskArgs.builder()
///             .name("primary-region-disk")
///             .type("pd-ssd")
///             .region("us-central1")
///             .physicalBlockSizeBytes(4096)
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .build());
///
///         var secondary = new RegionDisk("secondary", RegionDiskArgs.builder()
///             .name("secondary-region-disk")
///             .type("pd-ssd")
///             .region("us-east1")
///             .physicalBlockSizeBytes(4096)
///             .asyncPrimaryDisk(RegionDiskAsyncPrimaryDiskArgs.builder()
///                 .disk(primary.id())
///                 .build())
///             .replicaZones(
///                 "us-east1-b",
///                 "us-east1-c")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: primary-region-disk
///       type: pd-ssd
///       region: us-central1
///       physicalBlockSizeBytes: 4096
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///   secondary:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: secondary-region-disk
///       type: pd-ssd
///       region: us-east1
///       physicalBlockSizeBytes: 4096
///       asyncPrimaryDisk:
///         disk: ${primary.id}
///       replicaZones:
///         - us-east1-b
///         - us-east1-c
/// ```
///
/// ### Region Disk Features
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regiondisk = new gcp.compute.RegionDisk("regiondisk", {
///     name: "my-region-features-disk",
///     type: "pd-ssd",
///     region: "us-central1",
///     physicalBlockSizeBytes: 4096,
///     guestOsFeatures: [
///         {
///             type: "SECURE_BOOT",
///         },
///         {
///             type: "MULTI_IP_SUBNET",
///         },
///         {
///             type: "WINDOWS",
///         },
///     ],
///     licenses: ["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"],
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regiondisk = gcp.compute.RegionDisk("regiondisk",
///     name="my-region-features-disk",
///     type="pd-ssd",
///     region="us-central1",
///     physical_block_size_bytes=4096,
///     guest_os_features=[
///         {
///             "type": "SECURE_BOOT",
///         },
///         {
///             "type": "MULTI_IP_SUBNET",
///         },
///         {
///             "type": "WINDOWS",
///         },
///     ],
///     licenses=["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"],
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regiondisk = new Gcp.Compute.RegionDisk("regiondisk", new()
///     {
///         Name = "my-region-features-disk",
///         Type = "pd-ssd",
///         Region = "us-central1",
///         PhysicalBlockSizeBytes = 4096,
///         GuestOsFeatures = new[]
///         {
///             new Gcp.Compute.Inputs.RegionDiskGuestOsFeatureArgs
///             {
///                 Type = "SECURE_BOOT",
///             },
///             new Gcp.Compute.Inputs.RegionDiskGuestOsFeatureArgs
///             {
///                 Type = "MULTI_IP_SUBNET",
///             },
///             new Gcp.Compute.Inputs.RegionDiskGuestOsFeatureArgs
///             {
///                 Type = "WINDOWS",
///             },
///         },
///         Licenses = new[]
///         {
///             "https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core",
///         },
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
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
/// 		_, err := compute.NewRegionDisk(ctx, "regiondisk", &compute.RegionDiskArgs{
/// 			Name:                   pulumi.String("my-region-features-disk"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 			GuestOsFeatures: compute.RegionDiskGuestOsFeatureArray{
/// 				&compute.RegionDiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("SECURE_BOOT"),
/// 				},
/// 				&compute.RegionDiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("MULTI_IP_SUBNET"),
/// 				},
/// 				&compute.RegionDiskGuestOsFeatureArgs{
/// 					Type: pulumi.String("WINDOWS"),
/// 				},
/// 			},
/// 			Licenses: pulumi.StringArray{
/// 				pulumi.String("https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"),
/// 			},
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regiondisk" "regiondisk" {
///   name                      = "my-region-features-disk"
///   type                      = "pd-ssd"
///   region                    = "us-central1"
///   physical_block_size_bytes = 4096
///   guest_os_features {
///     type = "SECURE_BOOT"
///   }
///   guest_os_features {
///     type = "MULTI_IP_SUBNET"
///   }
///   guest_os_features {
///     type = "WINDOWS"
///   }
///   licenses      = ["https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core"]
///   replica_zones = ["us-central1-a", "us-central1-f"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
/// import com.pulumi.gcp.compute.inputs.RegionDiskGuestOsFeatureArgs;
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
///         var regiondisk = new RegionDisk("regiondisk", RegionDiskArgs.builder()
///             .name("my-region-features-disk")
///             .type("pd-ssd")
///             .region("us-central1")
///             .physicalBlockSizeBytes(4096)
///             .guestOsFeatures(
///                 RegionDiskGuestOsFeatureArgs.builder()
///                     .type("SECURE_BOOT")
///                     .build(),
///                 RegionDiskGuestOsFeatureArgs.builder()
///                     .type("MULTI_IP_SUBNET")
///                     .build(),
///                 RegionDiskGuestOsFeatureArgs.builder()
///                     .type("WINDOWS")
///                     .build())
///             .licenses("https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core")
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regiondisk:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: my-region-features-disk
///       type: pd-ssd
///       region: us-central1
///       physicalBlockSizeBytes: 4096
///       guestOsFeatures:
///         - type: SECURE_BOOT
///         - type: MULTI_IP_SUBNET
///         - type: WINDOWS
///       licenses:
///         - https://www.googleapis.com/compute/v1/projects/windows-cloud/global/licenses/windows-server-core
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
/// ```
///
/// ### Region Disk Hyperdisk Balanced Ha Write Many
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.compute.RegionDisk("primary", {
///     name: "my-region-hyperdisk",
///     type: "hyperdisk-balanced-high-availability",
///     region: "us-central1",
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     accessMode: "READ_WRITE_MANY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.compute.RegionDisk("primary",
///     name="my-region-hyperdisk",
///     type="hyperdisk-balanced-high-availability",
///     region="us-central1",
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ],
///     access_mode="READ_WRITE_MANY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Compute.RegionDisk("primary", new()
///     {
///         Name = "my-region-hyperdisk",
///         Type = "hyperdisk-balanced-high-availability",
///         Region = "us-central1",
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
///         AccessMode = "READ_WRITE_MANY",
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
/// 		_, err := compute.NewRegionDisk(ctx, "primary", &compute.RegionDiskArgs{
/// 			Name:   pulumi.String("my-region-hyperdisk"),
/// 			Type:   pulumi.String("hyperdisk-balanced-high-availability"),
/// 			Region: pulumi.String("us-central1"),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 			AccessMode: pulumi.String("READ_WRITE_MANY"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regiondisk" "primary" {
///   name          = "my-region-hyperdisk"
///   type          = "hyperdisk-balanced-high-availability"
///   region        = "us-central1"
///   replica_zones = ["us-central1-a", "us-central1-f"]
///   access_mode   = "READ_WRITE_MANY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
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
///         var primary = new RegionDisk("primary", RegionDiskArgs.builder()
///             .name("my-region-hyperdisk")
///             .type("hyperdisk-balanced-high-availability")
///             .region("us-central1")
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
///             .accessMode("READ_WRITE_MANY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:compute:RegionDisk
///     properties:
///       name: my-region-hyperdisk
///       type: hyperdisk-balanced-high-availability
///       region: us-central1
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///       accessMode: READ_WRITE_MANY
/// ```
///
///
/// ## Import
///
/// RegionDisk can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/disks/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionDisk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default projects/{{project}}/regions/{{region}}/disks/{{name}}
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{name}}
/// ```
class RegionDisk extends pulumi.CustomResource {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  late final pulumi.Output<String> accessMode;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskAsyncPrimaryDisk?> asyncPrimaryDisk;
  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  late final pulumi.Output<bool?> createSnapshotBeforeDestroy;
  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  late final pulumi.Output<String?> createSnapshotBeforeDestroyPrefix;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// Encrypts the disk using a customer-supplied encryption key.
  /// After you encrypt a disk with a customer-supplied key, you must
  /// provide the same key if you use the disk later (e.g. to create a disk
  /// snapshot or an image, or to attach the disk to a virtual machine).
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the disk.
  /// If you do not provide an encryption key when creating the disk, then
  /// the disk will be encrypted using an automatically generated key and
  /// you do not need to provide a key to use the disk later.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskDiskEncryptionKey?> diskEncryptionKey;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> diskId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// (Optional, Beta)
  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  late final pulumi.Output<bool?> eraseWindowsVssSignature;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> guestOsFeatures;
  /// The image from which to initialize this disk. This can be
  /// one of: the image's `selfLink`, `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`. If referred by family, the
  /// images names must include the family name. If they don't, use the
  /// [gcp.compute.Image data source](https://www.terraform.io/docs/providers/google/d/compute_image.html).
  /// For instance, the image `centos-6-v20180104` includes its family name `centos-6`.
  /// These images can be referred by family name here.
  late final pulumi.Output<String?> image;
  /// (Optional, Beta, Deprecated)
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// &gt; **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  late final pulumi.Output<String?> interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this disk.  A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Last attach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastDetachTimestamp;
  /// Any applicable license URI.
  late final pulumi.Output<List<String>> licenses;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  late final pulumi.Output<int> physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// that the disk can handle. Values must be between 10,000 and 120,000.
  /// For more details, see the Extreme persistent disk [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  late final pulumi.Output<int> provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// mb per second that the disk can handle. Values must be greater than or equal to 1.
  late final pulumi.Output<int> provisionedThroughput;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A reference to the region where the disk resides.
  late final pulumi.Output<String> region;
  /// URLs of the zones where the disk should be replicated to.
  late final pulumi.Output<List<String>> replicaZones;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the sourceImage or
  /// sourceSnapshot parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with sourceImage or sourceSnapshot,
  /// the value of sizeGb must not be less than the size of the sourceImage
  /// or the size of the snapshot.
  late final pulumi.Output<int> size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. For example, the following are
  /// valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  late final pulumi.Output<String?> snapshot;
  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  late final pulumi.Output<String?> sourceDisk;
  /// The ID value of the disk used to create this image. This value may
  /// be used to determine whether the image was taken from the current
  /// or a previous instance of a given disk name.
  late final pulumi.Output<String> sourceDiskId;
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskSourceImageEncryptionKey?> sourceImageEncryptionKey;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  late final pulumi.Output<String> sourceImageId;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskSourceSnapshotEncryptionKey?> sourceSnapshotEncryptionKey;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  late final pulumi.Output<String> sourceSnapshotId;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  late final pulumi.Output<String?> type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  late final pulumi.Output<List<String>> users;

  /// Creates a new [RegionDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionDisk]. {@macro pulumi_compute_region_disk_region_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionDisk(
    String name, {
    RegionDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDisk:RegionDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String>('accessMode');
    asyncPrimaryDisk = registerOutput<RegionDiskAsyncPrimaryDisk?>('asyncPrimaryDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createSnapshotBeforeDestroy = registerOutput<bool?>('createSnapshotBeforeDestroy');
    createSnapshotBeforeDestroyPrefix = registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKey = registerOutput<RegionDiskDiskEncryptionKey?>('diskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskId = registerOutput<String>('diskId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    eraseWindowsVssSignature = registerOutput<bool?>('eraseWindowsVssSignature');
    guestOsFeatures = registerOutput<List<Map<String, dynamic>>>('guestOsFeatures');
    image = registerOutput<String?>('image');
    interface = registerOutput<String?>('interface');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    project = registerOutput<String>('project');
    provisionedIops = registerOutput<int>('provisionedIops');
    provisionedThroughput = registerOutput<int>('provisionedThroughput');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    replicaZones = registerOutput<List<String>>('replicaZones');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    snapshot = registerOutput<String?>('snapshot');
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceImageEncryptionKey = registerOutput<RegionDiskSourceImageEncryptionKey?>('sourceImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String>('sourceImageId');
    sourceSnapshotEncryptionKey = registerOutput<RegionDiskSourceSnapshotEncryptionKey?>('sourceSnapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    type = registerOutput<String?>('type');
    users = registerOutput<List<String>>('users');
  }

  /// Gets an existing [RegionDisk] resource's state with the given [name] and [id].
  static RegionDisk get(
    String name,
    pulumi.Input<String> id, {
    RegionDiskState? state,
  }) {
    return RegionDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDisk:RegionDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String>('accessMode');
    asyncPrimaryDisk = registerOutput<RegionDiskAsyncPrimaryDisk?>('asyncPrimaryDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createSnapshotBeforeDestroy = registerOutput<bool?>('createSnapshotBeforeDestroy');
    createSnapshotBeforeDestroyPrefix = registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskEncryptionKey = registerOutput<RegionDiskDiskEncryptionKey?>('diskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskId = registerOutput<String>('diskId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    eraseWindowsVssSignature = registerOutput<bool?>('eraseWindowsVssSignature');
    guestOsFeatures = registerOutput<List<Map<String, dynamic>>>('guestOsFeatures');
    image = registerOutput<String?>('image');
    interface = registerOutput<String?>('interface');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    project = registerOutput<String>('project');
    provisionedIops = registerOutput<int>('provisionedIops');
    provisionedThroughput = registerOutput<int>('provisionedThroughput');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    replicaZones = registerOutput<List<String>>('replicaZones');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    snapshot = registerOutput<String?>('snapshot');
    sourceDisk = registerOutput<String?>('sourceDisk');
    sourceDiskId = registerOutput<String>('sourceDiskId');
    sourceImageEncryptionKey = registerOutput<RegionDiskSourceImageEncryptionKey?>('sourceImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String>('sourceImageId');
    sourceSnapshotEncryptionKey = registerOutput<RegionDiskSourceSnapshotEncryptionKey?>('sourceSnapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionDiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    type = registerOutput<String?>('type');
    users = registerOutput<List<String>>('users');
  }
}
