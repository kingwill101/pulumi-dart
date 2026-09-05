import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_cloudflared_args.dart';
import 'zero_trust_tunnel_cloudflared_connection.dart';
import 'zero_trust_tunnel_cloudflared_state.dart';

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
/// const exampleZeroTrustTunnelCloudflared = new cloudflare.ZeroTrustTunnelCloudflared("example_zero_trust_tunnel_cloudflared", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "blog",
///     configSrc: "cloudflare",
///     tunnelSecret: "AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg=",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_cloudflared = cloudflare.ZeroTrustTunnelCloudflared("example_zero_trust_tunnel_cloudflared",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="blog",
///     config_src="cloudflare",
///     tunnel_secret="AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg=")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelCloudflared = new Cloudflare.ZeroTrustTunnelCloudflared("example_zero_trust_tunnel_cloudflared", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "blog",
///         ConfigSrc = "cloudflare",
///         TunnelSecret = "AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg=",
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
/// 		_, err := cloudflare.NewZeroTrustTunnelCloudflared(ctx, "example_zero_trust_tunnel_cloudflared", &cloudflare.ZeroTrustTunnelCloudflaredArgs{
/// 			AccountId:    pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:         pulumi.String("blog"),
/// 			ConfigSrc:    pulumi.String("cloudflare"),
/// 			TunnelSecret: pulumi.String("AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg="),
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
/// resource "cloudflare_zerotrusttunnelcloudflared" "example_zero_trust_tunnel_cloudflared" {
///   account_id    = "699d98642c564d2e855e9661899b7252"
///   name          = "blog"
///   config_src    = "cloudflare"
///   tunnel_secret = "AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg="
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflared;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredArgs;
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
///         var exampleZeroTrustTunnelCloudflared = new ZeroTrustTunnelCloudflared("exampleZeroTrustTunnelCloudflared", ZeroTrustTunnelCloudflaredArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("blog")
///             .configSrc("cloudflare")
///             .tunnelSecret("AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg=")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelCloudflared:
///     type: cloudflare:ZeroTrustTunnelCloudflared
///     name: example_zero_trust_tunnel_cloudflared
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: blog
///       configSrc: cloudflare
///       tunnelSecret: AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg=
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustTunnelCloudflared:ZeroTrustTunnelCloudflared example '<account_id>/<tunnel_id>'
/// ```
class ZeroTrustTunnelCloudflared extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// Cloudflare account ID
  late final pulumi.Output<String> accountTag;
  /// Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard.
  /// Available values: "local", "cloudflare".
  late final pulumi.Output<String> configSrc;
  /// The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  late final pulumi.Output<List<ZeroTrustTunnelCloudflaredConnection>> connections;
  /// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  late final pulumi.Output<String> connsActiveAt;
  /// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  late final pulumi.Output<String> connsInactiveAt;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// Metadata associated with the tunnel.
  late final pulumi.Output<String> metadata;
  /// A user-friendly name for a tunnel.
  late final pulumi.Output<String> name;
  /// If `true`, the tunnel can be configured remotely from the Zero Trust dashboard. If `false`, the tunnel must be configured locally on the origin machine.
  late final pulumi.Output<bool> remoteConfig;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  late final pulumi.Output<String> status;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  late final pulumi.Output<String> tunType;
  /// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  late final pulumi.Output<String?> tunnelSecret;

  /// Creates a new [ZeroTrustTunnelCloudflared].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustTunnelCloudflared]. {@macro pulumi_index_zero_trust_tunnel_cloudflared_zero_trust_tunnel_cloudflared_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustTunnelCloudflared(
    String name, {
    ZeroTrustTunnelCloudflaredArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflared:ZeroTrustTunnelCloudflared',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['tunnelSecret'],
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    configSrc = registerOutput<String>('configSrc');
    connections = registerOutput<List<ZeroTrustTunnelCloudflaredConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelCloudflaredConnection>(guardedValue, (value) => ZeroTrustTunnelCloudflaredConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    remoteConfig = registerOutput<bool>('remoteConfig');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }

  /// Gets an existing [ZeroTrustTunnelCloudflared] resource's state with the given [name] and [id].
  static ZeroTrustTunnelCloudflared get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustTunnelCloudflaredState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustTunnelCloudflared._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustTunnelCloudflared._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflared:ZeroTrustTunnelCloudflared',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    configSrc = registerOutput<String>('configSrc');
    connections = registerOutput<List<ZeroTrustTunnelCloudflaredConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelCloudflaredConnection>(guardedValue, (value) => ZeroTrustTunnelCloudflaredConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    remoteConfig = registerOutput<bool>('remoteConfig');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }

  /// Creates a typed reference to an existing [ZeroTrustTunnelCloudflared] resource.
  ZeroTrustTunnelCloudflared.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustTunnelCloudflared:ZeroTrustTunnelCloudflared',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tunnelSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    configSrc = registerOutput<String>('configSrc');
    connections = registerOutput<List<ZeroTrustTunnelCloudflaredConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelCloudflaredConnection>(guardedValue, (value) => ZeroTrustTunnelCloudflaredConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    remoteConfig = registerOutput<bool>('remoteConfig');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }
}
