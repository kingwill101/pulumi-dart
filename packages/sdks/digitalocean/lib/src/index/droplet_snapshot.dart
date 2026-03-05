import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_snapshot_args.dart';
import 'droplet_snapshot_state.dart';

/// Provides a resource which can be used to create a snapshot from an existing DigitalOcean Droplet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Droplet("web", {
///     name: "web-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-22-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const web_snapshot = new digitalocean.DropletSnapshot("web-snapshot", {
///     dropletId: web.id,
///     name: "web-snapshot-01",
/// });
/// const from_snapshot = new digitalocean.Droplet("from-snapshot", {
///     image: web_snapshot.id,
///     name: "web-02",
///     region: digitalocean.Region.NYC3,
///     size: digitalocean.DropletSlug.DropletS2VCPU4GB,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Droplet("web",
///     name="web-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-22-04-x64",
///     region=digitalocean.Region.NYC3)
/// web_snapshot = digitalocean.DropletSnapshot("web-snapshot",
///     droplet_id=web.id,
///     name="web-snapshot-01")
/// from_snapshot = digitalocean.Droplet("from-snapshot",
///     image=web_snapshot.id,
///     name="web-02",
///     region=digitalocean.Region.NYC3,
///     size=digitalocean.DropletSlug.DROPLET_S2_VCPU4_GB)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Name = "web-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-22-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var web_snapshot = new DigitalOcean.DropletSnapshot("web-snapshot", new()
///     {
///         DropletId = web.Id,
///         Name = "web-snapshot-01",
///     });
///
///     var from_snapshot = new DigitalOcean.Droplet("from-snapshot", new()
///     {
///         Image = web_snapshot.Id,
///         Name = "web-02",
///         Region = DigitalOcean.Region.NYC3,
///         Size = DigitalOcean.DropletSlug.DropletS2VCPU4GB,
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
/// 		web, err := digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("web-01"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-22-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		web_snapshot, err := digitalocean.NewDropletSnapshot(ctx, "web-snapshot", &digitalocean.DropletSnapshotArgs{
/// 			DropletId: web.ID(),
/// 			Name:      pulumi.String("web-snapshot-01"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDroplet(ctx, "from-snapshot", &digitalocean.DropletArgs{
/// 			Image:  web_snapshot.ID(),
/// 			Name:   pulumi.String("web-02"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS2VCPU4GB),
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.DropletSnapshot;
/// import com.pulumi.digitalocean.DropletSnapshotArgs;
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
///         var web = new Droplet("web", DropletArgs.builder()
///             .name("web-01")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-22-04-x64")
///             .region("nyc3")
///             .build());
///
///         var web_snapshot = new DropletSnapshot("web-snapshot", DropletSnapshotArgs.builder()
///             .dropletId(web.id())
///             .name("web-snapshot-01")
///             .build());
///
///         var from_snapshot = new Droplet("from-snapshot", DropletArgs.builder()
///             .image(web_snapshot.id())
///             .name("web-02")
///             .region("nyc3")
///             .size("s-2vcpu-4gb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: digitalocean:Droplet
///     properties:
///       name: web-01
///       size: s-1vcpu-1gb
///       image: ubuntu-22-04-x64
///       region: nyc3
///   web-snapshot:
///     type: digitalocean:DropletSnapshot
///     properties:
///       dropletId: ${web.id}
///       name: web-snapshot-01
///   from-snapshot:
///     type: digitalocean:Droplet
///     properties:
///       image: ${["web-snapshot"].id}
///       name: web-02
///       region: nyc3
///       size: s-2vcpu-4gb
/// ```
///
///
/// ## Import
///
/// Droplet Snapshots can be imported using the `snapshot id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/dropletSnapshot:DropletSnapshot mysnapshot 123456
/// ```
class DropletSnapshot extends pulumi.CustomResource {
  /// The date and time the Droplet snapshot was created.
  late final pulumi.Output<String> createdAt;
  /// The ID of the Droplet from which the snapshot will be taken.
  late final pulumi.Output<String> dropletId;
  /// The minimum size in gigabytes required for a Droplet to be created based on this snapshot.
  late final pulumi.Output<int> minDiskSize;
  /// A name for the Droplet snapshot.
  late final pulumi.Output<String> name;
  /// A list of DigitalOcean region "slugs" indicating where the droplet snapshot is available.
  late final pulumi.Output<List<String>> regions;
  /// The billable size of the Droplet snapshot in gigabytes.
  late final pulumi.Output<double> size;

  /// Creates a new [DropletSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DropletSnapshot]. {@macro pulumi_index_droplet_snapshot_droplet_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DropletSnapshot(
    String name, {
    DropletSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dropletSnapshot:DropletSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dropletId = registerOutput<String>('dropletId');
    minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    regions = registerOutput<List<String>>('regions');
    size = registerOutput<double>('size');
  }

  /// Gets an existing [DropletSnapshot] resource's state with the given [name] and [id].
  static DropletSnapshot get(
    String name,
    pulumi.Input<String> id, {
    DropletSnapshotState? state,
  }) {
    return DropletSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DropletSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dropletSnapshot:DropletSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dropletId = registerOutput<String>('dropletId');
    minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    regions = registerOutput<List<String>>('regions');
    size = registerOutput<double>('size');
  }
}
