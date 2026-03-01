import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_args.dart';
import 'firewall_device.dart';
import 'firewall_inbound.dart';
import 'firewall_outbound.dart';
import 'firewall_state.dart';

/// Manages a Linode Firewall.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-firewalls).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myInstance = new linode.Instance("my_instance", {
///     label: "my_instance",
///     image: "linode/ubuntu22.04",
///     region: "us-southeast",
///     type: "g6-standard-1",
///     rootPass: "bogusPassword$",
///     swapSize: 256,
/// });
/// const myFirewall = new linode.Firewall("my_firewall", {
///     label: "my_firewall",
///     inbounds: [
///         {
///             label: "allow-http",
///             action: "ACCEPT",
///             protocol: "TCP",
///             ports: "80",
///             ipv4s: ["0.0.0.0/0"],
///             ipv6s: ["::/0"],
///         },
///         {
///             label: "allow-https",
///             action: "ACCEPT",
///             protocol: "TCP",
///             ports: "443",
///             ipv4s: ["0.0.0.0/0"],
///             ipv6s: ["::/0"],
///         },
///     ],
///     inboundPolicy: "DROP",
///     outbounds: [
///         {
///             label: "reject-http",
///             action: "DROP",
///             protocol: "TCP",
///             ports: "80",
///             ipv4s: ["0.0.0.0/0"],
///             ipv6s: ["::/0"],
///         },
///         {
///             label: "reject-https",
///             action: "DROP",
///             protocol: "TCP",
///             ports: "443",
///             ipv4s: ["0.0.0.0/0"],
///             ipv6s: ["::/0"],
///         },
///     ],
///     outboundPolicy: "ACCEPT",
///     linodes: [myInstance.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my_instance",
///     label="my_instance",
///     image="linode/ubuntu22.04",
///     region="us-southeast",
///     type="g6-standard-1",
///     root_pass="bogusPassword$",
///     swap_size=256)
/// my_firewall = linode.Firewall("my_firewall",
///     label="my_firewall",
///     inbounds=[
///         {
///             "label": "allow-http",
///             "action": "ACCEPT",
///             "protocol": "TCP",
///             "ports": "80",
///             "ipv4s": ["0.0.0.0/0"],
///             "ipv6s": ["::/0"],
///         },
///         {
///             "label": "allow-https",
///             "action": "ACCEPT",
///             "protocol": "TCP",
///             "ports": "443",
///             "ipv4s": ["0.0.0.0/0"],
///             "ipv6s": ["::/0"],
///         },
///     ],
///     inbound_policy="DROP",
///     outbounds=[
///         {
///             "label": "reject-http",
///             "action": "DROP",
///             "protocol": "TCP",
///             "ports": "80",
///             "ipv4s": ["0.0.0.0/0"],
///             "ipv6s": ["::/0"],
///         },
///         {
///             "label": "reject-https",
///             "action": "DROP",
///             "protocol": "TCP",
///             "ports": "443",
///             "ipv4s": ["0.0.0.0/0"],
///             "ipv6s": ["::/0"],
///         },
///     ],
///     outbound_policy="ACCEPT",
///     linodes=[my_instance.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myInstance = new Linode.Instance("my_instance", new()
///     {
///         Label = "my_instance",
///         Image = "linode/ubuntu22.04",
///         Region = "us-southeast",
///         Type = "g6-standard-1",
///         RootPass = "bogusPassword$",
///         SwapSize = 256,
///     });
///
///     var myFirewall = new Linode.Firewall("my_firewall", new()
///     {
///         Label = "my_firewall",
///         Inbounds = new[]
///         {
///             new Linode.Inputs.FirewallInboundArgs
///             {
///                 Label = "allow-http",
///                 Action = "ACCEPT",
///                 Protocol = "TCP",
///                 Ports = "80",
///                 Ipv4s = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6s = new[]
///                 {
///                     "::/0",
///                 },
///             },
///             new Linode.Inputs.FirewallInboundArgs
///             {
///                 Label = "allow-https",
///                 Action = "ACCEPT",
///                 Protocol = "TCP",
///                 Ports = "443",
///                 Ipv4s = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6s = new[]
///                 {
///                     "::/0",
///                 },
///             },
///         },
///         InboundPolicy = "DROP",
///         Outbounds = new[]
///         {
///             new Linode.Inputs.FirewallOutboundArgs
///             {
///                 Label = "reject-http",
///                 Action = "DROP",
///                 Protocol = "TCP",
///                 Ports = "80",
///                 Ipv4s = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6s = new[]
///                 {
///                     "::/0",
///                 },
///             },
///             new Linode.Inputs.FirewallOutboundArgs
///             {
///                 Label = "reject-https",
///                 Action = "DROP",
///                 Protocol = "TCP",
///                 Ports = "443",
///                 Ipv4s = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6s = new[]
///                 {
///                     "::/0",
///                 },
///             },
///         },
///         OutboundPolicy = "ACCEPT",
///         Linodes = new[]
///         {
///             myInstance.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myInstance, err := linode.NewInstance(ctx, "my_instance", &linode.InstanceArgs{
/// 			Label:    pulumi.String("my_instance"),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-standard-1"),
/// 			RootPass: pulumi.String("bogusPassword$"),
/// 			SwapSize: pulumi.Int(256),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewFirewall(ctx, "my_firewall", &linode.FirewallArgs{
/// 			Label: pulumi.String("my_firewall"),
/// 			Inbounds: linode.FirewallInboundArray{
/// 				&linode.FirewallInboundArgs{
/// 					Label:    pulumi.String("allow-http"),
/// 					Action:   pulumi.String("ACCEPT"),
/// 					Protocol: pulumi.String("TCP"),
/// 					Ports:    pulumi.String("80"),
/// 					Ipv4s: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6s: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&linode.FirewallInboundArgs{
/// 					Label:    pulumi.String("allow-https"),
/// 					Action:   pulumi.String("ACCEPT"),
/// 					Protocol: pulumi.String("TCP"),
/// 					Ports:    pulumi.String("443"),
/// 					Ipv4s: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6s: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 			},
/// 			InboundPolicy: pulumi.String("DROP"),
/// 			Outbounds: linode.FirewallOutboundArray{
/// 				&linode.FirewallOutboundArgs{
/// 					Label:    pulumi.String("reject-http"),
/// 					Action:   pulumi.String("DROP"),
/// 					Protocol: pulumi.String("TCP"),
/// 					Ports:    pulumi.String("80"),
/// 					Ipv4s: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6s: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&linode.FirewallOutboundArgs{
/// 					Label:    pulumi.String("reject-https"),
/// 					Action:   pulumi.String("DROP"),
/// 					Protocol: pulumi.String("TCP"),
/// 					Ports:    pulumi.String("443"),
/// 					Ipv4s: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6s: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 			},
/// 			OutboundPolicy: pulumi.String("ACCEPT"),
/// 			Linodes: pulumi.IntArray{
/// 				myInstance.ID(),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Firewall;
/// import com.pulumi.linode.FirewallArgs;
/// import com.pulumi.linode.inputs.FirewallInboundArgs;
/// import com.pulumi.linode.inputs.FirewallOutboundArgs;
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
///         var myInstance = new Instance("myInstance", InstanceArgs.builder()
///             .label("my_instance")
///             .image("linode/ubuntu22.04")
///             .region("us-southeast")
///             .type("g6-standard-1")
///             .rootPass("bogusPassword$")
///             .swapSize(256)
///             .build());
///
///         var myFirewall = new Firewall("myFirewall", FirewallArgs.builder()
///             .label("my_firewall")
///             .inbounds(
///                 FirewallInboundArgs.builder()
///                     .label("allow-http")
///                     .action("ACCEPT")
///                     .protocol("TCP")
///                     .ports("80")
///                     .ipv4s("0.0.0.0/0")
///                     .ipv6s("::/0")
///                     .build(),
///                 FirewallInboundArgs.builder()
///                     .label("allow-https")
///                     .action("ACCEPT")
///                     .protocol("TCP")
///                     .ports("443")
///                     .ipv4s("0.0.0.0/0")
///                     .ipv6s("::/0")
///                     .build())
///             .inboundPolicy("DROP")
///             .outbounds(
///                 FirewallOutboundArgs.builder()
///                     .label("reject-http")
///                     .action("DROP")
///                     .protocol("TCP")
///                     .ports("80")
///                     .ipv4s("0.0.0.0/0")
///                     .ipv6s("::/0")
///                     .build(),
///                 FirewallOutboundArgs.builder()
///                     .label("reject-https")
///                     .action("DROP")
///                     .protocol("TCP")
///                     .ports("443")
///                     .ipv4s("0.0.0.0/0")
///                     .ipv6s("::/0")
///                     .build())
///             .outboundPolicy("ACCEPT")
///             .linodes(myInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFirewall:
///     type: linode:Firewall
///     name: my_firewall
///     properties:
///       label: my_firewall
///       inbounds:
///         - label: allow-http
///           action: ACCEPT
///           protocol: TCP
///           ports: '80'
///           ipv4s:
///             - 0.0.0.0/0
///           ipv6s:
///             - ::/0
///         - label: allow-https
///           action: ACCEPT
///           protocol: TCP
///           ports: '443'
///           ipv4s:
///             - 0.0.0.0/0
///           ipv6s:
///             - ::/0
///       inboundPolicy: DROP
///       outbounds:
///         - label: reject-http
///           action: DROP
///           protocol: TCP
///           ports: '80'
///           ipv4s:
///             - 0.0.0.0/0
///           ipv6s:
///             - ::/0
///         - label: reject-https
///           action: DROP
///           protocol: TCP
///           ports: '443'
///           ipv4s:
///             - 0.0.0.0/0
///           ipv6s:
///             - ::/0
///       outboundPolicy: ACCEPT
///       linodes:
///         - ${myInstance.id}
///   myInstance:
///     type: linode:Instance
///     name: my_instance
///     properties:
///       label: my_instance
///       image: linode/ubuntu22.04
///       region: us-southeast
///       type: g6-standard-1
///       rootPass: bogusPassword$
///       swapSize: 256
/// ```
///
///
/// ## Import
///
/// Firewalls can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/firewall:Firewall my_firewall 12345
/// ```
class Firewall extends pulumi.CustomResource {
  /// When this firewall was created
  late final pulumi.Output<String> created;
  /// The devices associated with this firewall.
  late final pulumi.Output<List<FirewallDevice>> devices;
  /// If `true`, the Firewall's rules are not enforced (defaults to `false`).
  ///
  /// * `inbound` - (Optional) A firewall rule that specifies what inbound network traffic is allowed.
  late final pulumi.Output<bool> disabled;
  /// The default behavior for inbound traffic. This setting can be overridden by updating the inbound.action property of the Firewall Rule. (`ACCEPT`, `DROP`)
  ///
  /// * `outbound` - (Optional) A firewall rule that specifies what outbound network traffic is allowed.
  late final pulumi.Output<String> inboundPolicy;
  /// A firewall rule that specifies what inbound network traffic is allowed.
  late final pulumi.Output<List<FirewallInbound>?> inbounds;
  /// A list of IDs of Linode Interfaces this Firewall should govern network traffic for.
  late final pulumi.Output<List<int>> interfaces;
  /// This Firewall's unique label.
  late final pulumi.Output<String> label;
  /// A list of IDs of Linodes this Firewall should govern network traffic for.
  late final pulumi.Output<List<int>> linodes;
  /// A list of IDs of NodeBalancers this Firewall should govern network traffic for.
  late final pulumi.Output<List<int>> nodebalancers;
  /// The default behavior for outbound traffic. This setting can be overridden by updating the outbound.action property for an individual Firewall Rule. (`ACCEPT`, `DROP`)
  late final pulumi.Output<String> outboundPolicy;
  /// A firewall rule that specifies what outbound network traffic is allowed.
  late final pulumi.Output<List<FirewallOutbound>?> outbounds;
  /// The status of the Firewall.
  late final pulumi.Output<String> status;
  /// A list of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;
  /// When this firewall was last updated
  late final pulumi.Output<String> updated;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_index_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.devices = registerOutput<List<FirewallDevice>>('devices');
    this.disabled = registerOutput<bool>('disabled');
    this.inboundPolicy = registerOutput<String>('inboundPolicy');
    this.inbounds = registerOutput<List<FirewallInbound>?>('inbounds');
    this.interfaces = registerOutput<List<int>>('interfaces');
    this.label = registerOutput<String>('label');
    this.linodes = registerOutput<List<int>>('linodes');
    this.nodebalancers = registerOutput<List<int>>('nodebalancers');
    this.outboundPolicy = registerOutput<String>('outboundPolicy');
    this.outbounds = registerOutput<List<FirewallOutbound>?>('outbounds');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<String>>('tags');
    this.updated = registerOutput<String>('updated');
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
          'linode:index/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.devices = registerOutput<List<FirewallDevice>>('devices');
    this.disabled = registerOutput<bool>('disabled');
    this.inboundPolicy = registerOutput<String>('inboundPolicy');
    this.inbounds = registerOutput<List<FirewallInbound>?>('inbounds');
    this.interfaces = registerOutput<List<int>>('interfaces');
    this.label = registerOutput<String>('label');
    this.linodes = registerOutput<List<int>>('linodes');
    this.nodebalancers = registerOutput<List<int>>('nodebalancers');
    this.outboundPolicy = registerOutput<String>('outboundPolicy');
    this.outbounds = registerOutput<List<FirewallOutbound>?>('outbounds');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<String>>('tags');
    this.updated = registerOutput<String>('updated');
  }
}
