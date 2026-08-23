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
///     location: "nbg1",
/// });
/// const master = new hcloud.Volume("master", {
///     location: "nbg1",
///     size: 10,
/// });
/// const main = new hcloud.VolumeAttachment("main", {
///     volumeId: master.id.apply(x =>Number(x)),
///     serverId: node1.id.apply(x =>Number(x)),
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
///     location="nbg1")
/// master = hcloud.Volume("master",
///     location="nbg1",
///     size=10)
/// main = hcloud.VolumeAttachment("main",
///     volume_id=master.id.apply(lambda x: int(x)),
///     server_id=node1.id.apply(lambda x: int(x)),
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
///         Location = "nbg1",
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
/// 			Location:   pulumi.String("nbg1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// resource "hcloud_volumeattachment" "main" {
///   volume_id = hcloud_volume.master.id
///   server_id = hcloud_server.node1.id
///   automount = true
/// }
/// resource "hcloud_server" "node1" {
///   name        = "node1"
///   image       = "debian-12"
///   server_type = "cx23"
///   location    = "nbg1"
/// }
/// resource "hcloud_volume" "master" {
///   location = "nbg1"
///   size     = 10
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
///             .location("nbg1")
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
///       location: nbg1
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
/// Volume Attachments can be imported using the `volumeId`:
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
    automount = registerOutput<bool>('automount');
    serverId = registerOutput<int>('serverId');
    volumeId = registerOutput<int>('volumeId');
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
    automount = registerOutput<bool>('automount');
    serverId = registerOutput<int>('serverId');
    volumeId = registerOutput<int>('volumeId');
  }
}
