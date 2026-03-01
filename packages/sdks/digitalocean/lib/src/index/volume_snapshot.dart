import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_snapshot_args.dart';
import 'volume_snapshot_state.dart';

/// Provides a DigitalOcean Volume Snapshot which can be used to create a snapshot from an existing volume.
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
///     description: "an example volume",
/// });
/// const foobarVolumeSnapshot = new digitalocean.VolumeSnapshot("foobar", {
///     name: "foo",
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
///     description="an example volume")
/// foobar_volume_snapshot = digitalocean.VolumeSnapshot("foobar",
///     name="foo",
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
///         Description = "an example volume",
///     });
///
///     var foobarVolumeSnapshot = new DigitalOcean.VolumeSnapshot("foobar", new()
///     {
///         Name = "foo",
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
/// 			Region:      pulumi.String(digitalocean.RegionNYC1),
/// 			Name:        pulumi.String("baz"),
/// 			Size:        pulumi.Int(100),
/// 			Description: pulumi.String("an example volume"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVolumeSnapshot(ctx, "foobar", &digitalocean.VolumeSnapshotArgs{
/// 			Name:     pulumi.String("foo"),
/// 			VolumeId: foobar.ID(),
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
/// import com.pulumi.digitalocean.VolumeSnapshot;
/// import com.pulumi.digitalocean.VolumeSnapshotArgs;
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
///             .description("an example volume")
///             .build());
///
///         var foobarVolumeSnapshot = new VolumeSnapshot("foobarVolumeSnapshot", VolumeSnapshotArgs.builder()
///             .name("foo")
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
///       description: an example volume
///   foobarVolumeSnapshot:
///     type: digitalocean:VolumeSnapshot
///     name: foobar
///     properties:
///       name: foo
///       volumeId: ${foobar.id}
/// ```
///
///
/// ## Import
///
/// Volume Snapshots can be imported using the `snapshot id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/volumeSnapshot:VolumeSnapshot snapshot 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class VolumeSnapshot extends pulumi.CustomResource {
  /// The date and time the volume snapshot was created.
  late final pulumi.Output<String> createdAt;
  /// The minimum size in gigabytes required for a volume to be created based on this volume snapshot.
  late final pulumi.Output<int> minDiskSize;
  /// A name for the volume snapshot.
  late final pulumi.Output<String> name;
  /// A list of DigitalOcean region "slugs" indicating where the volume snapshot is available.
  late final pulumi.Output<List<String>> regions;
  /// The billable size of the volume snapshot in gigabytes.
  late final pulumi.Output<double> size;
  /// A list of the tags to be applied to this volume snapshot.
  late final pulumi.Output<List<String>?> tags;
  /// The ID of the volume from which the volume snapshot originated.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeSnapshot]. {@macro pulumi_index_volume_snapshot_volume_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeSnapshot(
    String name, {
    VolumeSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/volumeSnapshot:VolumeSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    this.regions = registerOutput<List<String>>('regions');
    this.size = registerOutput<double>('size');
    this.tags = registerOutput<List<String>?>('tags');
    this.volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeSnapshot] resource's state with the given [name] and [id].
  static VolumeSnapshot get(
    String name,
    pulumi.Input<String> id, {
    VolumeSnapshotState? state,
  }) {
    return VolumeSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/volumeSnapshot:VolumeSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.minDiskSize = registerOutput<int>('minDiskSize');
    this.name = registerOutput<String>('name');
    this.regions = registerOutput<List<String>>('regions');
    this.size = registerOutput<double>('size');
    this.tags = registerOutput<List<String>?>('tags');
    this.volumeId = registerOutput<String>('volumeId');
  }
}
