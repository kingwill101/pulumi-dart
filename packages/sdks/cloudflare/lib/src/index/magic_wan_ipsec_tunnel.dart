import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_ipsec_tunnel_args.dart';
import 'magic_wan_ipsec_tunnel_bgp.dart';
import 'magic_wan_ipsec_tunnel_bgp_status.dart';
import 'magic_wan_ipsec_tunnel_custom_remote_identities.dart';
import 'magic_wan_ipsec_tunnel_health_check.dart';
import 'magic_wan_ipsec_tunnel_psk_metadata.dart';
import 'magic_wan_ipsec_tunnel_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicWanIpsecTunnel = new cloudflare.MagicWanIpsecTunnel("example_magic_wan_ipsec_tunnel", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     cloudflareEndpoint: "203.0.113.1",
///     interfaceAddress: "192.0.2.0/31",
///     name: "IPsec_1",
///     automaticReturnRouting: true,
///     bgp: {
///         customerAsn: 0,
///         extraPrefixes: ["string"],
///         md5Key: "md5_key",
///     },
///     customRemoteIdentities: {
///         fqdnId: "fqdn_id",
///     },
///     customerEndpoint: "203.0.113.1",
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
///     psk: "O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy",
///     replayProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_wan_ipsec_tunnel = cloudflare.MagicWanIpsecTunnel("example_magic_wan_ipsec_tunnel",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     cloudflare_endpoint="203.0.113.1",
///     interface_address="192.0.2.0/31",
///     name="IPsec_1",
///     automatic_return_routing=True,
///     bgp={
///         "customer_asn": 0,
///         "extra_prefixes": ["string"],
///         "md5_key": "md5_key",
///     },
///     custom_remote_identities={
///         "fqdn_id": "fqdn_id",
///     },
///     customer_endpoint="203.0.113.1",
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
///     psk="O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy",
///     replay_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicWanIpsecTunnel = new Cloudflare.MagicWanIpsecTunnel("example_magic_wan_ipsec_tunnel", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         CloudflareEndpoint = "203.0.113.1",
///         InterfaceAddress = "192.0.2.0/31",
///         Name = "IPsec_1",
///         AutomaticReturnRouting = true,
///         Bgp = new Cloudflare.Inputs.MagicWanIpsecTunnelBgpArgs
///         {
///             CustomerAsn = 0,
///             ExtraPrefixes = new[]
///             {
///                 "string",
///             },
///             Md5Key = "md5_key",
///         },
///         CustomRemoteIdentities = new Cloudflare.Inputs.MagicWanIpsecTunnelCustomRemoteIdentitiesArgs
///         {
///             FqdnId = "fqdn_id",
///         },
///         CustomerEndpoint = "203.0.113.1",
///         Description = "Tunnel for ISP X",
///         HealthCheck = new Cloudflare.Inputs.MagicWanIpsecTunnelHealthCheckArgs
///         {
///             Direction = "bidirectional",
///             Enabled = true,
///             Rate = "low",
///             Target = new Cloudflare.Inputs.MagicWanIpsecTunnelHealthCheckTargetArgs
///             {
///                 Saved = "203.0.113.1",
///             },
///             Type = "request",
///         },
///         InterfaceAddress6 = "2606:54c1:7:0:a9fe:12d2:1:200/127",
///         Psk = "O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy",
///         ReplayProtection = false,
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
/// 		_, err := cloudflare.NewMagicWanIpsecTunnel(ctx, "example_magic_wan_ipsec_tunnel", &cloudflare.MagicWanIpsecTunnelArgs{
/// 			AccountId:              pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			CloudflareEndpoint:     pulumi.String("203.0.113.1"),
/// 			InterfaceAddress:       pulumi.String("192.0.2.0/31"),
/// 			Name:                   pulumi.String("IPsec_1"),
/// 			AutomaticReturnRouting: pulumi.Bool(true),
/// 			Bgp: &cloudflare.MagicWanIpsecTunnelBgpArgs{
/// 				CustomerAsn: pulumi.Int(0),
/// 				ExtraPrefixes: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Md5Key: pulumi.String("md5_key"),
/// 			},
/// 			CustomRemoteIdentities: &cloudflare.MagicWanIpsecTunnelCustomRemoteIdentitiesArgs{
/// 				FqdnId: pulumi.String("fqdn_id"),
/// 			},
/// 			CustomerEndpoint: pulumi.String("203.0.113.1"),
/// 			Description:      pulumi.String("Tunnel for ISP X"),
/// 			HealthCheck: &cloudflare.MagicWanIpsecTunnelHealthCheckArgs{
/// 				Direction: pulumi.String("bidirectional"),
/// 				Enabled:   pulumi.Bool(true),
/// 				Rate:      pulumi.String("low"),
/// 				Target: &cloudflare.MagicWanIpsecTunnelHealthCheckTargetArgs{
/// 					Saved: pulumi.String("203.0.113.1"),
/// 				},
/// 				Type: pulumi.String("request"),
/// 			},
/// 			InterfaceAddress6: pulumi.String("2606:54c1:7:0:a9fe:12d2:1:200/127"),
/// 			Psk:               pulumi.String("O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy"),
/// 			ReplayProtection:  pulumi.Bool(false),
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
/// resource "cloudflare_magicwanipsectunnel" "example_magic_wan_ipsec_tunnel" {
///   account_id               = "023e105f4ecef8ad9ca31a8372d0c353"
///   cloudflare_endpoint      = "203.0.113.1"
///   interface_address        = "192.0.2.0/31"
///   name                     = "IPsec_1"
///   automatic_return_routing = true
///   bgp = {
///     customer_asn   = 0
///     extra_prefixes = ["string"]
///     md5_key        = "md5_key"
///   }
///   custom_remote_identities = {
///     fqdn_id = "fqdn_id"
///   }
///   customer_endpoint = "203.0.113.1"
///   description       = "Tunnel for ISP X"
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
///   psk                = "O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy"
///   replay_protection  = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicWanIpsecTunnel;
/// import com.pulumi.cloudflare.MagicWanIpsecTunnelArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanIpsecTunnelBgpArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanIpsecTunnelCustomRemoteIdentitiesArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanIpsecTunnelHealthCheckArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanIpsecTunnelHealthCheckTargetArgs;
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
///         var exampleMagicWanIpsecTunnel = new MagicWanIpsecTunnel("exampleMagicWanIpsecTunnel", MagicWanIpsecTunnelArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .cloudflareEndpoint("203.0.113.1")
///             .interfaceAddress("192.0.2.0/31")
///             .name("IPsec_1")
///             .automaticReturnRouting(true)
///             .bgp(MagicWanIpsecTunnelBgpArgs.builder()
///                 .customerAsn(0)
///                 .extraPrefixes("string")
///                 .md5Key("md5_key")
///                 .build())
///             .customRemoteIdentities(MagicWanIpsecTunnelCustomRemoteIdentitiesArgs.builder()
///                 .fqdnId("fqdn_id")
///                 .build())
///             .customerEndpoint("203.0.113.1")
///             .description("Tunnel for ISP X")
///             .healthCheck(MagicWanIpsecTunnelHealthCheckArgs.builder()
///                 .direction("bidirectional")
///                 .enabled(true)
///                 .rate("low")
///                 .target(MagicWanIpsecTunnelHealthCheckTargetArgs.builder()
///                     .saved("203.0.113.1")
///                     .build())
///                 .type("request")
///                 .build())
///             .interfaceAddress6("2606:54c1:7:0:a9fe:12d2:1:200/127")
///             .psk("O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy")
///             .replayProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicWanIpsecTunnel:
///     type: cloudflare:MagicWanIpsecTunnel
///     name: example_magic_wan_ipsec_tunnel
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       cloudflareEndpoint: 203.0.113.1
///       interfaceAddress: 192.0.2.0/31
///       name: IPsec_1
///       automaticReturnRouting: true
///       bgp:
///         customerAsn: 0
///         extraPrefixes:
///           - string
///         md5Key: md5_key
///       customRemoteIdentities:
///         fqdnId: fqdn_id
///       customerEndpoint: 203.0.113.1
///       description: Tunnel for ISP X
///       healthCheck:
///         direction: bidirectional
///         enabled: true
///         rate: low
///         target:
///           saved: 203.0.113.1
///         type: request
///       interfaceAddress6: 2606:54c1:7:0:a9fe:12d2:1:200/127
///       psk: O3bwKSjnaoCxDoUxjcq4Rk8ZKkezQUiy
///       replayProtection: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicWanIpsecTunnel:MagicWanIpsecTunnel example '<account_id>/<ipsec_tunnel_id>'
/// ```
class MagicWanIpsecTunnel extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
  late final pulumi.Output<bool> allowNullCipher;
  /// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
  late final pulumi.Output<bool> automaticReturnRouting;
  late final pulumi.Output<MagicWanIpsecTunnelBgp?> bgp;
  late final pulumi.Output<MagicWanIpsecTunnelBgpStatus> bgpStatus;
  /// The IP address assigned to the Cloudflare side of the IPsec tunnel.
  late final pulumi.Output<String> cloudflareEndpoint;
  /// The date and time the tunnel was created.
  late final pulumi.Output<String> createdOn;
  late final pulumi.Output<MagicWanIpsecTunnelCustomRemoteIdentities?> customRemoteIdentities;
  /// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
  late final pulumi.Output<String?> customerEndpoint;
  /// An optional description forthe IPsec tunnel.
  late final pulumi.Output<String> description;
  late final pulumi.Output<MagicWanIpsecTunnelHealthCheck> healthCheck;
  /// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
  late final pulumi.Output<String> interfaceAddress;
  /// A 127 bit IPV6 prefix from within the virtual*subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual*subnet6. Eg if virtual*subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface*address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
  late final pulumi.Output<String?> interfaceAddress6;
  /// The date and time the tunnel was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The name of the IPsec tunnel. The name cannot share a name with other tunnels.
  late final pulumi.Output<String> name;
  /// A randomly generated or provided string for use in the IPsec tunnel.
  late final pulumi.Output<String?> psk;
  /// The PSK metadata that includes when the PSK was generated.
  late final pulumi.Output<MagicWanIpsecTunnelPskMetadata> pskMetadata;
  /// If `true`, then IPsec replay protection will be supported in the Cloudflare-to-customer direction.
  late final pulumi.Output<bool> replayProtection;

  /// Creates a new [MagicWanIpsecTunnel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicWanIpsecTunnel]. {@macro pulumi_index_magic_wan_ipsec_tunnel_magic_wan_ipsec_tunnel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicWanIpsecTunnel(
    String name, {
    MagicWanIpsecTunnelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanIpsecTunnel:MagicWanIpsecTunnel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['psk'],
        ) {
    accountId = registerOutput<String>('accountId');
    allowNullCipher = registerOutput<bool>('allowNullCipher');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanIpsecTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanIpsecTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareEndpoint = registerOutput<String>('cloudflareEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customRemoteIdentities = registerOutput<MagicWanIpsecTunnelCustomRemoteIdentities?>('customRemoteIdentities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelCustomRemoteIdentities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerEndpoint = registerOutput<String?>('customerEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanIpsecTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    psk = registerOutput<String?>('psk', isSecret: true);
    pskMetadata = registerOutput<MagicWanIpsecTunnelPskMetadata>('pskMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelPskMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replayProtection = registerOutput<bool>('replayProtection');
  }

  /// Gets an existing [MagicWanIpsecTunnel] resource's state with the given [name] and [id].
  static MagicWanIpsecTunnel get(
    String name,
    pulumi.Input<String> id, {
    MagicWanIpsecTunnelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicWanIpsecTunnel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicWanIpsecTunnel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanIpsecTunnel:MagicWanIpsecTunnel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowNullCipher = registerOutput<bool>('allowNullCipher');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanIpsecTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanIpsecTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareEndpoint = registerOutput<String>('cloudflareEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customRemoteIdentities = registerOutput<MagicWanIpsecTunnelCustomRemoteIdentities?>('customRemoteIdentities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelCustomRemoteIdentities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerEndpoint = registerOutput<String?>('customerEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanIpsecTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    psk = registerOutput<String?>('psk', isSecret: true);
    pskMetadata = registerOutput<MagicWanIpsecTunnelPskMetadata>('pskMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelPskMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replayProtection = registerOutput<bool>('replayProtection');
  }

  /// Creates a typed reference to an existing [MagicWanIpsecTunnel] resource.
  MagicWanIpsecTunnel.reference(String urn)
    : super(
        'cloudflare:index/magicWanIpsecTunnel:MagicWanIpsecTunnel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['psk'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowNullCipher = registerOutput<bool>('allowNullCipher');
    automaticReturnRouting = registerOutput<bool>('automaticReturnRouting');
    bgp = registerOutput<MagicWanIpsecTunnelBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpStatus = registerOutput<MagicWanIpsecTunnelBgpStatus>('bgpStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelBgpStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudflareEndpoint = registerOutput<String>('cloudflareEndpoint');
    createdOn = registerOutput<String>('createdOn');
    customRemoteIdentities = registerOutput<MagicWanIpsecTunnelCustomRemoteIdentities?>('customRemoteIdentities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelCustomRemoteIdentities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerEndpoint = registerOutput<String?>('customerEndpoint');
    description = registerOutput<String>('description');
    healthCheck = registerOutput<MagicWanIpsecTunnelHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interfaceAddress = registerOutput<String>('interfaceAddress');
    interfaceAddress6 = registerOutput<String?>('interfaceAddress6');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    psk = registerOutput<String?>('psk', isSecret: true);
    pskMetadata = registerOutput<MagicWanIpsecTunnelPskMetadata>('pskMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanIpsecTunnelPskMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replayProtection = registerOutput<bool>('replayProtection');
  }
}
