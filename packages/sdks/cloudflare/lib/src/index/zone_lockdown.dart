import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_lockdown_args.dart';
import 'zone_lockdown_configuration.dart';
import 'zone_lockdown_state.dart';

/// Accepted Permissions
///
/// - `Firewall Services Read`
/// - `Firewall Services Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneLockdown = new cloudflare.ZoneLockdown("example_zone_lockdown", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     configurations: [{
///         target: "ip",
///         value: "198.51.100.4",
///     }],
///     urls: ["shop.example.com/*"],
///     description: "Prevent multiple login failures to mitigate brute force attacks",
///     paused: false,
///     priority: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_lockdown = cloudflare.ZoneLockdown("example_zone_lockdown",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     configurations=[{
///         "target": "ip",
///         "value": "198.51.100.4",
///     }],
///     urls=["shop.example.com/*"],
///     description="Prevent multiple login failures to mitigate brute force attacks",
///     paused=False,
///     priority=float(5))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneLockdown = new Cloudflare.ZoneLockdown("example_zone_lockdown", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Configurations = new[]
///         {
///             new Cloudflare.Inputs.ZoneLockdownConfigurationArgs
///             {
///                 Target = "ip",
///                 Value = "198.51.100.4",
///             },
///         },
///         Urls = new[]
///         {
///             "shop.example.com/*",
///         },
///         Description = "Prevent multiple login failures to mitigate brute force attacks",
///         Paused = false,
///         Priority = 5,
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
/// 		_, err := cloudflare.NewZoneLockdown(ctx, "example_zone_lockdown", &cloudflare.ZoneLockdownArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Configurations: cloudflare.ZoneLockdownConfigurationArray{
/// 				&cloudflare.ZoneLockdownConfigurationArgs{
/// 					Target: pulumi.String("ip"),
/// 					Value:  pulumi.String("198.51.100.4"),
/// 				},
/// 			},
/// 			Urls: pulumi.StringArray{
/// 				pulumi.String("shop.example.com/*"),
/// 			},
/// 			Description: pulumi.String("Prevent multiple login failures to mitigate brute force attacks"),
/// 			Paused:      pulumi.Bool(false),
/// 			Priority:    pulumi.Float64(5),
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
/// resource "cloudflare_zonelockdown" "example_zone_lockdown" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   configurations {
///     target = "ip"
///     value  = "198.51.100.4"
///   }
///   urls        = ["shop.example.com/*"]
///   description = "Prevent multiple login failures to mitigate brute force attacks"
///   paused      = false
///   priority    = 5
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneLockdown;
/// import com.pulumi.cloudflare.ZoneLockdownArgs;
/// import com.pulumi.cloudflare.inputs.ZoneLockdownConfigurationArgs;
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
///         var exampleZoneLockdown = new ZoneLockdown("exampleZoneLockdown", ZoneLockdownArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .configurations(ZoneLockdownConfigurationArgs.builder()
///                 .target("ip")
///                 .value("198.51.100.4")
///                 .build())
///             .urls("shop.example.com/*")
///             .description("Prevent multiple login failures to mitigate brute force attacks")
///             .paused(false)
///             .priority(5.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneLockdown:
///     type: cloudflare:ZoneLockdown
///     name: example_zone_lockdown
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       configurations:
///         - target: ip
///           value: 198.51.100.4
///       urls:
///         - shop.example.com/*
///       description: Prevent multiple login failures to mitigate brute force attacks
///       paused: false
///       priority: 5
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneLockdown:ZoneLockdown example '<zone_id>/<lock_downs_id>'
/// ```
class ZoneLockdown extends pulumi.CustomResource {
  /// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  late final pulumi.Output<List<ZoneLockdownConfiguration>> configurations;
  /// The timestamp of when the rule was created.
  late final pulumi.Output<String> createdOn;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  late final pulumi.Output<String?> description;
  /// The timestamp of when the rule was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// When true, indicates that the rule is currently paused.
  late final pulumi.Output<bool> paused;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  late final pulumi.Output<double?> priority;
  /// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  late final pulumi.Output<List<String>> urls;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneLockdown].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneLockdown]. {@macro pulumi_index_zone_lockdown_zone_lockdown_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneLockdown(
    String name, {
    ZoneLockdownArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneLockdown:ZoneLockdown',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    configurations = registerOutput<List<ZoneLockdownConfiguration>>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneLockdownConfiguration>(guardedValue, (value) => ZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double?>('priority');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneLockdown] resource's state with the given [name] and [id].
  static ZoneLockdown get(
    String name,
    pulumi.Input<String> id, {
    ZoneLockdownState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneLockdown._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneLockdown._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneLockdown:ZoneLockdown',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurations = registerOutput<List<ZoneLockdownConfiguration>>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneLockdownConfiguration>(guardedValue, (value) => ZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double?>('priority');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneLockdown] resource.
  ZoneLockdown.reference(String urn)
    : super(
        'cloudflare:index/zoneLockdown:ZoneLockdown',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configurations = registerOutput<List<ZoneLockdownConfiguration>>('configurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneLockdownConfiguration>(guardedValue, (value) => ZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    modifiedOn = registerOutput<String>('modifiedOn');
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double?>('priority');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    zoneId = registerOutput<String>('zoneId');
  }
}
