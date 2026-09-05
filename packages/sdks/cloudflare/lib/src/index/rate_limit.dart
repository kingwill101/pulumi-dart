import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_action.dart';
import 'rate_limit_args.dart';
import 'rate_limit_bypass.dart';
import 'rate_limit_match.dart';
import 'rate_limit_state.dart';

/// Accepted Permissions
///
/// - `Firewall Services Read`
/// - `Firewall Services Write`
///
/// &gt; `cloudflare.RateLimit` is in a deprecation phase until June 15th, 2025.
/// During this time period, this resource is still
/// fully supported but you are strongly advised to move to the
/// `cloudflare.Ruleset` resource. Full details can be found in the
/// developer documentation.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleRateLimit = new cloudflare.RateLimit("example_rate_limit", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     action: {
///         mode: "challenge",
///         response: {
///             body: "<error>This request has been rate-limited.</error>",
///             contentType: "text/xml",
///         },
///         timeout: 86400,
///     },
///     match: {
///         headers: [{
///             name: "Cf-Cache-Status",
///             op: "ne",
///             value: "HIT",
///         }],
///         request: {
///             methods: [
///                 "GET",
///                 "POST",
///             ],
///             schemes: [
///                 "HTTP",
///                 "HTTPS",
///             ],
///             url: "*.example.org/path*",
///         },
///         response: {
///             originTraffic: true,
///         },
///     },
///     period: 900,
///     threshold: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_rate_limit = cloudflare.RateLimit("example_rate_limit",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     action={
///         "mode": "challenge",
///         "response": {
///             "body": "<error>This request has been rate-limited.</error>",
///             "content_type": "text/xml",
///         },
///         "timeout": float(86400),
///     },
///     match={
///         "headers": [{
///             "name": "Cf-Cache-Status",
///             "op": "ne",
///             "value": "HIT",
///         }],
///         "request": {
///             "methods": [
///                 "GET",
///                 "POST",
///             ],
///             "schemes": [
///                 "HTTP",
///                 "HTTPS",
///             ],
///             "url": "*.example.org/path*",
///         },
///         "response": {
///             "origin_traffic": True,
///         },
///     },
///     period=float(900),
///     threshold=float(60))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRateLimit = new Cloudflare.RateLimit("example_rate_limit", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Action = new Cloudflare.Inputs.RateLimitActionArgs
///         {
///             Mode = "challenge",
///             Response = new Cloudflare.Inputs.RateLimitActionResponseArgs
///             {
///                 Body = "<error>This request has been rate-limited.</error>",
///                 ContentType = "text/xml",
///             },
///             Timeout = 86400,
///         },
///         Match = new Cloudflare.Inputs.RateLimitMatchArgs
///         {
///             Headers = new[]
///             {
///                 new Cloudflare.Inputs.RateLimitMatchHeaderArgs
///                 {
///                     Name = "Cf-Cache-Status",
///                     Op = "ne",
///                     Value = "HIT",
///                 },
///             },
///             Request = new Cloudflare.Inputs.RateLimitMatchRequestArgs
///             {
///                 Methods = new[]
///                 {
///                     "GET",
///                     "POST",
///                 },
///                 Schemes = new[]
///                 {
///                     "HTTP",
///                     "HTTPS",
///                 },
///                 Url = "*.example.org/path*",
///             },
///             Response = new Cloudflare.Inputs.RateLimitMatchResponseArgs
///             {
///                 OriginTraffic = true,
///             },
///         },
///         Period = 900,
///         Threshold = 60,
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
/// 		_, err := cloudflare.NewRateLimit(ctx, "example_rate_limit", &cloudflare.RateLimitArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Action: &cloudflare.RateLimitActionArgs{
/// 				Mode: pulumi.String("challenge"),
/// 				Response: &cloudflare.RateLimitActionResponseArgs{
/// 					Body:        pulumi.String("<error>This request has been rate-limited.</error>"),
/// 					ContentType: pulumi.String("text/xml"),
/// 				},
/// 				Timeout: pulumi.Float64(86400),
/// 			},
/// 			Match: &cloudflare.RateLimitMatchArgs{
/// 				Headers: cloudflare.RateLimitMatchHeaderArray{
/// 					&cloudflare.RateLimitMatchHeaderArgs{
/// 						Name:  pulumi.String("Cf-Cache-Status"),
/// 						Op:    pulumi.String("ne"),
/// 						Value: pulumi.String("HIT"),
/// 					},
/// 				},
/// 				Request: &cloudflare.RateLimitMatchRequestArgs{
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("POST"),
/// 					},
/// 					Schemes: pulumi.StringArray{
/// 						pulumi.String("HTTP"),
/// 						pulumi.String("HTTPS"),
/// 					},
/// 					Url: pulumi.String("*.example.org/path*"),
/// 				},
/// 				Response: &cloudflare.RateLimitMatchResponseArgs{
/// 					OriginTraffic: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Period:    pulumi.Float64(900),
/// 			Threshold: pulumi.Float64(60),
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
/// resource "cloudflare_ratelimit" "example_rate_limit" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   action = {
///     mode = "challenge"
///     response = {
///       body         = "<error>This request has been rate-limited.</error>"
///       content_type = "text/xml"
///     }
///     timeout = 86400
///   }
///   match = {
///     headers = [{
///       "name"  = "Cf-Cache-Status"
///       "op"    = "ne"
///       "value" = "HIT"
///     }]
///     request = {
///       methods = ["GET", "POST"]
///       schemes = ["HTTP", "HTTPS"]
///       url     = "*.example.org/path*"
///     }
///     response = {
///       origin_traffic = true
///     }
///   }
///   period    = 900
///   threshold = 60
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.RateLimit;
/// import com.pulumi.cloudflare.RateLimitArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitActionArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitActionResponseArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitMatchArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitMatchHeaderArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitMatchRequestArgs;
/// import com.pulumi.cloudflare.inputs.RateLimitMatchResponseArgs;
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
///         var exampleRateLimit = new RateLimit("exampleRateLimit", RateLimitArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .action(RateLimitActionArgs.builder()
///                 .mode("challenge")
///                 .response(RateLimitActionResponseArgs.builder()
///                     .body("<error>This request has been rate-limited.</error>")
///                     .contentType("text/xml")
///                     .build())
///                 .timeout(86400.0)
///                 .build())
///             .match(RateLimitMatchArgs.builder()
///                 .headers(RateLimitMatchHeaderArgs.builder()
///                     .name("Cf-Cache-Status")
///                     .op("ne")
///                     .value("HIT")
///                     .build())
///                 .request(RateLimitMatchRequestArgs.builder()
///                     .methods(
///                         "GET",
///                         "POST")
///                     .schemes(
///                         "HTTP",
///                         "HTTPS")
///                     .url("*.example.org/path*")
///                     .build())
///                 .response(RateLimitMatchResponseArgs.builder()
///                     .originTraffic(true)
///                     .build())
///                 .build())
///             .period(900.0)
///             .threshold(60.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRateLimit:
///     type: cloudflare:RateLimit
///     name: example_rate_limit
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       action:
///         mode: challenge
///         response:
///           body: <error>This request has been rate-limited.</error>
///           contentType: text/xml
///         timeout: 86400
///       match:
///         headers:
///           - name: Cf-Cache-Status
///             op: ne
///             value: HIT
///         request:
///           methods:
///             - GET
///             - POST
///           schemes:
///             - HTTP
///             - HTTPS
///           url: '*.example.org/path*'
///         response:
///           originTraffic: true
///       period: 900
///       threshold: 60
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/rateLimit:RateLimit example '<zone_id>/<rate_limit_id>'
/// ```
class RateLimit extends pulumi.CustomResource {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  late final pulumi.Output<RateLimitAction> action;
  /// Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  late final pulumi.Output<List<RateLimitBypass>> bypasses;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  late final pulumi.Output<String> description;
  /// When true, indicates that the rate limit is currently disabled.
  late final pulumi.Output<bool> disabled;
  /// Determines which traffic the rate limit counts towards the threshold.
  late final pulumi.Output<RateLimitMatch> match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  late final pulumi.Output<double> period;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  late final pulumi.Output<double> threshold;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [RateLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RateLimit]. {@macro pulumi_index_rate_limit_rate_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RateLimit(
    String name, {
    RateLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/rateLimit:RateLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    action = registerOutput<RateLimitAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bypasses = registerOutput<List<RateLimitBypass>>('bypasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RateLimitBypass>(guardedValue, (value) => RateLimitBypass.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    match = registerOutput<RateLimitMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    period = registerOutput<double>('period');
    threshold = registerOutput<double>('threshold');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [RateLimit] resource's state with the given [name] and [id].
  static RateLimit get(
    String name,
    pulumi.Input<String> id, {
    RateLimitState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RateLimit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RateLimit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/rateLimit:RateLimit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<RateLimitAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bypasses = registerOutput<List<RateLimitBypass>>('bypasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RateLimitBypass>(guardedValue, (value) => RateLimitBypass.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    match = registerOutput<RateLimitMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    period = registerOutput<double>('period');
    threshold = registerOutput<double>('threshold');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [RateLimit] resource.
  RateLimit.reference(String urn)
    : super(
        'cloudflare:index/rateLimit:RateLimit',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<RateLimitAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bypasses = registerOutput<List<RateLimitBypass>>('bypasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RateLimitBypass>(guardedValue, (value) => RateLimitBypass.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    match = registerOutput<RateLimitMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    period = registerOutput<double>('period');
    threshold = registerOutput<double>('threshold');
    zoneId = registerOutput<String>('zoneId');
  }
}
