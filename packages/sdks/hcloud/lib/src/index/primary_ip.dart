import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_ip_args.dart';
import 'primary_ip_state.dart';

/// Provides a Hetzner Cloud Primary IP resource.
///
/// See the [Primary IP API documentation](https://docs.hetzner.cloud/reference/cloud#tag/primary-ips) for more details.
///
/// ## Deprecations
///
/// ### `datacenter` attribute
///
/// The `datacenter` attribute is marked for removal since `v1.67.0`, you must use the `location` attribute instead.
///
/// See our [deprecation](https://docs.hetzner.cloud/changelog#2025-12-16-phasing-out-datacenters) and
/// [removal](https://docs.hetzner.cloud/changelog#2026-07-01-removing-datacenters) changelog for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const main = new hcloud.PrimaryIp("main", {
///     name: "primary-ip",
///     location: "fsn1",
///     type: "ipv4",
///     autoDelete: false,
///     labels: {
///         key: "value",
///     },
/// });
/// // Link a server to a primary IP
/// const mainServer = new hcloud.Server("main", {
///     name: "server",
///     image: "ubuntu-24.04",
///     serverType: "cx23",
///     location: "fsn1",
///     publicNets: [{
///         ipv4: main.id.apply(x =>Number(x)),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// main = hcloud.PrimaryIp("main",
///     name="primary-ip",
///     location="fsn1",
///     type="ipv4",
///     auto_delete=False,
///     labels={
///         "key": "value",
///     })
/// # Link a server to a primary IP
/// main_server = hcloud.Server("main",
///     name="server",
///     image="ubuntu-24.04",
///     server_type="cx23",
///     location="fsn1",
///     public_nets=[{
///         "ipv4": main.id.apply(lambda x: int(x)),
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new HCloud.PrimaryIp("main", new()
///     {
///         Name = "primary-ip",
///         Location = "fsn1",
///         Type = "ipv4",
///         AutoDelete = false,
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
///     // Link a server to a primary IP
///     var mainServer = new HCloud.Server("main", new()
///     {
///         Name = "server",
///         Image = "ubuntu-24.04",
///         ServerType = "cx23",
///         Location = "fsn1",
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4 = main.Id,
///             },
///         },
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
/// 		main, err := hcloud.NewPrimaryIp(ctx, "main", &hcloud.PrimaryIpArgs{
/// 			Name:       pulumi.String("primary-ip"),
/// 			Location:   pulumi.String("fsn1"),
/// 			Type:       pulumi.String("ipv4"),
/// 			AutoDelete: pulumi.Bool(false),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Link a server to a primary IP
/// 		_, err = hcloud.NewServer(ctx, "main", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("server"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Location:   pulumi.String("fsn1"),
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4: main.ID(),
/// 				},
/// 			},
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
/// resource "hcloud_primaryip" "main" {
///   name        = "primary-ip"
///   location    = "fsn1"
///   type        = "ipv4"
///   auto_delete = false
///   labels = {
///     "key" = "value"
///   }
/// }
/// // Link a server to a primary IP
/// resource "hcloud_server" "main" {
///   name        = "server"
///   image       = "ubuntu-24.04"
///   server_type = "cx23"
///   location    = "fsn1"
///   public_nets {
///     ipv4 = hcloud_primaryip.main.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.PrimaryIp;
/// import com.pulumi.hcloud.PrimaryIpArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         var main = new PrimaryIp("main", PrimaryIpArgs.builder()
///             .name("primary-ip")
///             .location("fsn1")
///             .type("ipv4")
///             .autoDelete(false)
///             .labels(Map.of("key", "value"))
///             .build());
///
///         // Link a server to a primary IP
///         var mainServer = new Server("mainServer", ServerArgs.builder()
///             .name("server")
///             .image("ubuntu-24.04")
///             .serverType("cx23")
///             .location("fsn1")
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4(main.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:PrimaryIp
///     properties:
///       name: primary-ip
///       location: fsn1
///       type: ipv4
///       autoDelete: false
///       labels:
///         key: value
///   # Link a server to a primary IP
///   mainServer:
///     type: hcloud:Server
///     name: main
///     properties:
///       name: server
///       image: ubuntu-24.04
///       serverType: cx23
///       location: fsn1
///       publicNets:
///         - ipv4: ${main.id}
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/primaryIp:PrimaryIp example "$PRIMARY_IP_ID"
/// ```
class PrimaryIp extends pulumi.CustomResource {
  /// ID of the resource the Primary IP should be assigned to.
  late final pulumi.Output<int> assigneeId;
  /// Type of the resource the Primary IP should be assigned to.
  late final pulumi.Output<String> assigneeType;
  /// Whether auto delete is enabled. Setting `autoDelete` to `true` is not recommended, because if a server assigned to the managed ip is deleted, it will also delete the primary IP which will break the terraform state.
  late final pulumi.Output<bool> autoDelete;
  /// Name of the Datacenter for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  late final pulumi.Output<String> datacenter;
  /// Whether delete protection is enabled.
  late final pulumi.Output<bool> deleteProtection;
  /// IP address of the Primary IP.
  late final pulumi.Output<String> ipAddress;
  /// IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  late final pulumi.Output<String> ipNetwork;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// Name of the Location for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  late final pulumi.Output<String> location;
  /// Name of the Primary IP.
  late final pulumi.Output<String> name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  late final pulumi.Output<String> type;

  /// Creates a new [PrimaryIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrimaryIp]. {@macro pulumi_index_primary_ip_primary_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrimaryIp(
    String name, {
    PrimaryIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/primaryIp:PrimaryIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assigneeId = registerOutput<int>('assigneeId');
    assigneeType = registerOutput<String>('assigneeType');
    autoDelete = registerOutput<bool>('autoDelete');
    datacenter = registerOutput<String>('datacenter');
    deleteProtection = registerOutput<bool>('deleteProtection');
    ipAddress = registerOutput<String>('ipAddress');
    ipNetwork = registerOutput<String>('ipNetwork');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [PrimaryIp] resource's state with the given [name] and [id].
  static PrimaryIp get(
    String name,
    pulumi.Input<String> id, {
    PrimaryIpState? state,
  }) {
    return PrimaryIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrimaryIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/primaryIp:PrimaryIp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assigneeId = registerOutput<int>('assigneeId');
    assigneeType = registerOutput<String>('assigneeType');
    autoDelete = registerOutput<bool>('autoDelete');
    datacenter = registerOutput<String>('datacenter');
    deleteProtection = registerOutput<bool>('deleteProtection');
    ipAddress = registerOutput<String>('ipAddress');
    ipNetwork = registerOutput<String>('ipNetwork');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
