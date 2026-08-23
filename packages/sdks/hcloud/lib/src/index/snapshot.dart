import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a Hetzner Cloud snapshot to represent an image with type snapshot in the Hetzner Cloud. This resource makes it easy to create a snapshot of your server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
/// });
/// const my_snapshot = new hcloud.Snapshot("my-snapshot", {serverId: node1.id.apply(x =>Number(x))});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23")
/// my_snapshot = hcloud.Snapshot("my-snapshot", server_id=node1.id.apply(lambda x: int(x)))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///     });
///
///     var my_snapshot = new HCloud.Snapshot("my-snapshot", new()
///     {
///         ServerId = node1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		node1, err := hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewSnapshot(ctx, "my-snapshot", &hcloud.SnapshotArgs{
/// 			ServerId: node1.ID(),
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
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_server" "node1" {
///   name        = "node1"
///   image       = "debian-12"
///   server_type = "cx23"
/// }
/// resource "hcloud_snapshot" "my-snapshot" {
///   server_id = hcloud_server.node1.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.Snapshot;
/// import com.pulumi.hcloud.SnapshotArgs;
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
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .build());
///
///         var my_snapshot = new Snapshot("my-snapshot", SnapshotArgs.builder()
///             .serverId(node1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///   my-snapshot:
///     type: hcloud:Snapshot
///     properties:
///       serverId: ${node1.id}
/// ```
///
///
/// ## Import
///
/// Snapshots can be imported using its image `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/snapshot:Snapshot example "$IMAGE_ID"
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Description of the snapshot.
  late final pulumi.Output<String?> description;
  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Server to the snapshot should be created from.
  late final pulumi.Output<int> serverId;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_index_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    labels = registerOutput<Map<String, String>?>('labels');
    serverId = registerOutput<int>('serverId');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    labels = registerOutput<Map<String, String>?>('labels');
    serverId = registerOutput<int>('serverId');
  }
}
