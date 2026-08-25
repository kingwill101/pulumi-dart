import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_params.dart';
import 'snapshot_snapshot_encryption_key.dart';
import 'snapshot_source_disk_encryption_key.dart';
import 'snapshot_state.dart';

/// Represents a Persistent Disk Snapshot resource.
///
/// Use snapshots to back up data from your persistent disks. Snapshots are
/// different from public images and custom images, which are used primarily
/// to create instances or configure instance templates. Snapshots are useful
/// for periodic backup of the data on your persistent disks. You can create
/// snapshots from persistent disks even while they are attached to running
/// instances.
///
/// Snapshots are incremental, so you can create regular snapshots on a
/// persistent disk faster and at a much lower cost than if you regularly
/// created a full image of the disk.
///
///
/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/create-snapshots)
///
///
///
/// ## Example Usage
///
/// ### Snapshot Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "debian-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapshot = new gcp.compute.Snapshot("snapshot", {
///     name: "my-snapshot",
///     sourceDisk: persistent.id,
///     zone: "us-central1-a",
///     labels: {
///         my_label: "value",
///     },
///     storageLocations: ["us-central1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="debian-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snapshot = gcp.compute.Snapshot("snapshot",
///     name="my-snapshot",
///     source_disk=persistent.id,
///     zone="us-central1-a",
///     labels={
///         "my_label": "value",
///     },
///     storage_locations=["us-central1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "debian-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapshot = new Gcp.Compute.Snapshot("snapshot", new()
///     {
///         Name = "my-snapshot",
///         SourceDisk = persistent.Id,
///         Zone = "us-central1-a",
///         Labels =
///         {
///             { "my_label", "value" },
///         },
///         StorageLocations = new[]
///         {
///             "us-central1",
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
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("debian-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("my-snapshot"),
/// 			SourceDisk: persistent.ID().ToIDOutput().ToStringOutput(),
/// 			Zone:       pulumi.String("us-central1-a"),
/// 			Labels: pulumi.StringMap{
/// 				"my_label": pulumi.String("value"),
/// 			},
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-central1"),
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
/// data "gcp_compute_getimage" "debian" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_snapshot" "snapshot" {
///   name        = "my-snapshot"
///   source_disk = gcp_compute_disk.persistent.id
///   zone        = "us-central1-a"
///   labels = {
///     "my_label" = "value"
///   }
///   storage_locations = ["us-central1"]
/// }
/// resource "gcp_compute_disk" "persistent" {
///   name  = "debian-disk"
///   image = data.gcp_compute_getimage.debian.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("debian-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .sourceDisk(persistent.id())
///             .zone("us-central1-a")
///             .labels(Map.of("my_label", "value"))
///             .storageLocations("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       sourceDisk: ${persistent.id}
///       zone: us-central1-a
///       labels:
///         my_label: value
///       storageLocations:
///         - us-central1
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: debian-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Snapshot Basic2
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "debian-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapshot = new gcp.compute.Snapshot("snapshot", {
///     name: "my-snapshot",
///     sourceDisk: persistent.id,
///     zone: "us-central1-a",
///     labels: {
///         my_label: "value",
///     },
///     storageLocations: ["us-central1"],
///     guestFlush: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="debian-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snapshot = gcp.compute.Snapshot("snapshot",
///     name="my-snapshot",
///     source_disk=persistent.id,
///     zone="us-central1-a",
///     labels={
///         "my_label": "value",
///     },
///     storage_locations=["us-central1"],
///     guest_flush=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "debian-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapshot = new Gcp.Compute.Snapshot("snapshot", new()
///     {
///         Name = "my-snapshot",
///         SourceDisk = persistent.Id,
///         Zone = "us-central1-a",
///         Labels =
///         {
///             { "my_label", "value" },
///         },
///         StorageLocations = new[]
///         {
///             "us-central1",
///         },
///         GuestFlush = true,
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
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("debian-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("my-snapshot"),
/// 			SourceDisk: persistent.ID().ToIDOutput().ToStringOutput(),
/// 			Zone:       pulumi.String("us-central1-a"),
/// 			Labels: pulumi.StringMap{
/// 				"my_label": pulumi.String("value"),
/// 			},
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-central1"),
/// 			},
/// 			GuestFlush: pulumi.Bool(true),
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
/// data "gcp_compute_getimage" "debian" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_snapshot" "snapshot" {
///   name        = "my-snapshot"
///   source_disk = gcp_compute_disk.persistent.id
///   zone        = "us-central1-a"
///   labels = {
///     "my_label" = "value"
///   }
///   storage_locations = ["us-central1"]
///   guest_flush       = true
/// }
/// resource "gcp_compute_disk" "persistent" {
///   name  = "debian-disk"
///   image = data.gcp_compute_getimage.debian.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("debian-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .sourceDisk(persistent.id())
///             .zone("us-central1-a")
///             .labels(Map.of("my_label", "value"))
///             .storageLocations("us-central1")
///             .guestFlush(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       sourceDisk: ${persistent.id}
///       zone: us-central1-a
///       labels:
///         my_label: value
///       storageLocations:
///         - us-central1
///       guestFlush: true
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: debian-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Snapshot Basic Source Instant Snapshot
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "debian-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const instantSnapshot = new gcp.compute.InstantSnapshot("instant_snapshot", {
///     name: "my-instant-snapshot",
///     sourceDisk: persistent.selfLink,
///     zone: persistent.zone,
///     description: "A test snapshot",
///     labels: {
///         foo: "bar",
///     },
/// });
/// const snapshot = new gcp.compute.Snapshot("snapshot", {
///     name: "my-snapshot",
///     zone: "us-central1-a",
///     sourceInstantSnapshot: instantSnapshot.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="debian-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// instant_snapshot = gcp.compute.InstantSnapshot("instant_snapshot",
///     name="my-instant-snapshot",
///     source_disk=persistent.self_link,
///     zone=persistent.zone,
///     description="A test snapshot",
///     labels={
///         "foo": "bar",
///     })
/// snapshot = gcp.compute.Snapshot("snapshot",
///     name="my-snapshot",
///     zone="us-central1-a",
///     source_instant_snapshot=instant_snapshot.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "debian-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var instantSnapshot = new Gcp.Compute.InstantSnapshot("instant_snapshot", new()
///     {
///         Name = "my-instant-snapshot",
///         SourceDisk = persistent.SelfLink,
///         Zone = persistent.Zone,
///         Description = "A test snapshot",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var snapshot = new Gcp.Compute.Snapshot("snapshot", new()
///     {
///         Name = "my-snapshot",
///         Zone = "us-central1-a",
///         SourceInstantSnapshot = instantSnapshot.Id,
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
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("debian-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instantSnapshot, err := compute.NewInstantSnapshot(ctx, "instant_snapshot", &compute.InstantSnapshotArgs{
/// 			Name:        pulumi.String("my-instant-snapshot"),
/// 			SourceDisk:  persistent.SelfLink,
/// 			Zone:        persistent.Zone,
/// 			Description: pulumi.String("A test snapshot"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			Name:                  pulumi.String("my-snapshot"),
/// 			Zone:                  pulumi.String("us-central1-a"),
/// 			SourceInstantSnapshot: instantSnapshot.ID().ToIDOutput().ToStringOutput(),
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
/// data "gcp_compute_getimage" "debian" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_snapshot" "snapshot" {
///   name                    = "my-snapshot"
///   zone                    = "us-central1-a"
///   source_instant_snapshot = gcp_compute_instantsnapshot.instant_snapshot.id
/// }
/// resource "gcp_compute_instantsnapshot" "instant_snapshot" {
///   name        = "my-instant-snapshot"
///   source_disk = gcp_compute_disk.persistent.self_link
///   zone        = gcp_compute_disk.persistent.zone
///   description = "A test snapshot"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// resource "gcp_compute_disk" "persistent" {
///   name  = "debian-disk"
///   image = data.gcp_compute_getimage.debian.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.InstantSnapshot;
/// import com.pulumi.gcp.compute.InstantSnapshotArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("debian-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var instantSnapshot = new InstantSnapshot("instantSnapshot", InstantSnapshotArgs.builder()
///             .name("my-instant-snapshot")
///             .sourceDisk(persistent.selfLink())
///             .zone(persistent.zone())
///             .description("A test snapshot")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .zone("us-central1-a")
///             .sourceInstantSnapshot(instantSnapshot.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       zone: us-central1-a
///       sourceInstantSnapshot: ${instantSnapshot.id}
///   instantSnapshot:
///     type: gcp:compute:InstantSnapshot
///     name: instant_snapshot
///     properties:
///       name: my-instant-snapshot
///       sourceDisk: ${persistent.selfLink}
///       zone: ${persistent.zone}
///       description: A test snapshot
///       labels:
///         foo: bar
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: debian-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Snapshot Chainname
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
///     name: "debian-disk",
///     image: debian.then(debian => debian.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapshot = new gcp.compute.Snapshot("snapshot", {
///     name: "my-snapshot",
///     sourceDisk: persistent.id,
///     zone: "us-central1-a",
///     chainName: "snapshot-chain",
///     labels: {
///         my_label: "value",
///     },
///     storageLocations: ["us-central1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
///     name="debian-disk",
///     image=debian.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snapshot = gcp.compute.Snapshot("snapshot",
///     name="my-snapshot",
///     source_disk=persistent.id,
///     zone="us-central1-a",
///     chain_name="snapshot-chain",
///     labels={
///         "my_label": "value",
///     },
///     storage_locations=["us-central1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var persistent = new Gcp.Compute.Disk("persistent", new()
///     {
///         Name = "debian-disk",
///         Image = debian.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapshot = new Gcp.Compute.Snapshot("snapshot", new()
///     {
///         Name = "my-snapshot",
///         SourceDisk = persistent.Id,
///         Zone = "us-central1-a",
///         ChainName = "snapshot-chain",
///         Labels =
///         {
///             { "my_label", "value" },
///         },
///         StorageLocations = new[]
///         {
///             "us-central1",
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
/// 		debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// 			Name:  pulumi.String("debian-disk"),
/// 			Image: pulumi.String(debian.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("my-snapshot"),
/// 			SourceDisk: persistent.ID().ToIDOutput().ToStringOutput(),
/// 			Zone:       pulumi.String("us-central1-a"),
/// 			ChainName:  pulumi.String("snapshot-chain"),
/// 			Labels: pulumi.StringMap{
/// 				"my_label": pulumi.String("value"),
/// 			},
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-central1"),
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
/// data "gcp_compute_getimage" "debian" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_snapshot" "snapshot" {
///   name        = "my-snapshot"
///   source_disk = gcp_compute_disk.persistent.id
///   zone        = "us-central1-a"
///   chain_name  = "snapshot-chain"
///   labels = {
///     "my_label" = "value"
///   }
///   storage_locations = ["us-central1"]
/// }
/// resource "gcp_compute_disk" "persistent" {
///   name  = "debian-disk"
///   image = data.gcp_compute_getimage.debian.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
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
///         final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var persistent = new Disk("persistent", DiskArgs.builder()
///             .name("debian-disk")
///             .image(debian.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .name("my-snapshot")
///             .sourceDisk(persistent.id())
///             .zone("us-central1-a")
///             .chainName("snapshot-chain")
///             .labels(Map.of("my_label", "value"))
///             .storageLocations("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: gcp:compute:Snapshot
///     properties:
///       name: my-snapshot
///       sourceDisk: ${persistent.id}
///       zone: us-central1-a
///       chainName: snapshot-chain
///       labels:
///         my_label: value
///       storageLocations:
///         - us-central1
///   persistent:
///     type: gcp:compute:Disk
///     properties:
///       name: debian-disk
///       image: ${debian.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// Snapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/snapshots/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Snapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/snapshot:Snapshot default projects/{{project}}/global/snapshots/{{name}}
/// $ pulumi import gcp:compute/snapshot:Snapshot default {{project}}/{{name}}
/// $ pulumi import gcp:compute/snapshot:Snapshot default {{name}}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  late final pulumi.Output<String?> chainName;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Size of the snapshot, specified in GB.
  late final pulumi.Output<int> diskSizeGb;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// (Optional, Beta)
  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  late final pulumi.Output<bool?> guestFlush;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// A list of public visible licenses that apply to this snapshot. This
  /// can be because the original image had licenses attached (such as a
  /// Windows image).  snapshotEncryptionKey nested object Encrypts the
  /// snapshot using a customer-supplied encryption key.
  late final pulumi.Output<List<String>> licenses;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<SnapshotParams?> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Encrypts the snapshot using a customer-supplied encryption key.
  /// After you encrypt a snapshot using a customer-supplied key, you must
  /// provide the same key if you use the snapshot later. For example, you
  /// must provide the encryption key when you create a disk from the
  /// encrypted snapshot in a future request.
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the snapshot.
  /// If you do not provide an encryption key when creating the snapshot,
  /// then the snapshot will be encrypted using an automatically generated
  /// key and you do not need to provide a key to use the snapshot later.
  /// Structure is documented below.
  late final pulumi.Output<SnapshotSnapshotEncryptionKey?> snapshotEncryptionKey;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> snapshotId;
  /// Indicates the type of the snapshot.
  /// Possible values are: `ARCHIVE`, `STANDARD`.
  late final pulumi.Output<String?> snapshotType;
  /// A reference to the disk used to create this snapshot.
  late final pulumi.Output<String> sourceDisk;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  late final pulumi.Output<SnapshotSourceDiskEncryptionKey?> sourceDiskEncryptionKey;
  /// A reference to the instant snapshot used to create this snapshot.
  late final pulumi.Output<String?> sourceInstantSnapshot;
  /// A size of the storage used by the snapshot. As snapshots share
  /// storage, this number is expected to change with snapshot
  /// creation/deletion.
  late final pulumi.Output<int> storageBytes;
  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  late final pulumi.Output<List<String>> storageLocations;
  /// A reference to the zone where the disk is hosted.
  late final pulumi.Output<String> zone;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_compute_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    chainName = registerOutput<String?>('chainName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    guestFlush = registerOutput<bool?>('guestFlush');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    params = registerOutput<SnapshotParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    selfLink = registerOutput<String>('selfLink');
    snapshotEncryptionKey = registerOutput<SnapshotSnapshotEncryptionKey?>('snapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snapshotId = registerOutput<int>('snapshotId');
    snapshotType = registerOutput<String?>('snapshotType');
    sourceDisk = registerOutput<String>('sourceDisk');
    sourceDiskEncryptionKey = registerOutput<SnapshotSourceDiskEncryptionKey?>('sourceDiskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSourceDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    storageBytes = registerOutput<int>('storageBytes');
    storageLocations = registerOutput<List<String>>('storageLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    chainName = registerOutput<String?>('chainName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    guestFlush = registerOutput<bool?>('guestFlush');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    params = registerOutput<SnapshotParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    selfLink = registerOutput<String>('selfLink');
    snapshotEncryptionKey = registerOutput<SnapshotSnapshotEncryptionKey?>('snapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snapshotId = registerOutput<int>('snapshotId');
    snapshotType = registerOutput<String?>('snapshotType');
    sourceDisk = registerOutput<String>('sourceDisk');
    sourceDiskEncryptionKey = registerOutput<SnapshotSourceDiskEncryptionKey?>('sourceDiskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSourceDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    storageBytes = registerOutput<int>('storageBytes');
    storageLocations = registerOutput<List<String>>('storageLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [Snapshot] resource.
  Snapshot.reference(String urn)
    : super(
        'gcp:compute/snapshot:Snapshot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    chainName = registerOutput<String?>('chainName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    guestFlush = registerOutput<bool?>('guestFlush');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenses = registerOutput<List<String>>('licenses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    params = registerOutput<SnapshotParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    selfLink = registerOutput<String>('selfLink');
    snapshotEncryptionKey = registerOutput<SnapshotSnapshotEncryptionKey?>('snapshotEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snapshotId = registerOutput<int>('snapshotId');
    snapshotType = registerOutput<String?>('snapshotType');
    sourceDisk = registerOutput<String>('sourceDisk');
    sourceDiskEncryptionKey = registerOutput<SnapshotSourceDiskEncryptionKey?>('sourceDiskEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotSourceDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstantSnapshot = registerOutput<String?>('sourceInstantSnapshot');
    storageBytes = registerOutput<int>('storageBytes');
    storageLocations = registerOutput<List<String>>('storageLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zone = registerOutput<String>('zone');
  }
}
