import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_route_args.dart';
import 'workers_route_state.dart';

/// Accepted Permissions
///
/// - `Workers Routes Read`
/// - `Workers Routes Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersRoute = new cloudflare.WorkersRoute("example_workers_route", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     pattern: "example.com/*",
///     script: "my-workers-script",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_route = cloudflare.WorkersRoute("example_workers_route",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     pattern="example.com/*",
///     script="my-workers-script")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersRoute = new Cloudflare.WorkersRoute("example_workers_route", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Pattern = "example.com/*",
///         Script = "my-workers-script",
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
/// 		_, err := cloudflare.NewWorkersRoute(ctx, "example_workers_route", &cloudflare.WorkersRouteArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Pattern: pulumi.String("example.com/*"),
/// 			Script:  pulumi.String("my-workers-script"),
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
/// resource "cloudflare_workersroute" "example_workers_route" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   pattern = "example.com/*"
///   script  = "my-workers-script"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersRoute;
/// import com.pulumi.cloudflare.WorkersRouteArgs;
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
///         var exampleWorkersRoute = new WorkersRoute("exampleWorkersRoute", WorkersRouteArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .pattern("example.com/*")
///             .script("my-workers-script")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersRoute:
///     type: cloudflare:WorkersRoute
///     name: example_workers_route
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       pattern: example.com/*
///       script: my-workers-script
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersRoute:WorkersRoute example '<zone_id>/<route_id>'
/// ```
class WorkersRoute extends pulumi.CustomResource {
  /// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  late final pulumi.Output<String> pattern;
  /// Name of the script to run if the route matches.
  late final pulumi.Output<String?> script;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [WorkersRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersRoute]. {@macro pulumi_index_workers_route_workers_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersRoute(
    String name, {
    WorkersRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersRoute:WorkersRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    pattern = registerOutput<String>('pattern');
    script = registerOutput<String?>('script');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [WorkersRoute] resource's state with the given [name] and [id].
  static WorkersRoute get(
    String name,
    pulumi.Input<String> id, {
    WorkersRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersRoute:WorkersRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    pattern = registerOutput<String>('pattern');
    script = registerOutput<String?>('script');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [WorkersRoute] resource.
  WorkersRoute.reference(String urn)
    : super(
        'cloudflare:index/workersRoute:WorkersRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    pattern = registerOutput<String>('pattern');
    script = registerOutput<String?>('script');
    zoneId = registerOutput<String>('zoneId');
  }
}
