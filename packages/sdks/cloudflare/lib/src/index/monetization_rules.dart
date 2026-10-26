import 'package:pulumi/pulumi.dart' as pulumi;
import 'monetization_rules_args.dart';
import 'monetization_rules_rule.dart';
import 'monetization_rules_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMonetizationRules = new cloudflare.MonetizationRules("example_monetization_rules", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     rules: [{
///         address: "0x1234567890abcdef1234567890abcdef12345678===",
///         expression: "(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})",
///         price: "250000",
///         scheme: "exact",
///         id: "023e105f4ecef8ad9ca31a8372d0c353",
///         description: "Premium API endpoint",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_monetization_rules = cloudflare.MonetizationRules("example_monetization_rules",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     rules=[{
///         "address": "0x1234567890abcdef1234567890abcdef12345678===",
///         "expression": "(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})",
///         "price": "250000",
///         "scheme": "exact",
///         "id": "023e105f4ecef8ad9ca31a8372d0c353",
///         "description": "Premium API endpoint",
///         "enabled": True,
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
///     var exampleMonetizationRules = new Cloudflare.MonetizationRules("example_monetization_rules", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.MonetizationRulesRuleArgs
///             {
///                 Address = "0x1234567890abcdef1234567890abcdef12345678===",
///                 Expression = "(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})",
///                 Price = "250000",
///                 Scheme = "exact",
///                 Id = "023e105f4ecef8ad9ca31a8372d0c353",
///                 Description = "Premium API endpoint",
///                 Enabled = true,
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
/// 		_, err := cloudflare.NewMonetizationRules(ctx, "example_monetization_rules", &cloudflare.MonetizationRulesArgs{
/// 			ZoneId: pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			Rules: cloudflare.MonetizationRulesRuleArray{
/// 				&cloudflare.MonetizationRulesRuleArgs{
/// 					Address:     pulumi.String("0x1234567890abcdef1234567890abcdef12345678==="),
/// 					Expression:  pulumi.String("(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})"),
/// 					Price:       pulumi.String("250000"),
/// 					Scheme:      pulumi.String("exact"),
/// 					Id:          pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 					Description: pulumi.String("Premium API endpoint"),
/// 					Enabled:     pulumi.Bool(true),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_monetization_rules" "example_monetization_rules" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   zone_id = "9f1839b6152d298aca64c4e906b6d074"
///   rules {
///     address     = "0x1234567890abcdef1234567890abcdef12345678==="
///     expression  = "(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})"
///     price       = "250000"
///     scheme      = "exact"
///     id          = "023e105f4ecef8ad9ca31a8372d0c353"
///     description = "Premium API endpoint"
///     enabled     = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MonetizationRules;
/// import com.pulumi.cloudflare.MonetizationRulesArgs;
/// import com.pulumi.cloudflare.inputs.MonetizationRulesRuleArgs;
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
///         var exampleMonetizationRules = new MonetizationRules("exampleMonetizationRules", MonetizationRulesArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .rules(MonetizationRulesRuleArgs.builder()
///                 .address("0x1234567890abcdef1234567890abcdef12345678===")
///                 .expression("(http.request.uri.path eq \"/premium\" and http.request.method in {\"GET\" \"POST\"})")
///                 .price("250000")
///                 .scheme("exact")
///                 .id("023e105f4ecef8ad9ca31a8372d0c353")
///                 .description("Premium API endpoint")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMonetizationRules:
///     type: cloudflare:MonetizationRules
///     name: example_monetization_rules
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       rules:
///         - address: 0x1234567890abcdef1234567890abcdef12345678===
///           expression: (http.request.uri.path eq "/premium" and http.request.method in {"GET" "POST"})
///           price: '250000'
///           scheme: exact
///           id: 023e105f4ecef8ad9ca31a8372d0c353
///           description: Premium API endpoint
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/monetizationRules:MonetizationRules example '<zone_id>'
/// ```
class MonetizationRules extends pulumi.CustomResource {
  /// Full desired Payment Required ruleset. An empty array clears all payment rules. The ruleset may contain at most 40 unique wallet addresses; address comparison is case-insensitive. Every address must pass wallet screening before deployment.
  late final pulumi.Output<List<MonetizationRulesRule>> rules;
  /// The unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [MonetizationRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonetizationRules]. {@macro pulumi_index_monetization_rules_monetization_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonetizationRules(
    String name, {
    MonetizationRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/monetizationRules:MonetizationRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
        ) {
    rules = registerOutput<List<MonetizationRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonetizationRulesRule>(guardedValue, (value) => MonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [MonetizationRules] resource's state with the given [name] and [id].
  static MonetizationRules get(
    String name,
    pulumi.Input<String> id, {
    MonetizationRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MonetizationRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MonetizationRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/monetizationRules:MonetizationRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<MonetizationRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonetizationRulesRule>(guardedValue, (value) => MonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [MonetizationRules] resource.
  MonetizationRules.reference(String urn)
    : super(
        'cloudflare:index/monetizationRules:MonetizationRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    rules = registerOutput<List<MonetizationRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonetizationRulesRule>(guardedValue, (value) => MonetizationRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
