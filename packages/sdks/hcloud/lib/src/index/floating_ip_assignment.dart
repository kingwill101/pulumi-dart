import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_assignment_args.dart';
import 'floating_ip_assignment_state.dart';

/// Provides a Hetzner Cloud Floating IP Assignment to assign a Floating IP to a Hetzner Cloud Server. Deleting a Floating IP Assignment will unassign the Floating IP from the Server.
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
///     location: "fsn1",
/// });
/// const master = new hcloud.FloatingIp("master", {
///     type: "ipv4",
///     homeLocation: "nbg1",
/// });
/// const main = new hcloud.FloatingIpAssignment("main", {
///     floatingIpId: master.id.apply(x =>Number(x)),
///     serverId: node1.id.apply(x =>Number(x)),
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
///     location="fsn1")
/// master = hcloud.FloatingIp("master",
///     type="ipv4",
///     home_location="nbg1")
/// main = hcloud.FloatingIpAssignment("main",
///     floating_ip_id=master.id.apply(lambda x: int(x)),
///     server_id=node1.id.apply(lambda x: int(x)))
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
///         Location = "fsn1",
///     });
///
///     var master = new HCloud.FloatingIp("master", new()
///     {
///         Type = "ipv4",
///         HomeLocation = "nbg1",
///     });
///
///     var main = new HCloud.FloatingIpAssignment("main", new()
///     {
///         FloatingIpId = master.Id,
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
/// 			Location:   pulumi.String("fsn1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		master, err := hcloud.NewFloatingIp(ctx, "master", &hcloud.FloatingIpArgs{
/// 			Type:         pulumi.String("ipv4"),
/// 			HomeLocation: pulumi.String("nbg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFloatingIpAssignment(ctx, "main", &hcloud.FloatingIpAssignmentArgs{
/// 			FloatingIpId: master.ID(),
/// 			ServerId:     node1.ID(),
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
/// resource "hcloud_floatingipassignment" "main" {
///   floating_ip_id = hcloud_floatingip.master.id
///   server_id      = hcloud_server.node1.id
/// }
/// resource "hcloud_server" "node1" {
///   name        = "node1"
///   image       = "debian-12"
///   server_type = "cx23"
///   location    = "fsn1"
/// }
/// resource "hcloud_floatingip" "master" {
///   type          = "ipv4"
///   home_location = "nbg1"
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
/// import com.pulumi.hcloud.FloatingIp;
/// import com.pulumi.hcloud.FloatingIpArgs;
/// import com.pulumi.hcloud.FloatingIpAssignment;
/// import com.pulumi.hcloud.FloatingIpAssignmentArgs;
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
///             .location("fsn1")
///             .build());
///
///         var master = new FloatingIp("master", FloatingIpArgs.builder()
///             .type("ipv4")
///             .homeLocation("nbg1")
///             .build());
///
///         var main = new FloatingIpAssignment("main", FloatingIpAssignmentArgs.builder()
///             .floatingIpId(master.id())
///             .serverId(node1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:FloatingIpAssignment
///     properties:
///       floatingIpId: ${master.id}
///       serverId: ${node1.id}
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///       location: fsn1
///   master:
///     type: hcloud:FloatingIp
///     properties:
///       type: ipv4
///       homeLocation: nbg1
/// ```
///
///
/// ## Import
///
/// Floating IP Assignments can be imported using the `floatingIpId`:
///
/// ```sh
/// $ pulumi import hcloud:index/floatingIpAssignment:FloatingIpAssignment example "$FLOATING_IP_ID"
/// ```
class FloatingIpAssignment extends pulumi.CustomResource {
  /// ID of the Floating IP.
  late final pulumi.Output<int> floatingIpId;
  /// Server to assign the Floating IP to.
  late final pulumi.Output<int> serverId;

  /// Creates a new [FloatingIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIpAssignment]. {@macro pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIpAssignment(
    String name, {
    FloatingIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/floatingIpAssignment:FloatingIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    floatingIpId = registerOutput<int>('floatingIpId');
    serverId = registerOutput<int>('serverId');
  }

  /// Gets an existing [FloatingIpAssignment] resource's state with the given [name] and [id].
  static FloatingIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    FloatingIpAssignmentState? state,
  }) {
    return FloatingIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FloatingIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/floatingIpAssignment:FloatingIpAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    floatingIpId = registerOutput<int>('floatingIpId');
    serverId = registerOutput<int>('serverId');
  }
}
