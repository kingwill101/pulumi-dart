import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_rule_action.dart';
import 'email_routing_rule_args.dart';
import 'email_routing_rule_matcher.dart';
import 'email_routing_rule_state.dart';

/// Accepted Permissions
///
/// - `Email Routing Rules Read`
/// - `Email Routing Rules Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailRoutingRule = new cloudflare.EmailRoutingRule("example_email_routing_rule", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     actions: [{
///         type: "forward",
///         value: ["destinationaddress@example.net"],
///     }],
///     matchers: [{
///         type: "literal",
///         field: "to",
///         value: "test@example.com",
///     }],
///     enabled: true,
///     name: "Send to user@example.net rule.",
///     ownerWorkerTag: "a7e6fb77503c41d8a7f3113c6918f10c",
///     priority: 0,
///     source: "api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_routing_rule = cloudflare.EmailRoutingRule("example_email_routing_rule",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     actions=[{
///         "type": "forward",
///         "value": ["destinationaddress@example.net"],
///     }],
///     matchers=[{
///         "type": "literal",
///         "field": "to",
///         "value": "test@example.com",
///     }],
///     enabled=True,
///     name="Send to user@example.net rule.",
///     owner_worker_tag="a7e6fb77503c41d8a7f3113c6918f10c",
///     priority=float(0),
///     source="api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailRoutingRule = new Cloudflare.EmailRoutingRule("example_email_routing_rule", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Actions = new[]
///         {
///             new Cloudflare.Inputs.EmailRoutingRuleActionArgs
///             {
///                 Type = "forward",
///                 Value = new[]
///                 {
///                     "destinationaddress@example.net",
///                 },
///             },
///         },
///         Matchers = new[]
///         {
///             new Cloudflare.Inputs.EmailRoutingRuleMatcherArgs
///             {
///                 Type = "literal",
///                 Field = "to",
///                 Value = "test@example.com",
///             },
///         },
///         Enabled = true,
///         Name = "Send to user@example.net rule.",
///         OwnerWorkerTag = "a7e6fb77503c41d8a7f3113c6918f10c",
///         Priority = 0,
///         Source = "api",
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
/// 		_, err := cloudflare.NewEmailRoutingRule(ctx, "example_email_routing_rule", &cloudflare.EmailRoutingRuleArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Actions: cloudflare.EmailRoutingRuleActionArray{
/// 				&cloudflare.EmailRoutingRuleActionArgs{
/// 					Type: pulumi.String("forward"),
/// 					Value: []string{
/// 						"destinationaddress@example.net",
/// 					},
/// 				},
/// 			},
/// 			Matchers: cloudflare.EmailRoutingRuleMatcherArray{
/// 				&cloudflare.EmailRoutingRuleMatcherArgs{
/// 					Type:  pulumi.String("literal"),
/// 					Field: pulumi.String("to"),
/// 					Value: pulumi.String("test@example.com"),
/// 				},
/// 			},
/// 			Enabled:        pulumi.Bool(true),
/// 			Name:           pulumi.String("Send to user@example.net rule."),
/// 			OwnerWorkerTag: pulumi.String("a7e6fb77503c41d8a7f3113c6918f10c"),
/// 			Priority:       pulumi.Float64(0),
/// 			Source:         pulumi.String("api"),
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
/// resource "cloudflare_emailroutingrule" "example_email_routing_rule" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   actions {
///     type  = "forward"
///     value = ["destinationaddress@example.net"]
///   }
///   matchers {
///     type  = "literal"
///     field = "to"
///     value = "test@example.com"
///   }
///   enabled          = true
///   name             = "Send to user@example.net rule."
///   owner_worker_tag = "a7e6fb77503c41d8a7f3113c6918f10c"
///   priority         = 0
///   source           = "api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailRoutingRule;
/// import com.pulumi.cloudflare.EmailRoutingRuleArgs;
/// import com.pulumi.cloudflare.inputs.EmailRoutingRuleActionArgs;
/// import com.pulumi.cloudflare.inputs.EmailRoutingRuleMatcherArgs;
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
///         var exampleEmailRoutingRule = new EmailRoutingRule("exampleEmailRoutingRule", EmailRoutingRuleArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .actions(EmailRoutingRuleActionArgs.builder()
///                 .type("forward")
///                 .value(Arrays.asList("destinationaddress@example.net"))
///                 .build())
///             .matchers(EmailRoutingRuleMatcherArgs.builder()
///                 .type("literal")
///                 .field("to")
///                 .value("test@example.com")
///                 .build())
///             .enabled(true)
///             .name("Send to user@example.net rule.")
///             .ownerWorkerTag("a7e6fb77503c41d8a7f3113c6918f10c")
///             .priority(0.0)
///             .source("api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailRoutingRule:
///     type: cloudflare:EmailRoutingRule
///     name: example_email_routing_rule
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       actions:
///         - type: forward
///           value:
///             - destinationaddress@example.net
///       matchers:
///         - type: literal
///           field: to
///           value: test@example.com
///       enabled: true
///       name: Send to user@example.net rule.
///       ownerWorkerTag: a7e6fb77503c41d8a7f3113c6918f10c
///       priority: 0
///       source: api
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailRoutingRule:EmailRoutingRule example '<zone_id>/<rule_identifier>'
/// ```
class EmailRoutingRule extends pulumi.CustomResource {
  /// List actions patterns.
  late final pulumi.Output<List<EmailRoutingRuleAction>> actions;
  /// Routing rule status.
  late final pulumi.Output<bool> enabled;
  /// Matching patterns to forward to your actions.
  late final pulumi.Output<List<EmailRoutingRuleMatcher>> matchers;
  /// Routing rule name.
  late final pulumi.Output<String?> name;
  /// Public tag (script_tag) of the Worker that owns this rule. Required when
  /// `source` is `wrangler`.
  late final pulumi.Output<String?> ownerWorkerTag;
  /// Priority of the routing rule.
  late final pulumi.Output<double> priority;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  late final pulumi.Output<String> source;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  late final pulumi.Output<String> tag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EmailRoutingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailRoutingRule]. {@macro pulumi_index_email_routing_rule_email_routing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailRoutingRule(
    String name, {
    EmailRoutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingRule:EmailRoutingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    actions = registerOutput<List<EmailRoutingRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleAction>(guardedValue, (value) => EmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingRuleMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleMatcher>(guardedValue, (value) => EmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    priority = registerOutput<double>('priority');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EmailRoutingRule] resource's state with the given [name] and [id].
  static EmailRoutingRule get(
    String name,
    pulumi.Input<String> id, {
    EmailRoutingRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailRoutingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailRoutingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingRule:EmailRoutingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<EmailRoutingRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleAction>(guardedValue, (value) => EmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingRuleMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleMatcher>(guardedValue, (value) => EmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    priority = registerOutput<double>('priority');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [EmailRoutingRule] resource.
  EmailRoutingRule.reference(String urn)
    : super(
        'cloudflare:index/emailRoutingRule:EmailRoutingRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<EmailRoutingRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleAction>(guardedValue, (value) => EmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingRuleMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingRuleMatcher>(guardedValue, (value) => EmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    priority = registerOutput<double>('priority');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }
}
