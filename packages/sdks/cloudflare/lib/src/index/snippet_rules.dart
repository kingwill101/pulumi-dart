import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_rules_args.dart';
import 'snippet_rules_rule.dart';
import 'snippet_rules_state.dart';

/// Accepted Permissions
///
/// - `Snippets Read`
/// - `Snippets Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSnippetRules = new cloudflare.SnippetRules("example_snippet_rules", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     rules: [{
///         expression: "ip.src eq 1.1.1.1",
///         snippetName: "my_snippet",
///         description: "Execute my_snippet when IP address is 1.1.1.1.",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_snippet_rules = cloudflare.SnippetRules("example_snippet_rules",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     rules=[{
///         "expression": "ip.src eq 1.1.1.1",
///         "snippet_name": "my_snippet",
///         "description": "Execute my_snippet when IP address is 1.1.1.1.",
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
///     var exampleSnippetRules = new Cloudflare.SnippetRules("example_snippet_rules", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.SnippetRulesRuleArgs
///             {
///                 Expression = "ip.src eq 1.1.1.1",
///                 SnippetName = "my_snippet",
///                 Description = "Execute my_snippet when IP address is 1.1.1.1.",
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
/// 		_, err := cloudflare.NewSnippetRules(ctx, "example_snippet_rules", &cloudflare.SnippetRulesArgs{
/// 			ZoneId: pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			Rules: cloudflare.SnippetRulesRuleArray{
/// 				&cloudflare.SnippetRulesRuleArgs{
/// 					Expression:  pulumi.String("ip.src eq 1.1.1.1"),
/// 					SnippetName: pulumi.String("my_snippet"),
/// 					Description: pulumi.String("Execute my_snippet when IP address is 1.1.1.1."),
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
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_snippetrules" "example_snippet_rules" {
///   zone_id = "9f1839b6152d298aca64c4e906b6d074"
///   rules {
///     expression   = "ip.src eq 1.1.1.1"
///     snippet_name = "my_snippet"
///     description  = "Execute my_snippet when IP address is 1.1.1.1."
///     enabled      = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SnippetRules;
/// import com.pulumi.cloudflare.SnippetRulesArgs;
/// import com.pulumi.cloudflare.inputs.SnippetRulesRuleArgs;
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
///         var exampleSnippetRules = new SnippetRules("exampleSnippetRules", SnippetRulesArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .rules(SnippetRulesRuleArgs.builder()
///                 .expression("ip.src eq 1.1.1.1")
///                 .snippetName("my_snippet")
///                 .description("Execute my_snippet when IP address is 1.1.1.1.")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSnippetRules:
///     type: cloudflare:SnippetRules
///     name: example_snippet_rules
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       rules:
///         - expression: ip.src eq 1.1.1.1
///           snippetName: my_snippet
///           description: Execute my_snippet when IP address is 1.1.1.1.
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/snippetRules:SnippetRules example '<zone_id>'
/// ```
class SnippetRules extends pulumi.CustomResource {
  /// Lists snippet rules.
  late final pulumi.Output<List<SnippetRulesRule>> rules;
  /// Use this field to specify the unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [SnippetRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnippetRules]. {@macro pulumi_index_snippet_rules_snippet_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnippetRules(
    String name, {
    SnippetRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippetRules:SnippetRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    rules = registerOutput<List<SnippetRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetRulesRule>(guardedValue, (value) => SnippetRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [SnippetRules] resource's state with the given [name] and [id].
  static SnippetRules get(
    String name,
    pulumi.Input<String> id, {
    SnippetRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SnippetRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SnippetRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippetRules:SnippetRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<SnippetRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetRulesRule>(guardedValue, (value) => SnippetRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [SnippetRules] resource.
  SnippetRules.reference(String urn)
    : super(
        'cloudflare:index/snippetRules:SnippetRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    rules = registerOutput<List<SnippetRulesRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SnippetRulesRule>(guardedValue, (value) => SnippetRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
