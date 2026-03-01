import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_args.dart';
import 'volume_attachment_state.dart';

/// Provides a Hetzner Cloud Volume attachment to attach a Volume to a Hetzner Cloud Server. Deleting a Volume Attachment will detach the Volume from the Server.
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
///     datacenter: "nbg1-dc3",
/// });
/// const master = new hcloud.Volume("master", {
///     location: "nbg1",
///     size: 10,
/// });
/// const main = new hcloud.VolumeAttachment("main", {
///     volumeId: master.id,
///     serverId: node1.id,
///     automount: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23",
///     datacenter="nbg1-dc3")
/// master = hcloud.Volume("master",
///     location="nbg1",
///     size=10)
/// main = hcloud.VolumeAttachment("main",
///     volume_id=master.id,
///     server_id=node1.id,
///     automount=True)
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
///         Datacenter = "nbg1-dc3",
///     });
///
///     var master = new HCloud.Volume("master", new()
///     {
///         Location = "nbg1",
///         Size = 10,
///     });
///
///     var main = new HCloud.VolumeAttachment("main", new()
///     {
///         VolumeId = master.Id,
///         ServerId = node1.Id,
///         Automount = true,
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
/// 			Datacenter: pulumi.String("nbg1-dc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		master, err := hcloud.NewVolume(ctx, "master", &hcloud.VolumeArgs{
/// 			Location: pulumi.String("nbg1"),
/// 			Size:     pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewVolumeAttachment(ctx, "main", &hcloud.VolumeAttachmentArgs{
/// 			VolumeId:  master.ID(),
/// 			ServerId:  node1.ID(),
/// 			Automount: pulumi.Bool(true),
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
/// import com.pulumi.hcloud.VolumeAttachment;
/// import com.pulumi.hcloud.VolumeAttachmentArgs;
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
///             .datacenter("nbg1-dc3")
///             .build());
///
///         var master = new Volume("master", VolumeArgs.builder()
///             .location("nbg1")
///             .size(10)
///             .build());
///
///         var main = new VolumeAttachment("main", VolumeAttachmentArgs.builder()
///             .volumeId(master.id())
///             .serverId(node1.id())
///             .automount(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:VolumeAttachment
///     properties:
///       volumeId: ${master.id}
///       serverId: ${node1.id}
///       automount: true
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///       datacenter: nbg1-dc3
///   master:
///     type: hcloud:Volume
///     properties:
///       location: nbg1
///       size: 10
/// ```
///
///
/// ## Import
///
/// Volume Attachments can be imported using the `volume_id`:
///
/// ```sh
/// $ pulumi import hcloud:index/volumeAttachment:VolumeAttachment example "$VOLUME_ID"
/// ```
class VolumeAttachment extends pulumi.CustomResource {
  /// Automount the volume upon attaching it.
  late final pulumi.Output<bool> automount;
  /// Server to attach the Volume to.
  late final pulumi.Output<int> serverId;
  /// ID of the Volume.
  late final pulumi.Output<int> volumeId;

  /// Creates a new [VolumeAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachment]. {@macro pulumi_index_volume_attachment_volume_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachment(
    String name, {
    VolumeAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automount = registerOutput<bool>('automount');
    this.serverId = registerOutput<int>('serverId');
    this.volumeId = registerOutput<int>('volumeId');
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
          'hcloud:index/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automount = registerOutput<bool>('automount');
    this.serverId = registerOutput<int>('serverId');
    this.volumeId = registerOutput<int>('volumeId');
  }
}
