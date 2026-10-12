import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_tracing_rules_args.dart';
import 'zone_tracing_rules_rule.dart';
import 'zone_tracing_rules_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneTracingRules = new cloudflare.ZoneTracingRules("example_zone_tracing_rules", {
///     zoneId: "zone_id",
///     rules: [{
///         action: "set_trace_settings",
///         actionParameters: {
///             samplingRatio: 0,
///         },
///         description: "description",
///         enabled: true,
///         expression: "x",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_tracing_rules = cloudflare.ZoneTracingRules("example_zone_tracing_rules",
///     zone_id="zone_id",
///     rules=[{
///         "action": "set_trace_settings",
///         "action_parameters": {
///             "sampling_ratio": float(0),
///         },
///         "description": "description",
///         "enabled": True,
///         "expression": "x",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneTracingRules = new Cloudflare.ZoneTracingRules("example_zone_tracing_rules", new()
///     {
///         ZoneId = "zone_id",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.ZoneTracingRulesRuleArgs
///             {
///                 Action = "set_trace_settings",
///                 ActionParameters = new Cloudflare.Inputs.ZoneTracingRulesRuleActionParametersArgs
///                 {
///                     SamplingRatio = 0,
///                 },
///                 Description = "description",
///                 Enabled = true,
///                 Expression = "x",
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
/// 		_, err := cloudflare.NewZoneTracingRules(ctx, "example_zone_tracing_rules", &cloudflare.ZoneTracingRulesArgs{
/// 			ZoneId: pulumi.String("zone_id"),
/// 			Rules: cloudflare.ZoneTracingRulesRuleArray{
/// 				&cloudflare.ZoneTracingRulesRuleArgs{
/// 					Action: pulumi.String("set_trace_settings"),
/// 					ActionParameters: &cloudflare.ZoneTracingRulesRuleActionParametersArgs{
/// 						SamplingRatio: pulumi.Float64(0),
/// 					},
/// 					Description: pulumi.String("description"),
/// 					Enabled:     pulumi.Bool(true),
/// 					Expression:  pulumi.String("x"),
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
/// resource "cloudflare_zonetracingrules" "example_zone_tracing_rules" {
///   zone_id = "zone_id"
///   rules {
///     action = "set_trace_settings"
///     action_parameters = {
///       sampling_ratio = 0
///     }
///     description = "description"
///     enabled     = true
///     expression  = "x"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneTracingRules;
/// import com.pulumi.cloudflare.ZoneTracingRulesArgs;
/// import com.pulumi.cloudflare.inputs.ZoneTracingRulesRuleArgs;
/// import com.pulumi.cloudflare.inputs.ZoneTracingRulesRuleActionParametersArgs;
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
///         var exampleZoneTracingRules = new ZoneTracingRules("exampleZoneTracingRules", ZoneTracingRulesArgs.builder()
///             .zoneId("zone_id")
///             .rules(ZoneTracingRulesRuleArgs.builder()
///                 .action("set_trace_settings")
///                 .actionParameters(ZoneTracingRulesRuleActionParametersArgs.builder()
///                     .samplingRatio(0.0)
///                     .build())
///                 .description("description")
///                 .enabled(true)
///                 .expression("x")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneTracingRules:
///     type: cloudflare:ZoneTracingRules
///     name: example_zone_tracing_rules
///     properties:
///       zoneId: zone_id
///       rules:
///         - action: set_trace_settings
///           actionParameters:
///             samplingRatio: 0
///           description: description
///           enabled: true
///           expression: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneTracingRules:ZoneTracingRules example '<zone_id>'
/// ```
class ZoneTracingRules extends pulumi.CustomResource {
  /// Trace rules in evaluation order.
  late final pulumi.Output<List<ZoneTracingRulesRule>> rules;
  /// Specify the zone ID.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneTracingRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneTracingRules]. {@macro pulumi_index_zone_tracing_rules_zone_tracing_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneTracingRules(
    String name, {
    ZoneTracingRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneTracingRules:ZoneTracingRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.0').merge(options),
        ) {
    rules = registerOutput<List<ZoneTracingRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneTracingRulesRule>(guardedValue, (value) => ZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneTracingRules] resource's state with the given [name] and [id].
  static ZoneTracingRules get(
    String name,
    pulumi.Input<String> id, {
    ZoneTracingRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneTracingRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneTracingRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneTracingRules:ZoneTracingRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<ZoneTracingRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneTracingRulesRule>(guardedValue, (value) => ZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneTracingRules] resource.
  ZoneTracingRules.reference(String urn)
    : super(
        'cloudflare:index/zoneTracingRules:ZoneTracingRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    rules = registerOutput<List<ZoneTracingRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZoneTracingRulesRule>(guardedValue, (value) => ZoneTracingRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
