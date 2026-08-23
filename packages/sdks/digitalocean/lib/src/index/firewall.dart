import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_args.dart';
import 'firewall_state.dart';

/// Provides a DigitalOcean Cloud Firewall resource. This can be used to create,
/// modify, and delete Firewalls.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const web = new digitalocean.Droplet("web", {
///     name: "web-1",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.NYC3,
/// });
/// const webFirewall = new digitalocean.Firewall("web", {
///     name: "only-22-80-and-443",
///     dropletIds: [web.id.apply(x =>Number(x))],
///     inboundRules: [
///         {
///             protocol: "tcp",
///             portRange: "22",
///             sourceAddresses: [
///                 "192.168.1.0/24",
///                 "2002:1:2::/48",
///             ],
///         },
///         {
///             protocol: "tcp",
///             portRange: "80",
///             sourceAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             protocol: "tcp",
///             portRange: "443",
///             sourceAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             protocol: "icmp",
///             sourceAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ],
///     outboundRules: [
///         {
///             protocol: "tcp",
///             portRange: "53",
///             destinationAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             protocol: "udp",
///             portRange: "53",
///             destinationAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             protocol: "icmp",
///             destinationAddresses: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// web = digitalocean.Droplet("web",
///     name="web-1",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.NYC3)
/// web_firewall = digitalocean.Firewall("web",
///     name="only-22-80-and-443",
///     droplet_ids=[web.id.apply(lambda x: int(x))],
///     inbound_rules=[
///         {
///             "protocol": "tcp",
///             "port_range": "22",
///             "source_addresses": [
///                 "192.168.1.0/24",
///                 "2002:1:2::/48",
///             ],
///         },
///         {
///             "protocol": "tcp",
///             "port_range": "80",
///             "source_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             "protocol": "tcp",
///             "port_range": "443",
///             "source_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             "protocol": "icmp",
///             "source_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ],
///     outbound_rules=[
///         {
///             "protocol": "tcp",
///             "port_range": "53",
///             "destination_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             "protocol": "udp",
///             "port_range": "53",
///             "destination_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///         {
///             "protocol": "icmp",
///             "destination_addresses": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Name = "web-1",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var webFirewall = new DigitalOcean.Firewall("web", new()
///     {
///         Name = "only-22-80-and-443",
///         DropletIds = new[]
///         {
///             web.Id,
///         },
///         InboundRules = new[]
///         {
///             new DigitalOcean.Inputs.FirewallInboundRuleArgs
///             {
///                 Protocol = "tcp",
///                 PortRange = "22",
///                 SourceAddresses = new[]
///                 {
///                     "192.168.1.0/24",
///                     "2002:1:2::/48",
///                 },
///             },
///             new DigitalOcean.Inputs.FirewallInboundRuleArgs
///             {
///                 Protocol = "tcp",
///                 PortRange = "80",
///                 SourceAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///             new DigitalOcean.Inputs.FirewallInboundRuleArgs
///             {
///                 Protocol = "tcp",
///                 PortRange = "443",
///                 SourceAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///             new DigitalOcean.Inputs.FirewallInboundRuleArgs
///             {
///                 Protocol = "icmp",
///                 SourceAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///         },
///         OutboundRules = new[]
///         {
///             new DigitalOcean.Inputs.FirewallOutboundRuleArgs
///             {
///                 Protocol = "tcp",
///                 PortRange = "53",
///                 DestinationAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///             new DigitalOcean.Inputs.FirewallOutboundRuleArgs
///             {
///                 Protocol = "udp",
///                 PortRange = "53",
///                 DestinationAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
///             },
///             new DigitalOcean.Inputs.FirewallOutboundRuleArgs
///             {
///                 Protocol = "icmp",
///                 DestinationAddresses = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
///                 },
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
/// 	"strconv"
///
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web, err := digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Name:   pulumi.String("web-1"),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewFirewall(ctx, "web", &digitalocean.FirewallArgs{
/// 			Name: pulumi.String("only-22-80-and-443"),
/// 			DropletIds: pulumi.IntArray{
/// 				web.ID().ToIDOutput().ApplyT(func(id pulumi.ID) (int, error) { return strconv.Atoi(string(id)) }).(pulumi.IntOutput),
/// 			},
/// 			InboundRules: digitalocean.FirewallInboundRuleArray{
/// 				&digitalocean.FirewallInboundRuleArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					PortRange: pulumi.String("22"),
/// 					SourceAddresses: pulumi.StringArray{
/// 						pulumi.String("192.168.1.0/24"),
/// 						pulumi.String("2002:1:2::/48"),
/// 					},
/// 				},
/// 				&digitalocean.FirewallInboundRuleArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					PortRange: pulumi.String("80"),
/// 					SourceAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&digitalocean.FirewallInboundRuleArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					PortRange: pulumi.String("443"),
/// 					SourceAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&digitalocean.FirewallInboundRuleArgs{
/// 					Protocol: pulumi.String("icmp"),
/// 					SourceAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 			},
/// 			OutboundRules: digitalocean.FirewallOutboundRuleArray{
/// 				&digitalocean.FirewallOutboundRuleArgs{
/// 					Protocol:  pulumi.String("tcp"),
/// 					PortRange: pulumi.String("53"),
/// 					DestinationAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&digitalocean.FirewallOutboundRuleArgs{
/// 					Protocol:  pulumi.String("udp"),
/// 					PortRange: pulumi.String("53"),
/// 					DestinationAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 				&digitalocean.FirewallOutboundRuleArgs{
/// 					Protocol: pulumi.String("icmp"),
/// 					DestinationAddresses: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
/// 					},
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_droplet" "web" {
///   name   = "web-1"
///   size   = "s-1vcpu-1gb"
///   image  = "ubuntu-18-04-x64"
///   region = "nyc3"
/// }
/// resource "digitalocean_firewall" "web" {
///   name        = "only-22-80-and-443"
///   droplet_ids = [digitalocean_droplet.web.id]
///   inbound_rules {
///     protocol         = "tcp"
///     port_range       = "22"
///     source_addresses = ["192.168.1.0/24", "2002:1:2::/48"]
///   }
///   inbound_rules {
///     protocol         = "tcp"
///     port_range       = "80"
///     source_addresses = ["0.0.0.0/0", "::/0"]
///   }
///   inbound_rules {
///     protocol         = "tcp"
///     port_range       = "443"
///     source_addresses = ["0.0.0.0/0", "::/0"]
///   }
///   inbound_rules {
///     protocol         = "icmp"
///     source_addresses = ["0.0.0.0/0", "::/0"]
///   }
///   outbound_rules {
///     protocol              = "tcp"
///     port_range            = "53"
///     destination_addresses = ["0.0.0.0/0", "::/0"]
///   }
///   outbound_rules {
///     protocol              = "udp"
///     port_range            = "53"
///     destination_addresses = ["0.0.0.0/0", "::/0"]
///   }
///   outbound_rules {
///     protocol              = "icmp"
///     destination_addresses = ["0.0.0.0/0", "::/0"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.Firewall;
/// import com.pulumi.digitalocean.FirewallArgs;
/// import com.pulumi.digitalocean.inputs.FirewallInboundRuleArgs;
/// import com.pulumi.digitalocean.inputs.FirewallOutboundRuleArgs;
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
///         var web = new Droplet("web", DropletArgs.builder()
///             .name("web-1")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("nyc3")
///             .build());
///
///         var webFirewall = new Firewall("webFirewall", FirewallArgs.builder()
///             .name("only-22-80-and-443")
///             .dropletIds(web.id())
///             .inboundRules(
///                 FirewallInboundRuleArgs.builder()
///                     .protocol("tcp")
///                     .portRange("22")
///                     .sourceAddresses(
///                         "192.168.1.0/24",
///                         "2002:1:2::/48")
///                     .build(),
///                 FirewallInboundRuleArgs.builder()
///                     .protocol("tcp")
///                     .portRange("80")
///                     .sourceAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build(),
///                 FirewallInboundRuleArgs.builder()
///                     .protocol("tcp")
///                     .portRange("443")
///                     .sourceAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build(),
///                 FirewallInboundRuleArgs.builder()
///                     .protocol("icmp")
///                     .sourceAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build())
///             .outboundRules(
///                 FirewallOutboundRuleArgs.builder()
///                     .protocol("tcp")
///                     .portRange("53")
///                     .destinationAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build(),
///                 FirewallOutboundRuleArgs.builder()
///                     .protocol("udp")
///                     .portRange("53")
///                     .destinationAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build(),
///                 FirewallOutboundRuleArgs.builder()
///                     .protocol("icmp")
///                     .destinationAddresses(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: digitalocean:Droplet
///     properties:
///       name: web-1
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: nyc3
///   webFirewall:
///     type: digitalocean:Firewall
///     name: web
///     properties:
///       name: only-22-80-and-443
///       dropletIds:
///         - ${web.id}
///       inboundRules:
///         - protocol: tcp
///           portRange: '22'
///           sourceAddresses:
///             - 192.168.1.0/24
///             - 2002:1:2::/48
///         - protocol: tcp
///           portRange: '80'
///           sourceAddresses:
///             - 0.0.0.0/0
///             - ::/0
///         - protocol: tcp
///           portRange: '443'
///           sourceAddresses:
///             - 0.0.0.0/0
///             - ::/0
///         - protocol: icmp
///           sourceAddresses:
///             - 0.0.0.0/0
///             - ::/0
///       outboundRules:
///         - protocol: tcp
///           portRange: '53'
///           destinationAddresses:
///             - 0.0.0.0/0
///             - ::/0
///         - protocol: udp
///           portRange: '53'
///           destinationAddresses:
///             - 0.0.0.0/0
///             - ::/0
///         - protocol: icmp
///           destinationAddresses:
///             - 0.0.0.0/0
///             - ::/0
/// ```
///
///
/// ## Import
///
/// Firewalls can be imported using the firewall `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/firewall:Firewall myfirewall b8ecd2ab-2267-4a5e-8692-cbf1d32583e3
/// ```
class Firewall extends pulumi.CustomResource {
  /// A time value given in ISO8601 combined date and time format
  /// that represents when the Firewall was created.
  late final pulumi.Output<String> createdAt;
  /// The list of the IDs of the Droplets assigned
  /// to the Firewall (max. 10). If you want to assign more droplets to the
  /// Firewall, add Tags to them and use the `tags` argument below.
  late final pulumi.Output<List<int>?> dropletIds;
  /// The inbound access rule block for the Firewall.
  /// The `inboundRule` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundRules;
  /// The Firewall name
  late final pulumi.Output<String> name;
  /// The outbound access rule block for the Firewall.
  /// The `outboundRule` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> outboundRules;
  /// An list of object containing the fields, "dropletId",
  /// "removing", and "status".  It is provided to detail exactly which Droplets
  /// are having their security policies updated.  When empty, all changes
  /// have been successfully applied.
  late final pulumi.Output<List<Map<String, dynamic>>> pendingChanges;
  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  late final pulumi.Output<String> status;
  /// The names of the Tags assigned to the Firewall (max. 5).
  late final pulumi.Output<List<String>?> tags;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_index_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dropletIds = registerOutput<List<int>?>('dropletIds');
    inboundRules = registerOutput<List<Map<String, dynamic>>?>('inboundRules');
    this.name = registerOutput<String>('name');
    outboundRules = registerOutput<List<Map<String, dynamic>>?>('outboundRules');
    pendingChanges = registerOutput<List<Map<String, dynamic>>>('pendingChanges');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
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
          'digitalocean:index/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dropletIds = registerOutput<List<int>?>('dropletIds');
    inboundRules = registerOutput<List<Map<String, dynamic>>?>('inboundRules');
    this.name = registerOutput<String>('name');
    outboundRules = registerOutput<List<Map<String, dynamic>>?>('outboundRules');
    pendingChanges = registerOutput<List<Map<String, dynamic>>>('pendingChanges');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
  }
}
