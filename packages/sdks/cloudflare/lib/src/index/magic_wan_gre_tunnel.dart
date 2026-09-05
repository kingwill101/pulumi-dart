import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_gre_tunnel_args.dart';
import 'magic_wan_gre_tunnel_bgp.dart';
import 'magic_wan_gre_tunnel_bgp_status.dart';
import 'magic_wan_gre_tunnel_health_check.dart';
import 'magic_wan_gre_tunnel_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicWanGreTunnel = new cloudflare.MagicWanGreTunnel("example_magic_wan_gre_tunnel", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     cloudflareGreEndpoint: "203.0.113.1",
///     customerGreEndpoint: "203.0.113.1",
///     interfaceAddress: "192.0.2.0/31",
///     name: "GRE_1",
///     automaticReturnRouting: true,
///     bgp: {
///         customerAsn: 0,
///         extraPrefixes: ["string"],
///         md5Key: "md5_key",
///     },
///     description: "Tunnel for ISP X",
///     healthCheck: {
///         direction: "bidirectional",
///         enabled: true,
///         rate: "low",
///         target: {
///             saved: "203.0.113.1",
///         },
///         type: "request",
///     },
///     interfaceAddress6: "2606:54c1:7:0:a9fe:12d2:1:200/127",
///     mtu: 0,
///     ttl: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_wan_gre_tunnel = cloudflare.MagicWanGreTunnel("example_magic_wan_gre_tunnel",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     cloudflare_gre_endpoint="203.0.113.1",
///     customer_gre_endpoint="203.0.113.1",
///     interface_address="192.0.2.0/31",
///     name="GRE_1",
///     automatic_return_routing=True,
///     bgp={
///         "customer_asn": 0,
///         "extra_prefixes": ["string"],
///         "md5_key": "md5_key",
///     },
///     description="Tunnel for ISP X",
///     health_check={
///         "direction": "bidirectional",
///         "enabled": True,
///         "rate": "low",
///         "target": {
///             "saved": "203.0.113.1",
///         },
///         "type": "request",
///     },
///     interface_address6="2606:54c1:7:0:a9fe:12d2:1:200/127",
///     mtu=0,
///     ttl=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicWanGreTunnel = new Cloudflare.MagicWanGreTunnel("example_magic_wan_gre_tunnel", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         CloudflareGreEndpoint = "203.0.113.1",
///         CustomerGreEndpoint = "203.0.113.1",
///         InterfaceAddress = "192.0.2.0/31",
///         Name = "GRE_1",
///         AutomaticReturnRouting = true,
///         Bgp = new Cloudflare.Inputs.MagicWanGreTunnelBgpArgs
///         {
///             CustomerAsn = 0,
///             ExtraPrefixes = new[]
///             {
///                 "string",
///             },
///             Md5Key = "md5_key",
///         },
///         Description = "Tunnel for ISP X",
///         HealthCheck = new Cloudflare.Inputs.MagicWanGreTunnelHealthCheckArgs
///         {
///             Direction = "bidirectional",
///             Enabled = true,
///             Rate = "low",
///             Target = new Cloudflare.Inputs.MagicWanGreTunnelHealthCheckTargetArgs
///             {
///                 Saved = "203.0.113.1",
///             },
///             Type = "request",
///         },
///         InterfaceAddress6 = "2606:54c1:7:0:a9fe:12d2:1:200/127",
///         Mtu = 0,
///         Ttl = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewMagicWanGreTunnel(ctx, "example_magic_wan_gre_tunnel", &cloudflare.MagicWanGreTunnelArgs{
/// 			AccountId:              pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			CloudflareGreEndpoint:  pulumi.String("203.0.113.1"),
/// 			CustomerGreEndpoint:    pulumi.String("203.0.113.1"),
/// 			InterfaceAddress:       pulumi.String("192.0.2.0/31"),
/// 			Name:                   pulumi.String("GRE_1"),
/// 			AutomaticReturnRouting: pulumi.Bool(true),
/// 			Bgp: &cloudflare.MagicWanGreTunnelBgpArgs{
/// 				CustomerAsn: pulumi.Int(0),
/// 				ExtraPrefixes: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Md5Key: pulumi.String("md5_key"),
/// 			},
/// 			Description: pulumi.String("Tunnel for ISP X"),
/// 			HealthCheck: &cloudflare.MagicWanGreTunnelHealthCheckArgs{
/// 				Direction: pulumi.String("bidirectional"),
/// 				Enabled:   pulumi.Bool(true),
/// 				Rate:      pulumi.String("low"),
/// 				Target: &cloudflare.MagicWanGreTunnelHealthCheckTargetArgs{
/// 					Saved: pulumi.String("203.0.113.1"),
/// 				},
/// 				Type: pulumi.String("request"),
/// 			},
/// 			InterfaceAddress6: pulumi.String("2606:54c1:7:0:a9fe:12d2:1:200/127"),
/// 			Mtu:               pulumi.Int(0),
/// 			Ttl:               pulumi.Int(0),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_magicwangretunnel" "example_magic_wan_gre_tunnel" {
///   account_id               = "023e105f4ecef8ad9ca31a8372d0c353"
///   cloudflare_gre_endpoint  = "203.0.113.1"
///   customer_gre_endpoint    = "203.0.113.1"
///   interface_address        = "192.0.2.0/31"
///   name                     = "GRE_1"
///   automatic_return_routing = true
///   bgp = {
///     customer_asn   = 0
///     extra_prefixes = ["string"]
///     md5_key        = "md5_key"
///   }
///   description = "Tunnel for ISP X"
///   health_check = {
///     direction = "bidirectional"
///     enabled   = true
///     rate      = "low"
///     target = {
///       saved = "203.0.113.1"
///     }
///     type = "request"
///   }
///   interface_address6 = "2606:54c1:7:0:a9fe:12d2:1:200/127"
///   mtu                = 0
///   ttl                = 0
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicWanGreTunnel;
/// import com.pulumi.cloudflare.MagicWanGreTunnelArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanGreTunnelBgpArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanGreTunnelHealthCheckArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanGreTunnelHealthCheckTargetArgs;
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
///         var exampleMagicWanGreTunnel = new MagicWanGreTunnel("exampleMagicWanGreTunnel", MagicWanGreTunnelArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .cloudflareGreEndpoint("203.0.113.1")
///             .customerGreEndpoint("203.0.113.1")
///             .interfaceAddress("192.0.2.0/31")
///             .name("GRE_1")
///             .automaticReturnRouting(true)
///             .bgp(MagicWanGreTunnelBgpArgs.builder()
///                 .customerAsn(0)
///                 .extraPrefixes("string")
///                 .md5Key("md5_key")
///                 .build())
///             .description("Tunnel for ISP X")
///             .healthCheck(MagicWanGreTunnelHealthCheckArgs.builder()
///                 .direction("bidirectional")
///                 .enabled(true)
///                 .rate("low")
///                 .target(MagicWanGreTunnelHealthCheckTargetArgs.builder()
///                     .saved("203.0.113.1")
///                     .build())
///                 .type("request")
///                 .build())
///             .interfaceAddress6("2606:54c1:7:0:a9fe:12d2:1:200/127")
///             .mtu(0)
///             .ttl(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicWanGreTunnel:
///     type: cloudflare:MagicWanGreTunnel
///     name: example_magic_wan_gre_tunnel
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       cloudflareGreEndpoint: 203.0.113.1
///       customerGreEndpoint: 203.0.113.1
///       interfaceAddress: 192.0.2.0/31
///       name: GRE_1
///       automaticReturnRouting: true
///       bgp:
///         customerAsn: 0
///         extraPrefixes:
///           - string
///         md5Key: md5_key
///       description: Tunnel for ISP X
///       healthCheck:
///         direction: bidirectional
///         enabled: true
///         rate: low
///         target:
///           saved: 203.0.113.1
///         type: request
///       interfaceAddress6: 2606:54c1:7:0:a9fe:12d2:1:200/127
///       mtu: 0
///       ttl: 0
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicWanGreTunnel:MagicWanGreTunnel example '<account_id>/<gre_tunnel_id>'
/// ```
class MagicWanGreTunnel extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  late final pulumi.Output<bool> automaticReturnRouting;
  late final pulumi.Output<MagicWanGreTunnelBgp?> bgp;
  late final pulumi.Output<MagicWanGreTunnelBgpStatus> bgpStatus;
  /// The IP address assigned to the Cloudflare side of the GRE tunnel.
  late final pulumi.Output<String> cloudflareGreEndpoint;
  /// The date and time the tunnel was created.
  late final pulumi.Output<String> createdOn;
  /// The IP address assigned to the customer side of the GRE tunnel.
  late final pulumi.Output<String> customerGreEndpoint;
  /// An optional description of the GRE tunnel.
  late final pulumi.Output<String> description;
  late final pulumi.Output<MagicWanGreTunnelHealthCheck> healthCheck;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  late final pulumi.Output<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  late final pulumi.Output<String?> interfaceAddress6;
  /// The date and time the tunnel was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
  late final pulumi.Output<int> mtu;
  /// The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
  late final pulumi.Output<String> name;
  /// Time To Live (TTL) in number of hops of the GRE tunnel.
  late final pulumi.Output<int> ttl;

  /// Creates a new [MagicWanGreTunnel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicWanGreTunnel]. {@macro pulumi_index_magic_wan_gre_tunnel_magic_wan_gre_tunnel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicWanGreTunnel(
    String name, {
    MagicWanGreTunnelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanGreTunnel:MagicWanGreTunnel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanGreTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanGreTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareGreEndpoint = registerOutput<String>('cloudflareGreEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customerGreEndpoint = registerOutput<String>('customerGreEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanGreTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [MagicWanGreTunnel] resource's state with the given [name] and [id].
  static MagicWanGreTunnel get(
    String name,
    pulumi.Input<String> id, {
    MagicWanGreTunnelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicWanGreTunnel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicWanGreTunnel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanGreTunnel:MagicWanGreTunnel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanGreTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanGreTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareGreEndpoint = registerOutput<String>('cloudflareGreEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customerGreEndpoint = registerOutput<String>('customerGreEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanGreTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    ttl = registerOutput<int>('ttl');
  }

  /// Creates a typed reference to an existing [MagicWanGreTunnel] resource.
  MagicWanGreTunnel.reference(String urn)
    : super(
        'cloudflare:index/magicWanGreTunnel:MagicWanGreTunnel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanGreTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanGreTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareGreEndpoint = registerOutput<String>('cloudflareGreEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customerGreEndpoint = registerOutput<String>('customerGreEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanGreTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanGreTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    ttl = registerOutput<int>('ttl');
  }
}
