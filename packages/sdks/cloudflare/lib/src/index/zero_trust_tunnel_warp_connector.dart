import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_warp_connector_args.dart';
import 'zero_trust_tunnel_warp_connector_connection.dart';
import 'zero_trust_tunnel_warp_connector_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read`
/// - `Cloudflare One Connector: WARP Write`
/// - `Cloudflare One Connectors Read`
/// - `Cloudflare One Connectors Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustTunnelWarpConnector = new cloudflare.ZeroTrustTunnelWarpConnector("example_zero_trust_tunnel_warp_connector", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "blog",
///     ha: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_warp_connector = cloudflare.ZeroTrustTunnelWarpConnector("example_zero_trust_tunnel_warp_connector",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="blog",
///     ha=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelWarpConnector = new Cloudflare.ZeroTrustTunnelWarpConnector("example_zero_trust_tunnel_warp_connector", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "blog",
///         Ha = true,
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
/// 		_, err := cloudflare.NewZeroTrustTunnelWarpConnector(ctx, "example_zero_trust_tunnel_warp_connector", &cloudflare.ZeroTrustTunnelWarpConnectorArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:      pulumi.String("blog"),
/// 			Ha:        pulumi.Bool(true),
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
/// resource "cloudflare_zerotrusttunnelwarpconnector" "example_zero_trust_tunnel_warp_connector" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   name       = "blog"
///   ha         = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelWarpConnector;
/// import com.pulumi.cloudflare.ZeroTrustTunnelWarpConnectorArgs;
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
///         var exampleZeroTrustTunnelWarpConnector = new ZeroTrustTunnelWarpConnector("exampleZeroTrustTunnelWarpConnector", ZeroTrustTunnelWarpConnectorArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("blog")
///             .ha(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelWarpConnector:
///     type: cloudflare:ZeroTrustTunnelWarpConnector
///     name: example_zero_trust_tunnel_warp_connector
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: blog
///       ha: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustTunnelWarpConnector:ZeroTrustTunnelWarpConnector example '<account_id>/<tunnel_id>'
/// ```
class ZeroTrustTunnelWarpConnector extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// Cloudflare account ID
  late final pulumi.Output<String> accountTag;
  /// The Cloudflare Tunnel connections between your origin and Cloudflare's edge.
  late final pulumi.Output<List<ZeroTrustTunnelWarpConnectorConnection>> connections;
  /// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
  late final pulumi.Output<String> connsActiveAt;
  /// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
  late final pulumi.Output<String> connsInactiveAt;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// Indicates that the tunnel will be created to be highly available. If omitted, defaults to false.
  late final pulumi.Output<bool> ha;
  /// Metadata associated with the tunnel.
  late final pulumi.Output<String> metadata;
  /// A user-friendly name for a tunnel.
  late final pulumi.Output<String> name;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  late final pulumi.Output<String> status;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  late final pulumi.Output<String> tunType;
  /// Sets the password required to run a locally-managed tunnel. Must be at least 32 bytes and encoded as a base64 string.
  late final pulumi.Output<String?> tunnelSecret;

  /// Creates a new [ZeroTrustTunnelWarpConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustTunnelWarpConnector]. {@macro pulumi_index_zero_trust_tunnel_warp_connector_zero_trust_tunnel_warp_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustTunnelWarpConnector(
    String name, {
    ZeroTrustTunnelWarpConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelWarpConnector:ZeroTrustTunnelWarpConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['tunnelSecret'],
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    connections = registerOutput<List<ZeroTrustTunnelWarpConnectorConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelWarpConnectorConnection>(guardedValue, (value) => ZeroTrustTunnelWarpConnectorConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    ha = registerOutput<bool>('ha');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }

  /// Gets an existing [ZeroTrustTunnelWarpConnector] resource's state with the given [name] and [id].
  static ZeroTrustTunnelWarpConnector get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustTunnelWarpConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustTunnelWarpConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustTunnelWarpConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelWarpConnector:ZeroTrustTunnelWarpConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    connections = registerOutput<List<ZeroTrustTunnelWarpConnectorConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelWarpConnectorConnection>(guardedValue, (value) => ZeroTrustTunnelWarpConnectorConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    ha = registerOutput<bool>('ha');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }

  /// Creates a typed reference to an existing [ZeroTrustTunnelWarpConnector] resource.
  ZeroTrustTunnelWarpConnector.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustTunnelWarpConnector:ZeroTrustTunnelWarpConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tunnelSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    accountTag = registerOutput<String>('accountTag');
    connections = registerOutput<List<ZeroTrustTunnelWarpConnectorConnection>>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustTunnelWarpConnectorConnection>(guardedValue, (value) => ZeroTrustTunnelWarpConnectorConnection.fromMap((value as Map).cast<String, dynamic>())); });
    connsActiveAt = registerOutput<String>('connsActiveAt');
    connsInactiveAt = registerOutput<String>('connsInactiveAt');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    ha = registerOutput<bool>('ha');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tunType = registerOutput<String>('tunType');
    tunnelSecret = registerOutput<String?>('tunnelSecret', isSecret: true);
  }
}
