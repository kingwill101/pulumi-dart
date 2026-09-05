import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_cloudflared_route_args.dart';
import 'zero_trust_tunnel_cloudflared_route_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Networks Write`
/// - `Cloudflare Tunnel Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustTunnelCloudflaredRoute = new cloudflare.ZeroTrustTunnelCloudflaredRoute("example_zero_trust_tunnel_cloudflared_route", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     network: "172.16.0.0/16",
///     tunnelId: "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     comment: "Example comment for this route.",
///     virtualNetworkId: "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_tunnel_cloudflared_route = cloudflare.ZeroTrustTunnelCloudflaredRoute("example_zero_trust_tunnel_cloudflared_route",
///     account_id="699d98642c564d2e855e9661899b7252",
///     network="172.16.0.0/16",
///     tunnel_id="f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     comment="Example comment for this route.",
///     virtual_network_id="f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustTunnelCloudflaredRoute = new Cloudflare.ZeroTrustTunnelCloudflaredRoute("example_zero_trust_tunnel_cloudflared_route", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Network = "172.16.0.0/16",
///         TunnelId = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///         Comment = "Example comment for this route.",
///         VirtualNetworkId = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
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
/// 		_, err := cloudflare.NewZeroTrustTunnelCloudflaredRoute(ctx, "example_zero_trust_tunnel_cloudflared_route", &cloudflare.ZeroTrustTunnelCloudflaredRouteArgs{
/// 			AccountId:        pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Network:          pulumi.String("172.16.0.0/16"),
/// 			TunnelId:         pulumi.String("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
/// 			Comment:          pulumi.String("Example comment for this route."),
/// 			VirtualNetworkId: pulumi.String("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
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
/// resource "cloudflare_zerotrusttunnelcloudflaredroute" "example_zero_trust_tunnel_cloudflared_route" {
///   account_id         = "699d98642c564d2e855e9661899b7252"
///   network            = "172.16.0.0/16"
///   tunnel_id          = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
///   comment            = "Example comment for this route."
///   virtual_network_id = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredRoute;
/// import com.pulumi.cloudflare.ZeroTrustTunnelCloudflaredRouteArgs;
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
///         var exampleZeroTrustTunnelCloudflaredRoute = new ZeroTrustTunnelCloudflaredRoute("exampleZeroTrustTunnelCloudflaredRoute", ZeroTrustTunnelCloudflaredRouteArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .network("172.16.0.0/16")
///             .tunnelId("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .comment("Example comment for this route.")
///             .virtualNetworkId("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustTunnelCloudflaredRoute:
///     type: cloudflare:ZeroTrustTunnelCloudflaredRoute
///     name: example_zero_trust_tunnel_cloudflared_route
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       network: 172.16.0.0/16
///       tunnelId: f70ff985-a4ef-4643-bbbc-4a0ed4fc8415
///       comment: Example comment for this route.
///       virtualNetworkId: f70ff985-a4ef-4643-bbbc-4a0ed4fc8415
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustTunnelCloudflaredRoute:ZeroTrustTunnelCloudflaredRoute example '<account_id>/<route_id>'
/// ```
class ZeroTrustTunnelCloudflaredRoute extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// Optional remark describing the route.
  late final pulumi.Output<String> comment;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  late final pulumi.Output<String> network;
  /// UUID of the tunnel.
  late final pulumi.Output<String> tunnelId;
  /// UUID of the virtual network.
  late final pulumi.Output<String> virtualNetworkId;

  /// Creates a new [ZeroTrustTunnelCloudflaredRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustTunnelCloudflaredRoute]. {@macro pulumi_index_zero_trust_tunnel_cloudflared_route_zero_trust_tunnel_cloudflared_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustTunnelCloudflaredRoute(
    String name, {
    ZeroTrustTunnelCloudflaredRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflaredRoute:ZeroTrustTunnelCloudflaredRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    network = registerOutput<String>('network');
    tunnelId = registerOutput<String>('tunnelId');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }

  /// Gets an existing [ZeroTrustTunnelCloudflaredRoute] resource's state with the given [name] and [id].
  static ZeroTrustTunnelCloudflaredRoute get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustTunnelCloudflaredRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustTunnelCloudflaredRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustTunnelCloudflaredRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustTunnelCloudflaredRoute:ZeroTrustTunnelCloudflaredRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    network = registerOutput<String>('network');
    tunnelId = registerOutput<String>('tunnelId');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }

  /// Creates a typed reference to an existing [ZeroTrustTunnelCloudflaredRoute] resource.
  ZeroTrustTunnelCloudflaredRoute.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustTunnelCloudflaredRoute:ZeroTrustTunnelCloudflaredRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    network = registerOutput<String>('network');
    tunnelId = registerOutput<String>('tunnelId');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }
}
