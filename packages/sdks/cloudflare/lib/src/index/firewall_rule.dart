import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_action.dart';
import 'firewall_rule_args.dart';
import 'firewall_rule_filter.dart';
import 'firewall_rule_state.dart';

/// Accepted Permissions
///
/// - `Firewall Services Read`
/// - `Firewall Services Write`
///
/// &gt; `cloudflare.FirewallRule` is in a deprecation phase until June 15th, 2025.
/// During this time period, this resource is still
/// fully supported but you are strongly advised  to move to the
/// `cloudflare.Ruleset` resource. Full details can be found in the
/// developer documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleFirewallRule = new cloudflare.FirewallRule("example_firewall_rule", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     action: {
///         mode: "challenge",
///         response: {
///             body: "<error>This request has been rate-limited.</error>",
///             contentType: "text/xml",
///         },
///         timeout: 86400,
///     },
///     filter: {
///         description: "Restrict access from these browsers on this address range.",
///         expression: "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///         paused: false,
///         ref: "FIL-100",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_firewall_rule = cloudflare.FirewallRule("example_firewall_rule",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     action={
///         "mode": "challenge",
///         "response": {
///             "body": "<error>This request has been rate-limited.</error>",
///             "content_type": "text/xml",
///         },
///         "timeout": float(86400),
///     },
///     filter={
///         "description": "Restrict access from these browsers on this address range.",
///         "expression": "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///         "paused": False,
///         "ref": "FIL-100",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFirewallRule = new Cloudflare.FirewallRule("example_firewall_rule", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Action = new Cloudflare.Inputs.FirewallRuleActionArgs
///         {
///             Mode = "challenge",
///             Response = new Cloudflare.Inputs.FirewallRuleActionResponseArgs
///             {
///                 Body = "<error>This request has been rate-limited.</error>",
///                 ContentType = "text/xml",
///             },
///             Timeout = 86400,
///         },
///         Filter = new Cloudflare.Inputs.FirewallRuleFilterArgs
///         {
///             Description = "Restrict access from these browsers on this address range.",
///             Expression = "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155",
///             Paused = false,
///             Ref = "FIL-100",
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
/// 		_, err := cloudflare.NewFirewallRule(ctx, "example_firewall_rule", &cloudflare.FirewallRuleArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Action: &cloudflare.FirewallRuleActionArgs{
/// 				Mode: pulumi.String("challenge"),
/// 				Response: &cloudflare.FirewallRuleActionResponseArgs{
/// 					Body:        pulumi.String("<error>This request has been rate-limited.</error>"),
/// 					ContentType: pulumi.String("text/xml"),
/// 				},
/// 				Timeout: pulumi.Float64(86400),
/// 			},
/// 			Filter: &cloudflare.FirewallRuleFilterArgs{
/// 				Description: pulumi.String("Restrict access from these browsers on this address range."),
/// 				Expression:  pulumi.String("(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155"),
/// 				Paused:      pulumi.Bool(false),
/// 				Ref:         pulumi.String("FIL-100"),
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
/// resource "cloudflare_firewallrule" "example_firewall_rule" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   action = {
///     mode = "challenge"
///     response = {
///       body         = "<error>This request has been rate-limited.</error>"
///       content_type = "text/xml"
///     }
///     timeout = 86400
///   }
///   filter = {
///     description = "Restrict access from these browsers on this address range."
///     expression  = "(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155"
///     paused      = false
///     ref         = "FIL-100"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.FirewallRule;
/// import com.pulumi.cloudflare.FirewallRuleArgs;
/// import com.pulumi.cloudflare.inputs.FirewallRuleActionArgs;
/// import com.pulumi.cloudflare.inputs.FirewallRuleActionResponseArgs;
/// import com.pulumi.cloudflare.inputs.FirewallRuleFilterArgs;
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
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .action(FirewallRuleActionArgs.builder()
///                 .mode("challenge")
///                 .response(FirewallRuleActionResponseArgs.builder()
///                     .body("<error>This request has been rate-limited.</error>")
///                     .contentType("text/xml")
///                     .build())
///                 .timeout(86400.0)
///                 .build())
///             .filter(FirewallRuleFilterArgs.builder()
///                 .description("Restrict access from these browsers on this address range.")
///                 .expression("(http.request.uri.path ~ \".*wp-login.php\" or http.request.uri.path ~ \".*xmlrpc.php\") and ip.addr ne 172.16.22.155")
///                 .paused(false)
///                 .ref("FIL-100")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFirewallRule:
///     type: cloudflare:FirewallRule
///     name: example_firewall_rule
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       action:
///         mode: challenge
///         response:
///           body: <error>This request has been rate-limited.</error>
///           contentType: text/xml
///         timeout: 86400
///       filter:
///         description: Restrict access from these browsers on this address range.
///         expression: (http.request.uri.path ~ ".*wp-login.php" or http.request.uri.path ~ ".*xmlrpc.php") and ip.addr ne 172.16.22.155
///         paused: false
///         ref: FIL-100
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/firewallRule:FirewallRule example '<zone_id>/<rule_id>'
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  late final pulumi.Output<FirewallRuleAction> action;
  /// An informative summary of the firewall rule.
  late final pulumi.Output<String> description;
  late final pulumi.Output<FirewallRuleFilter> filter;
  /// When true, indicates that the firewall rule is currently paused.
  late final pulumi.Output<bool> paused;
  /// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  late final pulumi.Output<double> priority;
  late final pulumi.Output<List<String>> products;
  /// A short reference tag. Allows you to select related firewall rules.
  late final pulumi.Output<String> ref;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_index_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    action = registerOutput<FirewallRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    filter = registerOutput<FirewallRuleFilter>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double>('priority');
    products = registerOutput<List<String>>('products', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ref = registerOutput<String>('ref');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [FirewallRule] resource's state with the given [name] and [id].
  static FirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<FirewallRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    filter = registerOutput<FirewallRuleFilter>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double>('priority');
    products = registerOutput<List<String>>('products', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ref = registerOutput<String>('ref');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [FirewallRule] resource.
  FirewallRule.reference(String urn)
    : super(
        'cloudflare:index/firewallRule:FirewallRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<FirewallRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    filter = registerOutput<FirewallRuleFilter>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    priority = registerOutput<double>('priority');
    products = registerOutput<List<String>>('products', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ref = registerOutput<String>('ref');
    zoneId = registerOutput<String>('zoneId');
  }
}
