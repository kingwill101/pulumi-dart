import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_snapshot_args.dart';
import 'nfs_snapshot_state.dart';

/// Provides a DigitalOcean NFS snapshot which can be used to create new NFS shares.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Vpc("foobar", {
///     name: "example-vpc",
///     region: "nyc1",
/// });
/// const foobarNfs = new digitalocean.Nfs("foobar", {
///     region: "nyc1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: foobar.id,
/// });
/// const foobarNfsSnapshot = new digitalocean.NfsSnapshot("foobar", {
///     name: "example-snapshot",
///     shareId: foobarNfs.id,
///     region: "nyc1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Vpc("foobar",
///     name="example-vpc",
///     region="nyc1")
/// foobar_nfs = digitalocean.Nfs("foobar",
///     region="nyc1",
///     name="example-nfs",
///     size=50,
///     vpc_id=foobar.id)
/// foobar_nfs_snapshot = digitalocean.NfsSnapshot("foobar",
///     name="example-snapshot",
///     share_id=foobar_nfs.id,
///     region="nyc1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Vpc("foobar", new()
///     {
///         Name = "example-vpc",
///         Region = "nyc1",
///     });
///
///     var foobarNfs = new DigitalOcean.Nfs("foobar", new()
///     {
///         Region = "nyc1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = foobar.Id,
///     });
///
///     var foobarNfsSnapshot = new DigitalOcean.NfsSnapshot("foobar", new()
///     {
///         Name = "example-snapshot",
///         ShareId = foobarNfs.Id,
///         Region = "nyc1",
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
/// 		foobar, err := digitalocean.NewVpc(ctx, "foobar", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarNfs, err := digitalocean.NewNfs(ctx, "foobar", &digitalocean.NfsArgs{
/// 			Region: pulumi.String("nyc1"),
/// 			Name:   pulumi.String("example-nfs"),
/// 			Size:   pulumi.Int(50),
/// 			VpcId:  foobar.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfsSnapshot(ctx, "foobar", &digitalocean.NfsSnapshotArgs{
/// 			Name:    pulumi.String("example-snapshot"),
/// 			ShareId: foobarNfs.ID(),
/// 			Region:  pulumi.String("nyc1"),
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
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
/// import com.pulumi.digitalocean.NfsSnapshot;
/// import com.pulumi.digitalocean.NfsSnapshotArgs;
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
///         var foobar = new Vpc("foobar", VpcArgs.builder()
///             .name("example-vpc")
///             .region("nyc1")
///             .build());
///
///         var foobarNfs = new Nfs("foobarNfs", NfsArgs.builder()
///             .region("nyc1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(foobar.id())
///             .build());
///
///         var foobarNfsSnapshot = new NfsSnapshot("foobarNfsSnapshot", NfsSnapshotArgs.builder()
///             .name("example-snapshot")
///             .shareId(foobarNfs.id())
///             .region("nyc1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Vpc
///     properties:
///       name: example-vpc
///       region: nyc1
///   foobarNfs:
///     type: digitalocean:Nfs
///     name: foobar
///     properties:
///       region: nyc1
///       name: example-nfs
///       size: 50
///       vpcId: ${foobar.id}
///   foobarNfsSnapshot:
///     type: digitalocean:NfsSnapshot
///     name: foobar
///     properties:
///       name: example-snapshot
///       shareId: ${foobarNfs.id}
///       region: nyc1
/// ```
///
///
/// ## Import
///
/// NFS snapshots can be imported using the snapshot ID, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfsSnapshot:NfsSnapshot foobar 506f78a4-e098-11e5-ad9f-000f53306ae1
/// ```
class NfsSnapshot extends pulumi.CustomResource {
  /// The date and time when the snapshot was created.
  late final pulumi.Output<String> createdAt;
  /// A name for the NFS snapshot. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters.
  late final pulumi.Output<String> name;
  /// The region where the NFS snapshot will be created.
  late final pulumi.Output<String> region;
  /// The ID of the NFS share to snapshot.
  late final pulumi.Output<String> shareId;
  /// The size of the snapshot in GiB.
  late final pulumi.Output<int> size;
  late final pulumi.Output<String> status;

  /// Creates a new [NfsSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NfsSnapshot]. {@macro pulumi_index_nfs_snapshot_nfs_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NfsSnapshot(
    String name, {
    NfsSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsSnapshot:NfsSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [NfsSnapshot] resource's state with the given [name] and [id].
  static NfsSnapshot get(
    String name,
    pulumi.Input<String> id, {
    NfsSnapshotState? state,
  }) {
    return NfsSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NfsSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfsSnapshot:NfsSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    size = registerOutput<int>('size');
    status = registerOutput<String>('status');
  }
}
