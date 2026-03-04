import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Provides a DigitalOcean Tag resource. A Tag is a label that can be applied to a
/// Droplet resource in order to better organize or facilitate the lookups and
/// actions on it. Tags created with this resource can be referenced in your Droplet
/// configuration via their ID or name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new tag
/// const foobar = new digitalocean.Tag("foobar", {name: "foobar"});
/// // Create a new Droplet in nyc3 with the foobar tag
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-18-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.NYC3,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     tags: [foobar.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new tag
/// foobar = digitalocean.Tag("foobar", name="foobar")
/// # Create a new Droplet in nyc3 with the foobar tag
/// web = digitalocean.Droplet("web",
///     image="ubuntu-18-04-x64",
///     name="web-1",
///     region=digitalocean.Region.NYC3,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     tags=[foobar.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new tag
///     var foobar = new DigitalOcean.Tag("foobar", new()
///     {
///         Name = "foobar",
///     });
///
///     // Create a new Droplet in nyc3 with the foobar tag
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.NYC3,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Tags = new[]
///         {
///             foobar.Id,
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
/// 		// Create a new tag
/// 		foobar, err := digitalocean.NewTag(ctx, "foobar", &digitalocean.TagArgs{
/// 			Name: pulumi.String("foobar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new Droplet in nyc3 with the foobar tag
/// 		_, err = digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("web-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Tags: pulumi.StringArray{
/// 				foobar.ID(),
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
/// import com.pulumi.digitalocean.Tag;
/// import com.pulumi.digitalocean.TagArgs;
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
///         // Create a new tag
///         var foobar = new Tag("foobar", TagArgs.builder()
///             .name("foobar")
///             .build());
///
///         // Create a new Droplet in nyc3 with the foobar tag
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("web-1")
///             .region("nyc3")
///             .size("s-1vcpu-1gb")
///             .tags(foobar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new tag
///   foobar:
///     type: digitalocean:Tag
///     properties:
///       name: foobar
///   # Create a new Droplet in nyc3 with the foobar tag
///   web:
///     type: digitalocean:Droplet
///     properties:
///       image: ubuntu-18-04-x64
///       name: web-1
///       region: nyc3
///       size: s-1vcpu-1gb
///       tags:
///         - ${foobar.id}
/// ```
///
///
/// ## Import
///
/// Tags can be imported using the `name`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/tag:Tag mytag tagname
/// ```
class Tag extends pulumi.CustomResource {
  /// A count of the database clusters that the tag is applied to.
  late final pulumi.Output<int> databasesCount;

  /// A count of the Droplets the tag is applied to.
  late final pulumi.Output<int> dropletsCount;

  /// A count of the images that the tag is applied to.
  late final pulumi.Output<int> imagesCount;

  /// The name of the tag
  late final pulumi.Output<String> name;

  /// A count of the total number of resources that the tag is applied to.
  late final pulumi.Output<int> totalResourceCount;

  /// A count of the volume snapshots that the tag is applied to.
  late final pulumi.Output<int> volumeSnapshotsCount;

  /// A count of the volumes that the tag is applied to.
  late final pulumi.Output<int> volumesCount;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_index_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(String name, {TagArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'digitalocean:index/tag:Tag',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    databasesCount = registerOutput<int>('databasesCount');
    dropletsCount = registerOutput<int>('dropletsCount');
    imagesCount = registerOutput<int>('imagesCount');
    this.name = registerOutput<String>('name');
    totalResourceCount = registerOutput<int>('totalResourceCount');
    volumeSnapshotsCount = registerOutput<int>('volumeSnapshotsCount');
    volumesCount = registerOutput<int>('volumesCount');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(String name, pulumi.Input<String> id, {TagState? state}) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/tag:Tag',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    databasesCount = registerOutput<int>('databasesCount');
    dropletsCount = registerOutput<int>('dropletsCount');
    imagesCount = registerOutput<int>('imagesCount');
    this.name = registerOutput<String>('name');
    totalResourceCount = registerOutput<int>('totalResourceCount');
    volumeSnapshotsCount = registerOutput<int>('volumeSnapshotsCount');
    volumesCount = registerOutput<int>('volumesCount');
  }
}
