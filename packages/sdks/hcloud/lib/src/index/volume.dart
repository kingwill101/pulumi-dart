import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_state.dart';

/// Provides a Hetzner Cloud volume resource to manage volumes.
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
/// const master = new hcloud.Volume("master", {
///     name: "volume1",
///     size: 50,
///     serverId: node1.id,
///     automount: true,
///     format: "ext4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23")
/// master = hcloud.Volume("master",
///     name="volume1",
///     size=50,
///     server_id=node1.id,
///     automount=True,
///     format="ext4")
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
///     var master = new HCloud.Volume("master", new()
///     {
///         Name = "volume1",
///         Size = 50,
///         ServerId = node1.Id,
///         Automount = true,
///         Format = "ext4",
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
/// 		_, err = hcloud.NewVolume(ctx, "master", &hcloud.VolumeArgs{
/// 			Name:      pulumi.String("volume1"),
/// 			Size:      pulumi.Int(50),
/// 			ServerId:  node1.ID(),
/// 			Automount: pulumi.Bool(true),
/// 			Format:    pulumi.String("ext4"),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.Volume;
/// import com.pulumi.hcloud.VolumeArgs;
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
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .build());
///
///         var master = new Volume("master", VolumeArgs.builder()
///             .name("volume1")
///             .size(50)
///             .serverId(node1.id())
///             .automount(true)
///             .format("ext4")
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
///   master:
///     type: hcloud:Volume
///     properties:
///       name: volume1
///       size: 50
///       serverId: ${node1.id}
///       automount: true
///       format: ext4
/// ```
///
///
/// ## Import
///
/// Volumes can be imported using their `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/volume:Volume example "$VOLUME_ID"
/// ```
class Volume extends pulumi.CustomResource {
  /// Automount the volume upon attaching it (server_id must be provided).
  late final pulumi.Output<bool?> automount;
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  ///
  /// **Note:** When you want to attach multiple volumes to a server, please use the `hcloud.VolumeAttachment` resource and the `location` argument instead of the `server_id` argument.
  late final pulumi.Output<bool?> deleteProtection;
  /// Format volume after creation. `xfs` or `ext4`
  late final pulumi.Output<String?> format;
  /// User-defined labels (key-value pairs).
  late final pulumi.Output<Map<String, String>?> labels;
  /// (string) Device path on the file system for the Volume.
  late final pulumi.Output<String> linuxDevice;
  /// The location name of the volume to create, not allowed if server_id argument is passed. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  late final pulumi.Output<String> location;
  /// Name of the volume to create (must be unique per project).
  late final pulumi.Output<String> name;
  /// Server to attach the Volume to, not allowed if location argument is passed.
  late final pulumi.Output<int> serverId;
  /// Size of the volume (in GB).
  late final pulumi.Output<int> size;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automount = registerOutput<bool?>('automount');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.format = registerOutput<String?>('format');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linuxDevice = registerOutput<String>('linuxDevice');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.serverId = registerOutput<int>('serverId');
    this.size = registerOutput<int>('size');
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
          'hcloud:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automount = registerOutput<bool?>('automount');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.format = registerOutput<String?>('format');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linuxDevice = registerOutput<String>('linuxDevice');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.serverId = registerOutput<int>('serverId');
    this.size = registerOutput<int>('size');
  }
}
