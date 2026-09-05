import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_args.dart';
import 'ruleset_rule.dart';
import 'ruleset_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleRuleset = new cloudflare.Ruleset("example_ruleset", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     name: "My ruleset",
///     phase: "http_request_firewall_custom",
///     kind: "root",
///     description: "A description for my ruleset.",
///     rules: [{
///         description: "Block the request.",
///         expression: "ip.src ne 1.1.1.1",
///         action: "block",
///         ref: "my_rule",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ruleset = cloudflare.Ruleset("example_ruleset",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     name="My ruleset",
///     phase="http_request_firewall_custom",
///     kind="root",
///     description="A description for my ruleset.",
///     rules=[{
///         "description": "Block the request.",
///         "expression": "ip.src ne 1.1.1.1",
///         "action": "block",
///         "ref": "my_rule",
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
///     var exampleRuleset = new Cloudflare.Ruleset("example_ruleset", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         Name = "My ruleset",
///         Phase = "http_request_firewall_custom",
///         Kind = "root",
///         Description = "A description for my ruleset.",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.RulesetRuleArgs
///             {
///                 Description = "Block the request.",
///                 Expression = "ip.src ne 1.1.1.1",
///                 Action = "block",
///                 Ref = "my_rule",
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
/// 		_, err := cloudflare.NewRuleset(ctx, "example_ruleset", &cloudflare.RulesetArgs{
/// 			ZoneId:      pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			Name:        pulumi.String("My ruleset"),
/// 			Phase:       pulumi.String("http_request_firewall_custom"),
/// 			Kind:        pulumi.String("root"),
/// 			Description: pulumi.String("A description for my ruleset."),
/// 			Rules: cloudflare.RulesetRuleArray{
/// 				&cloudflare.RulesetRuleArgs{
/// 					Description: pulumi.String("Block the request."),
/// 					Expression:  pulumi.String("ip.src ne 1.1.1.1"),
/// 					Action:      pulumi.String("block"),
/// 					Ref:         pulumi.String("my_rule"),
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
/// resource "cloudflare_ruleset" "example_ruleset" {
///   zone_id     = "9f1839b6152d298aca64c4e906b6d074"
///   name        = "My ruleset"
///   phase       = "http_request_firewall_custom"
///   kind        = "root"
///   description = "A description for my ruleset."
///   rules {
///     description = "Block the request."
///     expression  = "ip.src ne 1.1.1.1"
///     action      = "block"
///     ref         = "my_rule"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Ruleset;
/// import com.pulumi.cloudflare.RulesetArgs;
/// import com.pulumi.cloudflare.inputs.RulesetRuleArgs;
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
///         var exampleRuleset = new Ruleset("exampleRuleset", RulesetArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .name("My ruleset")
///             .phase("http_request_firewall_custom")
///             .kind("root")
///             .description("A description for my ruleset.")
///             .rules(RulesetRuleArgs.builder()
///                 .description("Block the request.")
///                 .expression("ip.src ne 1.1.1.1")
///                 .action("block")
///                 .ref("my_rule")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRuleset:
///     type: cloudflare:Ruleset
///     name: example_ruleset
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       name: My ruleset
///       phase: http_request_firewall_custom
///       kind: root
///       description: A description for my ruleset.
///       rules:
///         - description: Block the request.
///           expression: ip.src ne 1.1.1.1
///           action: block
///           ref: my_rule
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/ruleset:Ruleset example '<{accounts|zones}/{account_id|zone_id}>/<ruleset_id>'
/// ```
class Ruleset extends pulumi.CustomResource {
  /// The unique ID of the account.
  late final pulumi.Output<String?> accountId;
  /// An informative description of the ruleset.
  late final pulumi.Output<String> description;
  /// The kind of the ruleset.
  /// Available values: "managed", "custom", "root", "zone".
  late final pulumi.Output<String> kind;
  /// The timestamp of when the ruleset was last modified.
  late final pulumi.Output<String> lastUpdated;
  /// The human-readable name of the ruleset.
  late final pulumi.Output<String> name;
  /// The phase of the ruleset.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  late final pulumi.Output<String> phase;
  /// The list of rules in the ruleset.
  late final pulumi.Output<List<RulesetRule>> rules;
  /// The version of the ruleset.
  late final pulumi.Output<String> version;
  /// The unique ID of the zone.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [Ruleset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ruleset]. {@macro pulumi_index_ruleset_ruleset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ruleset(
    String name, {
    RulesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ruleset:Ruleset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    rules = registerOutput<List<RulesetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesetRule>(guardedValue, (value) => RulesetRule.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [Ruleset] resource's state with the given [name] and [id].
  static Ruleset get(
    String name,
    pulumi.Input<String> id, {
    RulesetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Ruleset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Ruleset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/ruleset:Ruleset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    rules = registerOutput<List<RulesetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesetRule>(guardedValue, (value) => RulesetRule.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [Ruleset] resource.
  Ruleset.reference(String urn)
    : super(
        'cloudflare:index/ruleset:Ruleset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    lastUpdated = registerOutput<String>('lastUpdated');
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    rules = registerOutput<List<RulesetRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesetRule>(guardedValue, (value) => RulesetRule.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
    zoneId = registerOutput<String?>('zoneId');
  }
}
