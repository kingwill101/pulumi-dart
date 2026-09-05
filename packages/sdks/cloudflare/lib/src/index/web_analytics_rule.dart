import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_analytics_rule_args.dart';
import 'web_analytics_rule_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWebAnalyticsRule = new cloudflare.WebAnalyticsRule("example_web_analytics_rule", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     rulesetId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     host: "example.com",
///     inclusive: true,
///     isPaused: false,
///     paths: ["*"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_web_analytics_rule = cloudflare.WebAnalyticsRule("example_web_analytics_rule",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     ruleset_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     host="example.com",
///     inclusive=True,
///     is_paused=False,
///     paths=["*"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWebAnalyticsRule = new Cloudflare.WebAnalyticsRule("example_web_analytics_rule", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         RulesetId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         Host = "example.com",
///         Inclusive = true,
///         IsPaused = false,
///         Paths = new[]
///         {
///             "*",
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
/// 		_, err := cloudflare.NewWebAnalyticsRule(ctx, "example_web_analytics_rule", &cloudflare.WebAnalyticsRuleArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			RulesetId: pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			Host:      pulumi.String("example.com"),
/// 			Inclusive: pulumi.Bool(true),
/// 			IsPaused:  pulumi.Bool(false),
/// 			Paths: pulumi.StringArray{
/// 				pulumi.String("*"),
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
/// resource "cloudflare_webanalyticsrule" "example_web_analytics_rule" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   ruleset_id = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   host       = "example.com"
///   inclusive  = true
///   is_paused  = false
///   paths      = ["*"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WebAnalyticsRule;
/// import com.pulumi.cloudflare.WebAnalyticsRuleArgs;
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
///         var exampleWebAnalyticsRule = new WebAnalyticsRule("exampleWebAnalyticsRule", WebAnalyticsRuleArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .rulesetId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .host("example.com")
///             .inclusive(true)
///             .isPaused(false)
///             .paths("*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWebAnalyticsRule:
///     type: cloudflare:WebAnalyticsRule
///     name: example_web_analytics_rule
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       rulesetId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       host: example.com
///       inclusive: true
///       isPaused: false
///       paths:
///         - '*'
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class WebAnalyticsRule extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> created;
  late final pulumi.Output<String?> host;
  /// Whether the rule includes or excludes traffic from being measured.
  late final pulumi.Output<bool?> inclusive;
  /// Whether the rule is paused or not.
  late final pulumi.Output<bool?> isPaused;
  late final pulumi.Output<List<String>?> paths;
  late final pulumi.Output<double> priority;
  /// The Web Analytics ruleset identifier.
  late final pulumi.Output<String> rulesetId;

  /// Creates a new [WebAnalyticsRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAnalyticsRule]. {@macro pulumi_index_web_analytics_rule_web_analytics_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAnalyticsRule(
    String name, {
    WebAnalyticsRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/webAnalyticsRule:WebAnalyticsRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    host = registerOutput<String?>('host');
    inclusive = registerOutput<bool?>('inclusive');
    isPaused = registerOutput<bool?>('isPaused');
    paths = registerOutput<List<String>?>('paths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    priority = registerOutput<double>('priority');
    rulesetId = registerOutput<String>('rulesetId');
  }

  /// Gets an existing [WebAnalyticsRule] resource's state with the given [name] and [id].
  static WebAnalyticsRule get(
    String name,
    pulumi.Input<String> id, {
    WebAnalyticsRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAnalyticsRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAnalyticsRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/webAnalyticsRule:WebAnalyticsRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    host = registerOutput<String?>('host');
    inclusive = registerOutput<bool?>('inclusive');
    isPaused = registerOutput<bool?>('isPaused');
    paths = registerOutput<List<String>?>('paths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    priority = registerOutput<double>('priority');
    rulesetId = registerOutput<String>('rulesetId');
  }

  /// Creates a typed reference to an existing [WebAnalyticsRule] resource.
  WebAnalyticsRule.reference(String urn)
    : super(
        'cloudflare:index/webAnalyticsRule:WebAnalyticsRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    host = registerOutput<String?>('host');
    inclusive = registerOutput<bool?>('inclusive');
    isPaused = registerOutput<bool?>('isPaused');
    paths = registerOutput<List<String>?>('paths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    priority = registerOutput<double>('priority');
    rulesetId = registerOutput<String>('rulesetId');
  }
}
