import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_args.dart';
import 'custom_image_state.dart';

/// Provides a resource which can be used to create a [custom image](https://www.digitalocean.com/docs/images/custom-images/)
/// from a URL. The URL must point to an image in one of the following file formats:
///
/// - Raw (.img) with an MBR or GPT partition table
/// - qcow2
/// - VHDX
/// - VDI
/// - VMDK
///
/// The image may be compressed using gzip or bzip2. See the DigitalOcean Custom
/// Image documentation for [additional requirements](https://www.digitalocean.com/docs/images/custom-images/#image-requirements).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const flatcar = new digitalocean.CustomImage("flatcar", {
///     name: "flatcar",
///     url: "https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2",
///     regions: ["nyc3"],
/// });
/// const example = new digitalocean.Droplet("example", {
///     image: flatcar.id,
///     name: "example-01",
///     region: digitalocean.Region.NYC3,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     sshKeys: ["12345"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// flatcar = digitalocean.CustomImage("flatcar",
///     name="flatcar",
///     url="https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2",
///     regions=["nyc3"])
/// example = digitalocean.Droplet("example",
///     image=flatcar.id,
///     name="example-01",
///     region=digitalocean.Region.NYC3,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     ssh_keys=["12345"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flatcar = new DigitalOcean.CustomImage("flatcar", new()
///     {
///         Name = "flatcar",
///         Url = "https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2",
///         Regions = new[]
///         {
///             "nyc3",
///         },
///     });
///
///     var example = new DigitalOcean.Droplet("example", new()
///     {
///         Image = flatcar.Id,
///         Name = "example-01",
///         Region = DigitalOcean.Region.NYC3,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         SshKeys = new[]
///         {
///             "12345",
///         },
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
/// 		flatcar, err := digitalocean.NewCustomImage(ctx, "flatcar", &digitalocean.CustomImageArgs{
/// 			Name: pulumi.String("flatcar"),
/// 			Url:  pulumi.String("https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("nyc3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "example", &digitalocean.DropletArgs{
/// 			Image:  flatcar.ID(),
/// 			Name:   pulumi.String("example-01"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			SshKeys: pulumi.StringArray{
/// 				pulumi.String("12345"),
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
/// import com.pulumi.digitalocean.CustomImage;
/// import com.pulumi.digitalocean.CustomImageArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         var flatcar = new CustomImage("flatcar", CustomImageArgs.builder()
///             .name("flatcar")
///             .url("https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2")
///             .regions("nyc3")
///             .build());
///
///         var example = new Droplet("example", DropletArgs.builder()
///             .image(flatcar.id())
///             .name("example-01")
///             .region("nyc3")
///             .size("s-1vcpu-1gb")
///             .sshKeys("12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   flatcar:
///     type: digitalocean:CustomImage
///     properties:
///       name: flatcar
///       url: https://stable.release.flatcar-linux.net/amd64-usr/2605.7.0/flatcar_production_digitalocean_image.bin.bz2
///       regions:
///         - nyc3
///   example:
///     type: digitalocean:Droplet
///     properties:
///       image: ${flatcar.id}
///       name: example-01
///       region: nyc3
///       size: s-1vcpu-1gb
///       sshKeys:
///         - 12345
/// ```
class CustomImage extends pulumi.CustomResource {
  /// A time value given in ISO8601 combined date and time format that represents when the image was created.
  late final pulumi.Output<String> createdAt;

  /// An optional description for the image.
  late final pulumi.Output<String?> description;

  /// An optional distribution name for the image. Valid values are documented [here](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images/operation/images_create_custom)
  late final pulumi.Output<String?> distribution;

  /// A unique number that can be used to identify and reference a specific image.
  late final pulumi.Output<int> imageId;

  /// The minimum disk size in GB required for a Droplet to use this image.
  late final pulumi.Output<int> minDiskSize;

  /// A name for the Custom Image.
  late final pulumi.Output<String> name;

  /// Indicates whether the image in question is public or not.
  late final pulumi.Output<bool> public;

  /// A list of regions. (Currently only one is supported).
  late final pulumi.Output<List<String>> regions;

  /// The size of the image in gigabytes.
  late final pulumi.Output<double> sizeGigabytes;

  /// A uniquely identifying string for each image.
  late final pulumi.Output<String> slug;

  /// A status string indicating the state of a custom image.
  late final pulumi.Output<String> status;

  /// A list of optional tags for the image.
  late final pulumi.Output<List<String>?> tags;

  /// Describes the kind of image.
  late final pulumi.Output<String> type;

  /// A URL from which the custom Linux virtual machine image may be retrieved.
  late final pulumi.Output<String> url;

  /// Creates a new [CustomImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomImage]. {@macro pulumi_index_custom_image_custom_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomImage(
    String name, {
    CustomImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/customImage:CustomImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    distribution = registerOutput<String?>('distribution');
    imageId = registerOutput<int>('imageId');
    minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    public = registerOutput<bool>('public');
    regions = registerOutput<List<String>>('regions');
    sizeGigabytes = registerOutput<double>('sizeGigabytes');
    slug = registerOutput<String>('slug');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    type = registerOutput<String>('type');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [CustomImage] resource's state with the given [name] and [id].
  static CustomImage get(
    String name,
    pulumi.Input<String> id, {
    CustomImageState? state,
  }) {
    return CustomImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/customImage:CustomImage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    distribution = registerOutput<String?>('distribution');
    imageId = registerOutput<int>('imageId');
    minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    public = registerOutput<bool>('public');
    regions = registerOutput<List<String>>('regions');
    sizeGigabytes = registerOutput<double>('sizeGigabytes');
    slug = registerOutput<String>('slug');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    type = registerOutput<String>('type');
    url = registerOutput<String>('url');
  }
}
