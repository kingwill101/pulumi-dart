import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_network_hostname_route_args.dart';
import 'zero_trust_network_hostname_route_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare One Networks Read`
/// - `Cloudflare One Networks Write`
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
/// const exampleZeroTrustNetworkHostnameRoute = new cloudflare.ZeroTrustNetworkHostnameRoute("example_zero_trust_network_hostname_route", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     comment: "example comment",
///     hostname: "office-1.local",
///     tunnelId: "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_network_hostname_route = cloudflare.ZeroTrustNetworkHostnameRoute("example_zero_trust_network_hostname_route",
///     account_id="699d98642c564d2e855e9661899b7252",
///     comment="example comment",
///     hostname="office-1.local",
///     tunnel_id="f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustNetworkHostnameRoute = new Cloudflare.ZeroTrustNetworkHostnameRoute("example_zero_trust_network_hostname_route", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Comment = "example comment",
///         Hostname = "office-1.local",
///         TunnelId = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
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
/// 		_, err := cloudflare.NewZeroTrustNetworkHostnameRoute(ctx, "example_zero_trust_network_hostname_route", &cloudflare.ZeroTrustNetworkHostnameRouteArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Comment:   pulumi.String("example comment"),
/// 			Hostname:  pulumi.String("office-1.local"),
/// 			TunnelId:  pulumi.String("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
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
/// resource "cloudflare_zerotrustnetworkhostnameroute" "example_zero_trust_network_hostname_route" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   comment    = "example comment"
///   hostname   = "office-1.local"
///   tunnel_id  = "f70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustNetworkHostnameRoute;
/// import com.pulumi.cloudflare.ZeroTrustNetworkHostnameRouteArgs;
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
///         var exampleZeroTrustNetworkHostnameRoute = new ZeroTrustNetworkHostnameRoute("exampleZeroTrustNetworkHostnameRoute", ZeroTrustNetworkHostnameRouteArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .comment("example comment")
///             .hostname("office-1.local")
///             .tunnelId("f70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustNetworkHostnameRoute:
///     type: cloudflare:ZeroTrustNetworkHostnameRoute
///     name: example_zero_trust_network_hostname_route
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       comment: example comment
///       hostname: office-1.local
///       tunnelId: f70ff985-a4ef-4643-bbbc-4a0ed4fc8415
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustNetworkHostnameRoute:ZeroTrustNetworkHostnameRoute example '<account_id>/<hostname_route_id>'
/// ```
class ZeroTrustNetworkHostnameRoute extends pulumi.CustomResource {
  /// Cloudflare account ID
  late final pulumi.Output<String> accountId;
  /// An optional description of the hostname route.
  late final pulumi.Output<String?> comment;
  /// Timestamp of when the resource was created.
  late final pulumi.Output<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  late final pulumi.Output<String> deletedAt;
  /// The hostname of the route.
  late final pulumi.Output<String?> hostname;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  late final pulumi.Output<String> tunType;
  /// UUID of the tunnel.
  late final pulumi.Output<String?> tunnelId;
  /// A user-friendly name for a tunnel.
  late final pulumi.Output<String> tunnelName;

  /// Creates a new [ZeroTrustNetworkHostnameRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustNetworkHostnameRoute]. {@macro pulumi_index_zero_trust_network_hostname_route_zero_trust_network_hostname_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustNetworkHostnameRoute(
    String name, {
    ZeroTrustNetworkHostnameRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustNetworkHostnameRoute:ZeroTrustNetworkHostnameRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    hostname = registerOutput<String?>('hostname');
    tunType = registerOutput<String>('tunType');
    tunnelId = registerOutput<String?>('tunnelId');
    tunnelName = registerOutput<String>('tunnelName');
  }

  /// Gets an existing [ZeroTrustNetworkHostnameRoute] resource's state with the given [name] and [id].
  static ZeroTrustNetworkHostnameRoute get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustNetworkHostnameRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustNetworkHostnameRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustNetworkHostnameRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustNetworkHostnameRoute:ZeroTrustNetworkHostnameRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    hostname = registerOutput<String?>('hostname');
    tunType = registerOutput<String>('tunType');
    tunnelId = registerOutput<String?>('tunnelId');
    tunnelName = registerOutput<String>('tunnelName');
  }

  /// Creates a typed reference to an existing [ZeroTrustNetworkHostnameRoute] resource.
  ZeroTrustNetworkHostnameRoute.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustNetworkHostnameRoute:ZeroTrustNetworkHostnameRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    hostname = registerOutput<String?>('hostname');
    tunType = registerOutput<String>('tunType');
    tunnelId = registerOutput<String?>('tunnelId');
    tunnelName = registerOutput<String>('tunnelName');
  }
}
