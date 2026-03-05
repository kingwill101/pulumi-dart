import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_args.dart';
import 'volume_attachment_state.dart';

/// Manages attaching a Volume to a Droplet.
///
/// &gt; **NOTE:** Volumes can be attached either directly on the `digitalocean.Droplet` resource, or using the `digitalocean.VolumeAttachment` resource - but the two cannot be used together. If both are used against the same Droplet, the volume attachments will constantly drift.
///
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
///     dropletId: foobarDroplet.id,
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
///     droplet_id=foobar_droplet.id,
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
/// 			DropletId: foobarDroplet.ID(),
/// 			VolumeId:  foobar.ID(),
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
/// import com.pulumi.digitalocean.Volume;
/// import com.pulumi.digitalocean.VolumeArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.VolumeAttachment;
/// import com.pulumi.digitalocean.VolumeAttachmentArgs;
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
class VolumeAttachment extends pulumi.CustomResource {
  /// ID of the Droplet to attach the volume to.
  late final pulumi.Output<int> dropletId;
  /// ID of the Volume to be attached to the Droplet.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachment]. {@macro pulumi_index_volume_attachment_volume_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachment(
    String name, {
    VolumeAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeAttachment] resource's state with the given [name] and [id].
  static VolumeAttachment get(
    String name,
    pulumi.Input<String> id, {
    VolumeAttachmentState? state,
  }) {
    return VolumeAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    volumeId = registerOutput<String>('volumeId');
  }
}
