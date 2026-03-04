import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_args.dart';
import 'firewall_state.dart';

/// Provides a Hetzner Cloud Firewall to represent a Firewall in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const myfirewall = new hcloud.Firewall("myfirewall", {
///     name: "my-firewall",
///     rules: [
///         {
///             direction: "in",
///             protocol: "icmp",
///             sourceIps: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             direction: "in",
///             protocol: "tcp",
///             port: "80-85",
///             sourceIps: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ],
/// });
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
///     firewallIds: [myfirewall.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// myfirewall = hcloud.Firewall("myfirewall",
///     name="my-firewall",
///     rules=[
///         {
///             "direction": "in",
///             "protocol": "icmp",
///             "source_ips": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             "direction": "in",
///             "protocol": "tcp",
///             "port": "80-85",
///             "source_ips": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ])
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23",
///     firewall_ids=[myfirewall.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myfirewall = new HCloud.Firewall("myfirewall", new()
///     {
///         Name = "my-firewall",
///         Rules = new[]
///         {
///             new HCloud.Inputs.FirewallRuleArgs
///             {
///                 Direction = "in",
///                 Protocol = "icmp",
///                 SourceIps = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///             new HCloud.Inputs.FirewallRuleArgs
///             {
///                 Direction = "in",
///                 Protocol = "tcp",
///                 Port = "80-85",
///                 SourceIps = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///         },
///     });
///
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///         FirewallIds = new[]
///         {
///             myfirewall.Id,
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
/// 		myfirewall, err := hcloud.NewFirewall(ctx, "myfirewall", &hcloud.FirewallArgs{
/// 			Name: pulumi.String("my-firewall"),
/// 			Rules: hcloud.FirewallRuleArray{
/// 				&hcloud.FirewallRuleArgs{
/// 					Direction: pulumi.String("in"),
/// 					Protocol:  pulumi.String("icmp"),
/// 					SourceIps: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&hcloud.FirewallRuleArgs{
/// 					Direction: pulumi.String("in"),
/// 					Protocol:  pulumi.String("tcp"),
/// 					Port:      pulumi.String("80-85"),
/// 					SourceIps: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
/// 			FirewallIds: pulumi.IntArray{
/// 				myfirewall.ID(),
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
/// import com.pulumi.hcloud.Firewall;
/// import com.pulumi.hcloud.FirewallArgs;
/// import com.pulumi.hcloud.inputs.FirewallRuleArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         var myfirewall = new Firewall("myfirewall", FirewallArgs.builder()
///             .name("my-firewall")
///             .rules(
///                 FirewallRuleArgs.builder()
///                     .direction("in")
///                     .protocol("icmp")
///                     .sourceIps(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build(),
///                 FirewallRuleArgs.builder()
///                     .direction("in")
///                     .protocol("tcp")
///                     .port("80-85")
///                     .sourceIps(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build())
///             .build());
///
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .firewallIds(myfirewall.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myfirewall:
///     type: hcloud:Firewall
///     properties:
///       name: my-firewall
///       rules:
///         - direction: in
///           protocol: icmp
///           sourceIps:
///             - 0.0.0.0/0
///             - ::/0
///         - direction: in
///           protocol: tcp
///           port: 80-85
///           sourceIps:
///             - 0.0.0.0/0
///             - ::/0
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///       firewallIds:
///         - ${myfirewall.id}
/// ```
///
///
/// ## Import
///
/// Firewalls can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/firewall:Firewall example "$FIREWALL_ID"
/// ```
class Firewall extends pulumi.CustomResource {
  /// Resources the firewall should be assigned to
  late final pulumi.Output<List<Map<String, dynamic>>> applyTos;

  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>> labels;

  /// Name of the Firewall.
  late final pulumi.Output<String> name;

  /// Configuration of a Rule from this Firewall.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_index_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/firewall:Firewall',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applyTos = registerOutput<List<Map<String, dynamic>>>('applyTos');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
  }

  /// Gets an existing [Firewall] resource's state with the given [name] and [id].
  static Firewall get(
    String name,
    pulumi.Input<String> id, {
    FirewallState? state,
  }) {
    return Firewall._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Firewall._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/firewall:Firewall',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applyTos = registerOutput<List<Map<String, dynamic>>>('applyTos');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
  }
}
