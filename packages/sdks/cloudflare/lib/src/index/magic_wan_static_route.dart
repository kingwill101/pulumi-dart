import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_static_route_args.dart';
import 'magic_wan_static_route_scope.dart';
import 'magic_wan_static_route_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicWanStaticRoute = new cloudflare.MagicWanStaticRoute("example_magic_wan_static_route", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     nexthop: "203.0.113.1",
///     prefix: "192.0.2.0/24",
///     priority: 0,
///     description: "New route for new prefix 203.0.113.1",
///     scope: {
///         coloNames: ["den01"],
///         coloRegions: ["APAC"],
///     },
///     weight: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_wan_static_route = cloudflare.MagicWanStaticRoute("example_magic_wan_static_route",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     nexthop="203.0.113.1",
///     prefix="192.0.2.0/24",
///     priority=0,
///     description="New route for new prefix 203.0.113.1",
///     scope={
///         "colo_names": ["den01"],
///         "colo_regions": ["APAC"],
///     },
///     weight=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicWanStaticRoute = new Cloudflare.MagicWanStaticRoute("example_magic_wan_static_route", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Nexthop = "203.0.113.1",
///         Prefix = "192.0.2.0/24",
///         Priority = 0,
///         Description = "New route for new prefix 203.0.113.1",
///         Scope = new Cloudflare.Inputs.MagicWanStaticRouteScopeArgs
///         {
///             ColoNames = new[]
///             {
///                 "den01",
///             },
///             ColoRegions = new[]
///             {
///                 "APAC",
///             },
///         },
///         Weight = 0,
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
/// 		_, err := cloudflare.NewMagicWanStaticRoute(ctx, "example_magic_wan_static_route", &cloudflare.MagicWanStaticRouteArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Nexthop:     pulumi.String("203.0.113.1"),
/// 			Prefix:      pulumi.String("192.0.2.0/24"),
/// 			Priority:    pulumi.Int(0),
/// 			Description: pulumi.String("New route for new prefix 203.0.113.1"),
/// 			Scope: &cloudflare.MagicWanStaticRouteScopeArgs{
/// 				ColoNames: pulumi.StringArray{
/// 					pulumi.String("den01"),
/// 				},
/// 				ColoRegions: pulumi.StringArray{
/// 					pulumi.String("APAC"),
/// 				},
/// 			},
/// 			Weight: pulumi.Int(0),
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
/// resource "cloudflare_magicwanstaticroute" "example_magic_wan_static_route" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   nexthop     = "203.0.113.1"
///   prefix      = "192.0.2.0/24"
///   priority    = 0
///   description = "New route for new prefix 203.0.113.1"
///   scope = {
///     colo_names   = ["den01"]
///     colo_regions = ["APAC"]
///   }
///   weight = 0
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicWanStaticRoute;
/// import com.pulumi.cloudflare.MagicWanStaticRouteArgs;
/// import com.pulumi.cloudflare.inputs.MagicWanStaticRouteScopeArgs;
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
///         var exampleMagicWanStaticRoute = new MagicWanStaticRoute("exampleMagicWanStaticRoute", MagicWanStaticRouteArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .nexthop("203.0.113.1")
///             .prefix("192.0.2.0/24")
///             .priority(0)
///             .description("New route for new prefix 203.0.113.1")
///             .scope(MagicWanStaticRouteScopeArgs.builder()
///                 .coloNames("den01")
///                 .coloRegions("APAC")
///                 .build())
///             .weight(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicWanStaticRoute:
///     type: cloudflare:MagicWanStaticRoute
///     name: example_magic_wan_static_route
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       nexthop: 203.0.113.1
///       prefix: 192.0.2.0/24
///       priority: 0
///       description: New route for new prefix 203.0.113.1
///       scope:
///         coloNames:
///           - den01
///         coloRegions:
///           - APAC
///       weight: 0
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicWanStaticRoute:MagicWanStaticRoute example '<account_id>/<route_id>'
/// ```
class MagicWanStaticRoute extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// When the route was created.
  late final pulumi.Output<String> createdOn;
  /// An optional human provided description of the static route.
  late final pulumi.Output<String> description;
  /// When the route was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The next-hop IP Address for the static route.
  late final pulumi.Output<String> nexthop;
  /// IP Prefix in Classless Inter-Domain Routing format.
  late final pulumi.Output<String> prefix;
  /// Priority of the static route.
  late final pulumi.Output<int> priority;
  /// Used only for ECMP routes.
  late final pulumi.Output<MagicWanStaticRouteScope?> scope;
  /// Optional weight of the ECMP scope - if provided.
  late final pulumi.Output<int?> weight;

  /// Creates a new [MagicWanStaticRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicWanStaticRoute]. {@macro pulumi_index_magic_wan_static_route_magic_wan_static_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicWanStaticRoute(
    String name, {
    MagicWanStaticRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanStaticRoute:MagicWanStaticRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    nexthop = registerOutput<String>('nexthop');
    prefix = registerOutput<String>('prefix');
    priority = registerOutput<int>('priority');
    scope = registerOutput<MagicWanStaticRouteScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanStaticRouteScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [MagicWanStaticRoute] resource's state with the given [name] and [id].
  static MagicWanStaticRoute get(
    String name,
    pulumi.Input<String> id, {
    MagicWanStaticRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicWanStaticRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicWanStaticRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanStaticRoute:MagicWanStaticRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    nexthop = registerOutput<String>('nexthop');
    prefix = registerOutput<String>('prefix');
    priority = registerOutput<int>('priority');
    scope = registerOutput<MagicWanStaticRouteScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanStaticRouteScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }

  /// Creates a typed reference to an existing [MagicWanStaticRoute] resource.
  MagicWanStaticRoute.reference(String urn)
    : super(
        'cloudflare:index/magicWanStaticRoute:MagicWanStaticRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    nexthop = registerOutput<String>('nexthop');
    prefix = registerOutput<String>('prefix');
    priority = registerOutput<int>('priority');
    scope = registerOutput<MagicWanStaticRouteScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicWanStaticRouteScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weight = registerOutput<int?>('weight');
  }
}
