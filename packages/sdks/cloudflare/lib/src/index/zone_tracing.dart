import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_tracing_args.dart';
import 'zone_tracing_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneTracing = new cloudflare.ZoneTracing("example_zone_tracing", {
///     zoneId: "zone_id",
///     destinations: ["x"],
///     enabled: true,
///     forwardContext: true,
///     persist: true,
///     propagationPolicy: "accept",
///     samplingRatio: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_tracing = cloudflare.ZoneTracing("example_zone_tracing",
///     zone_id="zone_id",
///     destinations=["x"],
///     enabled=True,
///     forward_context=True,
///     persist=True,
///     propagation_policy="accept",
///     sampling_ratio=float(0))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneTracing = new Cloudflare.ZoneTracing("example_zone_tracing", new()
///     {
///         ZoneId = "zone_id",
///         Destinations = new[]
///         {
///             "x",
///         },
///         Enabled = true,
///         ForwardContext = true,
///         Persist = true,
///         PropagationPolicy = "accept",
///         SamplingRatio = 0,
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
/// 		_, err := cloudflare.NewZoneTracing(ctx, "example_zone_tracing", &cloudflare.ZoneTracingArgs{
/// 			ZoneId: pulumi.String("zone_id"),
/// 			Destinations: pulumi.StringArray{
/// 				pulumi.String("x"),
/// 			},
/// 			Enabled:           pulumi.Bool(true),
/// 			ForwardContext:    pulumi.Bool(true),
/// 			Persist:           pulumi.Bool(true),
/// 			PropagationPolicy: pulumi.String("accept"),
/// 			SamplingRatio:     pulumi.Float64(0),
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
/// resource "cloudflare_zonetracing" "example_zone_tracing" {
///   zone_id            = "zone_id"
///   destinations       = ["x"]
///   enabled            = true
///   forward_context    = true
///   persist            = true
///   propagation_policy = "accept"
///   sampling_ratio     = 0
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneTracing;
/// import com.pulumi.cloudflare.ZoneTracingArgs;
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
///         var exampleZoneTracing = new ZoneTracing("exampleZoneTracing", ZoneTracingArgs.builder()
///             .zoneId("zone_id")
///             .destinations("x")
///             .enabled(true)
///             .forwardContext(true)
///             .persist(true)
///             .propagationPolicy("accept")
///             .samplingRatio(0.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneTracing:
///     type: cloudflare:ZoneTracing
///     name: example_zone_tracing
///     properties:
///       zoneId: zone_id
///       destinations:
///         - x
///       enabled: true
///       forwardContext: true
///       persist: true
///       propagationPolicy: accept
///       samplingRatio: 0
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneTracing:ZoneTracing example '<zone_id>'
/// ```
class ZoneTracing extends pulumi.CustomResource {
  /// Up to 100 OpenTelemetry destination identifiers that receive traces.
  late final pulumi.Output<List<String>?> destinations;
  /// Whether Cloudflare Traces is enabled for the zone.
  late final pulumi.Output<bool?> enabled;
  /// Whether trace context is sent externally or across a zone boundary.
  late final pulumi.Output<bool?> forwardContext;
  /// Whether traces are persisted in Cloudflare.
  late final pulumi.Output<bool?> persist;
  /// When inbound trace context may be continued. Authenticated propagation is not supported yet.
  /// Available values: "accept", "authenticated", "reject".
  late final pulumi.Output<String?> propagationPolicy;
  /// The ratio of requests sampled for tracing, from 0 to 1.
  late final pulumi.Output<double?> samplingRatio;
  /// Specify the zone ID.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneTracing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneTracing]. {@macro pulumi_index_zone_tracing_zone_tracing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneTracing(
    String name, {
    ZoneTracingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneTracing:ZoneTracing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.0').merge(options),
        ) {
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardContext = registerOutput<bool?>('forwardContext');
    persist = registerOutput<bool?>('persist');
    propagationPolicy = registerOutput<String?>('propagationPolicy');
    samplingRatio = registerOutput<double?>('samplingRatio');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneTracing] resource's state with the given [name] and [id].
  static ZoneTracing get(
    String name,
    pulumi.Input<String> id, {
    ZoneTracingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneTracing._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneTracing._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneTracing:ZoneTracing',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardContext = registerOutput<bool?>('forwardContext');
    persist = registerOutput<bool?>('persist');
    propagationPolicy = registerOutput<String?>('propagationPolicy');
    samplingRatio = registerOutput<double?>('samplingRatio');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneTracing] resource.
  ZoneTracing.reference(String urn)
    : super(
        'cloudflare:index/zoneTracing:ZoneTracing',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forwardContext = registerOutput<bool?>('forwardContext');
    persist = registerOutput<bool?>('persist');
    propagationPolicy = registerOutput<String?>('propagationPolicy');
    samplingRatio = registerOutput<double?>('samplingRatio');
    zoneId = registerOutput<String>('zoneId');
  }
}
