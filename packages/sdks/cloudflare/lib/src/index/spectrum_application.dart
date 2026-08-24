import 'package:pulumi/pulumi.dart' as pulumi;
import 'spectrum_application_args.dart';
import 'spectrum_application_dns.dart';
import 'spectrum_application_edge_ips.dart';
import 'spectrum_application_origin_dns.dart';
import 'spectrum_application_state.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSpectrumApplication = new cloudflare.SpectrumApplication("example_spectrum_application", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     dns: {
///         name: "ssh.example.com",
///         type: "CNAME",
///     },
///     protocol: "tcp/22",
///     trafficType: "direct",
///     argoSmartRouting: true,
///     edgeIps: {
///         connectivity: "all",
///         type: "dynamic",
///     },
///     ipFirewall: false,
///     originDirects: ["tcp://127.0.0.1:8080"],
///     originDns: {
///         name: "origin.example.com",
///         ttl: 600,
///         type: "",
///     },
///     originPort: 22,
///     proxyProtocol: "off",
///     tls: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_spectrum_application = cloudflare.SpectrumApplication("example_spectrum_application",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     dns={
///         "name": "ssh.example.com",
///         "type": "CNAME",
///     },
///     protocol="tcp/22",
///     traffic_type="direct",
///     argo_smart_routing=True,
///     edge_ips={
///         "connectivity": "all",
///         "type": "dynamic",
///     },
///     ip_firewall=False,
///     origin_directs=["tcp://127.0.0.1:8080"],
///     origin_dns={
///         "name": "origin.example.com",
///         "ttl": 600,
///         "type": "",
///     },
///     origin_port=22,
///     proxy_protocol="off",
///     tls="off")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSpectrumApplication = new Cloudflare.SpectrumApplication("example_spectrum_application", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Dns = new Cloudflare.Inputs.SpectrumApplicationDnsArgs
///         {
///             Name = "ssh.example.com",
///             Type = "CNAME",
///         },
///         Protocol = "tcp/22",
///         TrafficType = "direct",
///         ArgoSmartRouting = true,
///         EdgeIps = new Cloudflare.Inputs.SpectrumApplicationEdgeIpsArgs
///         {
///             Connectivity = "all",
///             Type = "dynamic",
///         },
///         IpFirewall = false,
///         OriginDirects = new[]
///         {
///             "tcp://127.0.0.1:8080",
///         },
///         OriginDns = new Cloudflare.Inputs.SpectrumApplicationOriginDnsArgs
///         {
///             Name = "origin.example.com",
///             Ttl = 600,
///             Type = "",
///         },
///         OriginPort = 22,
///         ProxyProtocol = "off",
///         Tls = "off",
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
/// 		_, err := cloudflare.NewSpectrumApplication(ctx, "example_spectrum_application", &cloudflare.SpectrumApplicationArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Dns: &cloudflare.SpectrumApplicationDnsArgs{
/// 				Name: pulumi.String("ssh.example.com"),
/// 				Type: pulumi.String("CNAME"),
/// 			},
/// 			Protocol:         pulumi.String("tcp/22"),
/// 			TrafficType:      pulumi.String("direct"),
/// 			ArgoSmartRouting: pulumi.Bool(true),
/// 			EdgeIps: &cloudflare.SpectrumApplicationEdgeIpsArgs{
/// 				Connectivity: pulumi.String("all"),
/// 				Type:         pulumi.String("dynamic"),
/// 			},
/// 			IpFirewall: pulumi.Bool(false),
/// 			OriginDirects: pulumi.StringArray{
/// 				pulumi.String("tcp://127.0.0.1:8080"),
/// 			},
/// 			OriginDns: &cloudflare.SpectrumApplicationOriginDnsArgs{
/// 				Name: pulumi.String("origin.example.com"),
/// 				Ttl:  pulumi.Int(600),
/// 				Type: pulumi.String(""),
/// 			},
/// 			OriginPort:    pulumi.Any(22),
/// 			ProxyProtocol: pulumi.String("off"),
/// 			Tls:           pulumi.String("off"),
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
/// resource "cloudflare_spectrumapplication" "example_spectrum_application" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   dns = {
///     name = "ssh.example.com"
///     type = "CNAME"
///   }
///   protocol           = "tcp/22"
///   traffic_type       = "direct"
///   argo_smart_routing = true
///   edge_ips = {
///     connectivity = "all"
///     type         = "dynamic"
///   }
///   ip_firewall    = false
///   origin_directs = ["tcp://127.0.0.1:8080"]
///   origin_dns = {
///     name = "origin.example.com"
///     ttl  = 600
///     type = ""
///   }
///   origin_port    = 22
///   proxy_protocol = "off"
///   tls            = "off"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SpectrumApplication;
/// import com.pulumi.cloudflare.SpectrumApplicationArgs;
/// import com.pulumi.cloudflare.inputs.SpectrumApplicationDnsArgs;
/// import com.pulumi.cloudflare.inputs.SpectrumApplicationEdgeIpsArgs;
/// import com.pulumi.cloudflare.inputs.SpectrumApplicationOriginDnsArgs;
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
///         var exampleSpectrumApplication = new SpectrumApplication("exampleSpectrumApplication", SpectrumApplicationArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .dns(SpectrumApplicationDnsArgs.builder()
///                 .name("ssh.example.com")
///                 .type("CNAME")
///                 .build())
///             .protocol("tcp/22")
///             .trafficType("direct")
///             .argoSmartRouting(true)
///             .edgeIps(SpectrumApplicationEdgeIpsArgs.builder()
///                 .connectivity("all")
///                 .type("dynamic")
///                 .build())
///             .ipFirewall(false)
///             .originDirects("tcp://127.0.0.1:8080")
///             .originDns(SpectrumApplicationOriginDnsArgs.builder()
///                 .name("origin.example.com")
///                 .ttl(600)
///                 .type("")
///                 .build())
///             .originPort(22)
///             .proxyProtocol("off")
///             .tls("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSpectrumApplication:
///     type: cloudflare:SpectrumApplication
///     name: example_spectrum_application
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       dns:
///         name: ssh.example.com
///         type: CNAME
///       protocol: tcp/22
///       trafficType: direct
///       argoSmartRouting: true
///       edgeIps:
///         connectivity: all
///         type: dynamic
///       ipFirewall: false
///       originDirects:
///         - tcp://127.0.0.1:8080
///       originDns:
///         name: origin.example.com
///         ttl: 600
///         type: ""
///       originPort: 22
///       proxyProtocol: off
///       tls: off
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/spectrumApplication:SpectrumApplication example '<zone_id>/<app_id>'
/// ```
class SpectrumApplication extends pulumi.CustomResource {
  /// Enables Argo Smart Routing for this application.
  /// Notes: Only available for TCP applications with trafficType set to "direct".
  late final pulumi.Output<bool> argoSmartRouting;
  /// When the Application was created.
  late final pulumi.Output<String> createdOn;
  /// The name and type of DNS record for the Spectrum application.
  late final pulumi.Output<SpectrumApplicationDns> dns;
  /// The anycast edge IP configuration for the hostname of this application.
  late final pulumi.Output<SpectrumApplicationEdgeIps> edgeIps;
  /// Enables IP Access Rules for this application.
  /// Notes: Only available for TCP applications.
  late final pulumi.Output<bool> ipFirewall;
  /// When the Application was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  late final pulumi.Output<List<String>?> originDirects;
  /// The name and type of DNS record for the Spectrum application.
  late final pulumi.Output<SpectrumApplicationOriginDns?> originDns;
  /// The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// Notes: If specifying a port range, the number of ports in the range must match the number of ports specified in the "protocol" field.
  late final pulumi.Output<dynamic> originPort;
  /// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  late final pulumi.Output<String> protocol;
  /// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// Available values: "off", "v1", "v2", "simple".
  late final pulumi.Output<String> proxyProtocol;
  /// The type of TLS termination associated with the application.
  /// Available values: "off", "flexible", "full", "strict".
  late final pulumi.Output<String> tls;
  /// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// Available values: "direct", "http", "https".
  late final pulumi.Output<String> trafficType;
  /// Optional UUID of a virtual network for routing origin traffic through tunnel virtual networks.
  late final pulumi.Output<String?> virtualNetworkId;
  /// Zone identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [SpectrumApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpectrumApplication]. {@macro pulumi_index_spectrum_application_spectrum_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpectrumApplication(
    String name, {
    SpectrumApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/spectrumApplication:SpectrumApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    argoSmartRouting = registerOutput<bool>('argoSmartRouting');
    createdOn = registerOutput<String>('createdOn');
    dns = registerOutput<SpectrumApplicationDns>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    edgeIps = registerOutput<SpectrumApplicationEdgeIps>('edgeIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationEdgeIps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFirewall = registerOutput<bool>('ipFirewall');
    modifiedOn = registerOutput<String>('modifiedOn');
    originDirects = registerOutput<List<String>?>('originDirects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originDns = registerOutput<SpectrumApplicationOriginDns?>('originDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationOriginDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originPort = registerOutput<dynamic>('originPort');
    protocol = registerOutput<String>('protocol');
    proxyProtocol = registerOutput<String>('proxyProtocol');
    tls = registerOutput<String>('tls');
    trafficType = registerOutput<String>('trafficType');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [SpectrumApplication] resource's state with the given [name] and [id].
  static SpectrumApplication get(
    String name,
    pulumi.Input<String> id, {
    SpectrumApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpectrumApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpectrumApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/spectrumApplication:SpectrumApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    argoSmartRouting = registerOutput<bool>('argoSmartRouting');
    createdOn = registerOutput<String>('createdOn');
    dns = registerOutput<SpectrumApplicationDns>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    edgeIps = registerOutput<SpectrumApplicationEdgeIps>('edgeIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationEdgeIps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFirewall = registerOutput<bool>('ipFirewall');
    modifiedOn = registerOutput<String>('modifiedOn');
    originDirects = registerOutput<List<String>?>('originDirects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originDns = registerOutput<SpectrumApplicationOriginDns?>('originDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationOriginDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originPort = registerOutput<dynamic>('originPort');
    protocol = registerOutput<String>('protocol');
    proxyProtocol = registerOutput<String>('proxyProtocol');
    tls = registerOutput<String>('tls');
    trafficType = registerOutput<String>('trafficType');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [SpectrumApplication] resource.
  SpectrumApplication.reference(String urn)
    : super(
        'cloudflare:index/spectrumApplication:SpectrumApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    argoSmartRouting = registerOutput<bool>('argoSmartRouting');
    createdOn = registerOutput<String>('createdOn');
    dns = registerOutput<SpectrumApplicationDns>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    edgeIps = registerOutput<SpectrumApplicationEdgeIps>('edgeIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationEdgeIps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFirewall = registerOutput<bool>('ipFirewall');
    modifiedOn = registerOutput<String>('modifiedOn');
    originDirects = registerOutput<List<String>?>('originDirects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originDns = registerOutput<SpectrumApplicationOriginDns?>('originDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpectrumApplicationOriginDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originPort = registerOutput<dynamic>('originPort');
    protocol = registerOutput<String>('protocol');
    proxyProtocol = registerOutput<String>('proxyProtocol');
    tls = registerOutput<String>('tls');
    trafficType = registerOutput<String>('trafficType');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    zoneId = registerOutput<String>('zoneId');
  }
}
