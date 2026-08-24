import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_cloudflared_config_args.dart';
import 'zero_trust_tunnel_cloudflared_config_config.dart';
import 'zero_trust_tunnel_cloudflared_config_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read`
/// - `Cloudflare One Connector: cloudflared Write`
/// - `Cloudflare One Connectors Read`
/// - `Cloudflare One Connectors Write`
/// - `Cloudflare Tunnel Read`
/// - `Cloudflare Tunnel Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustTunnelCloudflaredConfig = new cloudflare.ZeroTrustTunnelCloudflaredConfig("example_zero_trust_tunnel_cloudflared_config", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     tunnelId: "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     config: {
///         ingresses: [{
///             hostname: "tunnel.example.com",
///             service: "https://localhost:8001",
///             originRequest: {
///                 access: {
///                     audTag: ["string"],
///                     teamName: "zero-trust-organization-name",
///                     required: false,
///                 },
///                 caPool: "caPool",
///                 connectTimeout: 10,
///                 disableChunkedEncoding: true,
///                 http2Origin: true,
///                 httpHostHeader: "httpHostHeader",
///                 keepAliveConnections: 100,
///                 keepAliveTimeout: 90,
///                 matchSnItoHost: false,
///                 noHappyEyeballs: false,
///                 noTlsVerify: false,
///                 originServerName: "originServerName",
///                 proxyType: "proxyType",
///                 tcpKeepAlive: 30,
///                 tlsTimeout: 10,
///             },
///             path: "subpath",
///         }],
///         originRequest: {
///             access: {
///                 audTags: ["string"],
///                 teamName: "zero-trust-organization-name",
///                 required: false,
///             },
///             caPool: "caPool",
///             connectTimeout: 10,
///             disableChunkedEncoding: true,
///             http2Origin: true,
///             httpHostHeader: "httpHostHeader",
///             keepAliveConnections: 100,
///             keepAliveTimeout: 90,
///             matchSnItoHost: false,
///             noHappyEyeballs: false,
///             noTlsVerify: false,
///             originServerName: "originServerName",
///             proxyType: "proxyType",
///             tcpKeepAlive: 30,
///             tlsTimeout: 10,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_cloudflared_config = cloudflare.ZeroTrustTunnelCloudflaredConfig("example_zero_trust_tunnel_cloudflared_config",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     tunnel_id="f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     config={
///         "ingresses": [{
///             "hostname": "tunnel.example.com",
///             "service": "https://localhost:8001",
///             "origin_request": {
///                 "access": {
///                     "aud_tag": ["string"],
///                     "team_name": "zero-trust-organization-name",
///                     "required": False,
///                 },
///                 "ca_pool": "caPool",
///                 "connect_timeout": 10,
///                 "disable_chunked_encoding": True,
///                 "http2_origin": True,
///                 "http_host_header": "httpHostHeader",
///                 "keep_alive_connections": 100,
///                 "keep_alive_timeout": 90,
///                 "match_sn_ito_host": False,
///                 "no_happy_eyeballs": False,
///                 "no_tls_verify": False,
///                 "origin_server_name": "originServerName",
///                 "proxy_type": "proxyType",
///                 "tcp_keep_alive": 30,
///                 "tls_timeout": 10,
///             },
///             "path": "subpath",
///         }],
///         "origin_request": {
///             "access": {
///                 "aud_tags": ["string"],
///                 "team_name": "zero-trust-organization-name",
///                 "required": False,
///             },
///             "ca_pool": "caPool",
///             "connect_timeout": 10,
///             "disable_chunked_encoding": True,
///             "http2_origin": True,
///             "http_host_header": "httpHostHeader",
///             "keep_alive_connections": 100,
///             "keep_alive_timeout": 90,
///             "match_sn_ito_host": False,
///             "no_happy_eyeballs": False,
///             "no_tls_verify": False,
///             "origin_server_name": "originServerName",
///             "proxy_type": "proxyType",
///             "tcp_keep_alive": 30,
///             "tls_timeout": 10,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelCloudflaredConfig = new Cloudflare.ZeroTrustTunnelCloudflaredConfig("example_zero_trust_tunnel_cloudflared_config", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         TunnelId = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///         Config = new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigArgs
///         {
///             Ingresses = new[]
///             {
///                 new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressArgs
///                 {
///                     Hostname = "tunnel.example.com",
///                     Service = "https://localhost:8001",
///                     OriginRequest = new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestArgs
///                     {
///                         Access = new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccessArgs
///                         {
///                             AudTag = new[]
///                             {
///                                 "string",
///                             },
///                             TeamName = "zero-trust-organization-name",
///                             Required = false,
///                         },
///                         CaPool = "caPool",
///                         ConnectTimeout = 10,
///                         DisableChunkedEncoding = true,
///                         Http2Origin = true,
///                         HttpHostHeader = "httpHostHeader",
///                         KeepAliveConnections = 100,
///                         KeepAliveTimeout = 90,
///                         MatchSnItoHost = false,
///                         NoHappyEyeballs = false,
///                         NoTlsVerify = false,
///                         OriginServerName = "originServerName",
///                         ProxyType = "proxyType",
///                         TcpKeepAlive = 30,
///                         TlsTimeout = 10,
///                     },
///                     Path = "subpath",
///                 },
///             },
///             OriginRequest = new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestArgs
///             {
///                 Access = new Cloudflare.Inputs.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccessArgs
///                 {
///                     AudTags = new[]
///                     {
///                         "string",
///                     },
///                     TeamName = "zero-trust-organization-name",
///                     Required = false,
///                 },
///                 CaPool = "caPool",
///                 ConnectTimeout = 10,
///                 DisableChunkedEncoding = true,
///                 Http2Origin = true,
///                 HttpHostHeader = "httpHostHeader",
///                 KeepAliveConnections = 100,
///                 KeepAliveTimeout = 90,
///                 MatchSnItoHost = false,
///                 NoHappyEyeballs = false,
///                 NoTlsVerify = false,
///                 OriginServerName = "originServerName",
///                 ProxyType = "proxyType",
///                 TcpKeepAlive = 30,
///                 TlsTimeout = 10,
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZeroTrustTunnelCloudflaredConfig(ctx, "example_zero_trust_tunnel_cloudflared_config", &cloudflare.ZeroTrustTunnelCloudflaredConfigArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			TunnelId:  pulumi.String("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
/// 			Config: &cloudflare.ZeroTrustTunnelCloudflaredConfigConfigArgs{
/// 				Ingresses: cloudflare.ZeroTrustTunnelCloudflaredConfigConfigIngressArray{
/// 					&cloudflare.ZeroTrustTunnelCloudflaredConfigConfigIngressArgs{
/// 						Hostname: pulumi.String("tunnel.example.com"),
/// 						Service:  pulumi.String("https://localhost:8001"),
/// 						OriginRequest: &cloudflare.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestArgs{
/// 							Access: &cloudflare.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccessArgs{
/// 								AudTag: []string{
/// 									"string",
/// 								},
/// 								TeamName: pulumi.String("zero-trust-organization-name"),
/// 								Required: pulumi.Bool(false),
/// 							},
/// 							CaPool:                 pulumi.String("caPool"),
/// 							ConnectTimeout:         pulumi.Int(10),
/// 							DisableChunkedEncoding: pulumi.Bool(true),
/// 							Http2Origin:            pulumi.Bool(true),
/// 							HttpHostHeader:         pulumi.String("httpHostHeader"),
/// 							KeepAliveConnections:   pulumi.Int(100),
/// 							KeepAliveTimeout:       pulumi.Int(90),
/// 							MatchSnItoHost:         pulumi.Bool(false),
/// 							NoHappyEyeballs:        pulumi.Bool(false),
/// 							NoTlsVerify:            pulumi.Bool(false),
/// 							OriginServerName:       pulumi.String("originServerName"),
/// 							ProxyType:              pulumi.String("proxyType"),
/// 							TcpKeepAlive:           pulumi.Int(30),
/// 							TlsTimeout:             pulumi.Int(10),
/// 						},
/// 						Path: pulumi.String("subpath"),
/// 					},
/// 				},
/// 				OriginRequest: &cloudflare.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestArgs{
/// 					Access: &cloudflare.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccessArgs{
/// 						AudTags: pulumi.StringArray{
/// 							pulumi.String("string"),
/// 						},
/// 						TeamName: pulumi.String("zero-trust-organization-name"),
/// 						Required: pulumi.Bool(false),
/// 					},
/// 					CaPool:                 pulumi.String("caPool"),
/// 					ConnectTimeout:         pulumi.Int(10),
/// 					DisableChunkedEncoding: pulumi.Bool(true),
/// 					Http2Origin:            pulumi.Bool(true),
/// 					HttpHostHeader:         pulumi.String("httpHostHeader"),
/// 					KeepAliveConnections:   pulumi.Int(100),
/// 					KeepAliveTimeout:       pulumi.Int(90),
/// 					MatchSnItoHost:         pulumi.Bool(false),
/// 					NoHappyEyeballs:        pulumi.Bool(false),
/// 					NoTlsVerify:            pulumi.Bool(false),
/// 					OriginServerName:       pulumi.String("originServerName"),
/// 					ProxyType:              pulumi.String("proxyType"),
/// 					TcpKeepAlive:           pulumi.Int(30),
/// 					TlsTimeout:             pulumi.Int(10),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrusttunnelcloudflaredconfig" "example_zero_trust_tunnel_cloudflared_config" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   tunnel_id  = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
///   config = {
///     ingresses = [{
///       "hostname" = "tunnel.example.com"
///       "service"  = "https://localhost:8001"
///       "originRequest" = {
///         "access" = {
///           "audTag"   = ["string"]
///           "teamName" = "zero-trust-organization-name"
///           "required" = false
///         }
///         "caPool"                 = "caPool"
///         "connectTimeout"         = 10
///         "disableChunkedEncoding" = true
///         "http2Origin"            = true
///         "httpHostHeader"         = "httpHostHeader"
///         "keepAliveConnections"   = 100
///         "keepAliveTimeout"       = 90
///         "matchSnItoHost"         = false
///         "noHappyEyeballs"        = false
///         "noTlsVerify"            = false
///         "originServerName"       = "originServerName"
///         "proxyType"              = "proxyType"
///         "tcpKeepAlive"           = 30
///         "tlsTimeout"             = 10
///       }
///       "path" = "subpath"
///     }]
///     origin_request = {
///       access = {
///         aud_tags  = ["string"]
///         team_name = "zero-trust-organization-name"
///         required  = false
///       }
///       ca_pool                  = "caPool"
///       connect_timeout          = 10
///       disable_chunked_encoding = true
///       http2_origin             = true
///       http_host_header         = "httpHostHeader"
///       keep_alive_connections   = 100
///       keep_alive_timeout       = 90
///       match_sn_ito_host        = false
///       no_happy_eyeballs        = false
///       no_tls_verify            = false
///       origin_server_name       = "originServerName"
///       proxy_type               = "proxyType"
///       tcp_keep_alive           = 30
///       tls_timeout              = 10
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredConfig;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccessArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccessArgs;
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
///         var exampleZeroTrustTunnelCloudflaredConfig = new ZeroTrustTunnelCloudflaredConfig("exampleZeroTrustTunnelCloudflaredConfig", ZeroTrustTunnelCloudflaredConfigArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .tunnelId("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .config(ZeroTrustTunnelCloudflaredConfigConfigArgs.builder()
///                 .ingresses(ZeroTrustTunnelCloudflaredConfigConfigIngressArgs.builder()
///                     .hostname("tunnel.example.com")
///                     .service("https://localhost:8001")
///                     .originRequest(ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestArgs.builder()
///                         .access(ZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccessArgs.builder()
///                             .audTag(Arrays.asList("string"))
///                             .teamName("zero-trust-organization-name")
///                             .required(false)
///                             .build())
///                         .caPool("caPool")
///                         .connectTimeout(10)
///                         .disableChunkedEncoding(true)
///                         .http2Origin(true)
///                         .httpHostHeader("httpHostHeader")
///                         .keepAliveConnections(100)
///                         .keepAliveTimeout(90)
///                         .matchSnItoHost(false)
///                         .noHappyEyeballs(false)
///                         .noTlsVerify(false)
///                         .originServerName("originServerName")
///                         .proxyType("proxyType")
///                         .tcpKeepAlive(30)
///                         .tlsTimeout(10)
///                         .build())
///                     .path("subpath")
///                     .build())
///                 .originRequest(ZeroTrustTunnelCloudflaredConfigConfigOriginRequestArgs.builder()
///                     .access(ZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccessArgs.builder()
///                         .audTags("string")
///                         .teamName("zero-trust-organization-name")
///                         .required(false)
///                         .build())
///                     .caPool("caPool")
///                     .connectTimeout(10)
///                     .disableChunkedEncoding(true)
///                     .http2Origin(true)
///                     .httpHostHeader("httpHostHeader")
///                     .keepAliveConnections(100)
///                     .keepAliveTimeout(90)
///                     .matchSnItoHost(false)
///                     .noHappyEyeballs(false)
///                     .noTlsVerify(false)
///                     .originServerName("originServerName")
///                     .proxyType("proxyType")
///                     .tcpKeepAlive(30)
///                     .tlsTimeout(10)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelCloudflaredConfig:
///     type: cloudflare:ZeroTrustTunnelCloudflaredConfig
///     name: example_zero_trust_tunnel_cloudflared_config
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       tunnelId: f70ff985-a4ef-4643-bbbc-4a0ed4fc8415
///       config:
///         ingresses:
///           - hostname: tunnel.example.com
///             service: https://localhost:8001
///             originRequest:
///               access:
///                 audTag:
///                   - string
///                 teamName: zero-trust-organization-name
///                 required: false
///               caPool: caPool
///               connectTimeout: 10
///               disableChunkedEncoding: true
///               http2Origin: true
///               httpHostHeader: httpHostHeader
///               keepAliveConnections: 100
///               keepAliveTimeout: 90
///               matchSnItoHost: false
///               noHappyEyeballs: false
///               noTlsVerify: false
///               originServerName: originServerName
///               proxyType: proxyType
///               tcpKeepAlive: 30
///               tlsTimeout: 10
///             path: subpath
///         originRequest:
///           access:
///             audTags:
///               - string
///             teamName: zero-trust-organization-name
///             required: false
///           caPool: caPool
///           connectTimeout: 10
///           disableChunkedEncoding: true
///           http2Origin: true
///           httpHostHeader: httpHostHeader
///           keepAliveConnections: 100
///           keepAliveTimeout: 90
///           matchSnItoHost: false
///           noHappyEyeballs: false
///           noTlsVerify: false
///           originServerName: originServerName
///           proxyType: proxyType
///           tcpKeepAlive: 30
///           tlsTimeout: 10
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustTunnelCloudflaredConfig:ZeroTrustTunnelCloudflaredConfig example '<account_id>/<tunnel_id>'
/// ```
class ZeroTrustTunnelCloudflaredConfig extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The tunnel configuration and ingress rules.
  late final pulumi.Output<ZeroTrustTunnelCloudflaredConfigConfig> config;
  late final pulumi.Output<String> createdAt;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel's configuration on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  late final pulumi.Output<String> source;
  /// UUID of the tunnel.
  late final pulumi.Output<String> tunnelId;
  /// The version of the Tunnel Configuration.
  late final pulumi.Output<int> version;

  /// Creates a new [ZeroTrustTunnelCloudflaredConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustTunnelCloudflaredConfig]. {@macro pulumi_index_zero_trust_tunnel_cloudflared_config_zero_trust_tunnel_cloudflared_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustTunnelCloudflaredConfig(
    String name, {
    ZeroTrustTunnelCloudflaredConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflaredConfig:ZeroTrustTunnelCloudflaredConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelCloudflaredConfigConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelCloudflaredConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    source = registerOutput<String>('source');
    tunnelId = registerOutput<String>('tunnelId');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [ZeroTrustTunnelCloudflaredConfig] resource's state with the given [name] and [id].
  static ZeroTrustTunnelCloudflaredConfig get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustTunnelCloudflaredConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustTunnelCloudflaredConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustTunnelCloudflaredConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflaredConfig:ZeroTrustTunnelCloudflaredConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelCloudflaredConfigConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelCloudflaredConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    source = registerOutput<String>('source');
    tunnelId = registerOutput<String>('tunnelId');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [ZeroTrustTunnelCloudflaredConfig] resource.
  ZeroTrustTunnelCloudflaredConfig.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustTunnelCloudflaredConfig:ZeroTrustTunnelCloudflaredConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<ZeroTrustTunnelCloudflaredConfigConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustTunnelCloudflaredConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    source = registerOutput<String>('source');
    tunnelId = registerOutput<String>('tunnelId');
    version = registerOutput<int>('version');
  }
}
