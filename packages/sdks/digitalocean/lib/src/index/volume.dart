import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_state.dart';

/// Provides a DigitalOcean Block Storage volume which can be attached to a Droplet in order to provide expanded storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Volume("foobar", {
///     region: digitalocean.Region.NYC1,
///     name: "baz",
///     size: 100,
///     initialFilesystemType: digitalocean.FileSystemType.EXT4,
///     description: "an example volume",
/// });
/// const foobarDroplet = new digitalocean.Droplet("foobar", {
///     name: "baz",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC1,
/// });
/// const foobarVolumeAttachment = new digitalocean.VolumeAttachment("foobar", {
///     dropletId: foobarDroplet.id.apply(x =>Number(x)),
///     volumeId: foobar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Volume("foobar",
///     region=digitalocean.Region.NYC1,
///     name="baz",
///     size=100,
///     initial_filesystem_type=digitalocean.FileSystemType.EXT4,
///     description="an example volume")
/// foobar_droplet = digitalocean.Droplet("foobar",
///     name="baz",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC1)
/// foobar_volume_attachment = digitalocean.VolumeAttachment("foobar",
///     droplet_id=foobar_droplet.id.apply(lambda x: int(x)),
///     volume_id=foobar.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Volume("foobar", new()
///     {
///         Region = DigitalOcean.Region.NYC1,
///         Name = "baz",
///         Size = 100,
///         InitialFilesystemType = DigitalOcean.FileSystemType.EXT4,
///         Description = "an example volume",
///     });
///
///     var foobarDroplet = new DigitalOcean.Droplet("foobar", new()
///     {
///         Name = "baz",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC1,
///     });
///
///     var foobarVolumeAttachment = new DigitalOcean.VolumeAttachment("foobar", new()
///     {
///         DropletId = foobarDroplet.Id,
///         VolumeId = foobar.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"strconv"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewVolume(ctx, "foobar", &digitalocean.VolumeArgs{
/// 			Region:                pulumi.String(digitalocean.RegionNYC1),
/// 			Name:                  pulumi.String("baz"),
/// 			Size:                  pulumi.Int(100),
/// 			InitialFilesystemType: pulumi.String(digitalocean.FileSystemTypeEXT4),
/// 			Description:           pulumi.String("an example volume"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarDroplet, err := digitalocean.NewDroplet(ctx, "foobar", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("baz"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVolumeAttachment(ctx, "foobar", &digitalocean.VolumeAttachmentArgs{
/// 			DropletId: foobarDroplet.ID().ToIDOutput().ApplyT(func(id pulumi.ID) (int, error) { return strconv.Atoi(string(id)) }).(pulumi.IntOutput),
/// 			VolumeId:  foobar.ID().ToIDOutput().ToStringOutput(),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_volume" "foobar" {
///   region                  = "nyc1"
///   name                    = "baz"
///   size                    = 100
///   initial_filesystem_type = "ext4"
///   description             = "an example volume"
/// }
/// resource "digitalocean_droplet" "foobar" {
///   name   = "baz"
///   size   = "s-1vcpu-1gb"
///   image  = "ubuntu-18-04-x64"
///   region = "nyc1"
/// }
/// resource "digitalocean_volumeattachment" "foobar" {
///   droplet_id = digitalocean_droplet.foobar.id
///   volume_id  = digitalocean_volume.foobar.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Volume;
/// import com.pulumi.digitalocean.VolumeArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.VolumeAttachment;
/// import com.pulumi.digitalocean.VolumeAttachmentArgs;
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
///         var foobar = new Volume("foobar", VolumeArgs.builder()
///             .region("nyc1")
///             .name("baz")
///             .size(100)
///             .initialFilesystemType("ext4")
///             .description("an example volume")
///             .build());
///
///         var foobarDroplet = new Droplet("foobarDroplet", DropletArgs.builder()
///             .name("baz")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc1")
///             .build());
///
///         var foobarVolumeAttachment = new VolumeAttachment("foobarVolumeAttachment", VolumeAttachmentArgs.builder()
///             .dropletId(foobarDroplet.id())
///             .volumeId(foobar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Volume
///     properties:
///       region: nyc1
///       name: baz
///       size: 100
///       initialFilesystemType: ext4
///       description: an example volume
///   foobarDroplet:
///     type: digitalocean:Droplet
///     name: foobar
///     properties:
///       name: baz
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc1
///   foobarVolumeAttachment:
///     type: digitalocean:VolumeAttachment
///     name: foobar
///     properties:
///       dropletId: ${foobarDroplet.id}
///       volumeId: ${foobar.id}
/// ```
///
///
/// You can also create a volume from an existing snapshot.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = digitalocean.getVolumeSnapshot({
///     name: "baz",
/// });
/// const foobarVolume = new digitalocean.Volume("foobar", {
///     region: digitalocean.Region.LON1,
///     name: "foo",
///     size: foobar.then(foobar => foobar.minDiskSize),
///     snapshotId: foobar.then(foobar => foobar.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.get_volume_snapshot(name="baz")
/// foobar_volume = digitalocean.Volume("foobar",
///     region=digitalocean.Region.LON1,
///     name="foo",
///     size=foobar.min_disk_size,
///     snapshot_id=foobar.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = DigitalOcean.GetVolumeSnapshot.Invoke(new()
///     {
///         Name = "baz",
///     });
///
///     var foobarVolume = new DigitalOcean.Volume("foobar", new()
///     {
///         Region = DigitalOcean.Region.LON1,
///         Name = "foo",
///         Size = foobar.Apply(getVolumeSnapshotResult => getVolumeSnapshotResult.MinDiskSize),
///         SnapshotId = foobar.Apply(getVolumeSnapshotResult => getVolumeSnapshotResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.GetVolumeSnapshot(ctx, &digitalocean.LookupVolumeSnapshotArgs{
/// 			Name: pulumi.StringRef("baz"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVolume(ctx, "foobar", &digitalocean.VolumeArgs{
/// 			Region:     pulumi.String(digitalocean.RegionLON1),
/// 			Name:       pulumi.String("foo"),
/// 			Size:       pulumi.Int(foobar.MinDiskSize),
/// 			SnapshotId: pulumi.String(foobar.Id),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// data "digitalocean_getvolumesnapshot" "foobar" {
///   name = "baz"
/// }
///
/// resource "digitalocean_volume" "foobar" {
///   region      = "lon1"
///   name        = "foo"
///   size        = data.digitalocean_getvolumesnapshot.foobar.min_disk_size
///   snapshot_id = data.digitalocean_getvolumesnapshot.foobar.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetVolumeSnapshotArgs;
/// import com.pulumi.digitalocean.Volume;
/// import com.pulumi.digitalocean.VolumeArgs;
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
///         final var foobar = DigitaloceanFunctions.getVolumeSnapshot(GetVolumeSnapshotArgs.builder()
///             .name("baz")
///             .build());
///
///         var foobarVolume = new Volume("foobarVolume", VolumeArgs.builder()
///             .region("lon1")
///             .name("foo")
///             .size(foobar.minDiskSize())
///             .snapshotId(foobar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobarVolume:
///     type: digitalocean:Volume
///     name: foobar
///     properties:
///       region: lon1
///       name: foo
///       size: ${foobar.minDiskSize}
///       snapshotId: ${foobar.id}
/// variables:
///   foobar:
///     fn::invoke:
///       function: digitalocean:getVolumeSnapshot
///       arguments:
///         name: baz
/// ```
///
///
/// ## Import
///
/// Volumes can be imported using the `volume id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/volume:Volume volume 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class Volume extends pulumi.CustomResource {
  /// A free-form text field up to a limit of 1024 bytes to describe a block storage volume.
  late final pulumi.Output<String?> description;
  /// A list of associated droplet ids.
  late final pulumi.Output<List<int>> dropletIds;
  /// Filesystem label for the block storage volume.
  late final pulumi.Output<String> filesystemLabel;
  /// Filesystem type (`xfs` or `ext4`) for the block storage volume.
  late final pulumi.Output<String> filesystemType;
  /// Initial filesystem label for the block storage volume.
  late final pulumi.Output<String?> initialFilesystemLabel;
  /// Initial filesystem type (`xfs` or `ext4`) for the block storage volume.
  late final pulumi.Output<String?> initialFilesystemType;
  /// A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters. The name must begin with a letter.
  late final pulumi.Output<String> name;
  /// The region that the block storage volume will be created in.
  late final pulumi.Output<String> region;
  /// The size of the block storage volume in GiB. If updated, can only be expanded.
  late final pulumi.Output<int> size;
  /// The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limited on creation to that of the referenced snapshot
  late final pulumi.Output<String?> snapshotId;
  /// A list of the tags to be applied to this Volume.
  late final pulumi.Output<List<String>?> tags;
  /// The uniform resource name for the volume.
  late final pulumi.Output<String> volumeUrn;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    dropletIds = registerOutput<List<int>>('dropletIds');
    filesystemLabel = registerOutput<String>('filesystemLabel');
    filesystemType = registerOutput<String>('filesystemType');
    initialFilesystemLabel = registerOutput<String?>('initialFilesystemLabel');
    initialFilesystemType = registerOutput<String?>('initialFilesystemType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    tags = registerOutput<List<String>?>('tags');
    volumeUrn = registerOutput<String>('volumeUrn');
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
          'digitalocean:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    dropletIds = registerOutput<List<int>>('dropletIds');
    filesystemLabel = registerOutput<String>('filesystemLabel');
    filesystemType = registerOutput<String>('filesystemType');
    initialFilesystemLabel = registerOutput<String?>('initialFilesystemLabel');
    initialFilesystemType = registerOutput<String?>('initialFilesystemType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    tags = registerOutput<List<String>?>('tags');
    volumeUrn = registerOutput<String>('volumeUrn');
  }
}
