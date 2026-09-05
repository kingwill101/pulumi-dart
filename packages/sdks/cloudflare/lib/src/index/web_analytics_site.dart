import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_analytics_site_args.dart';
import 'web_analytics_site_rule.dart';
import 'web_analytics_site_ruleset.dart';
import 'web_analytics_site_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWebAnalyticsSite = new cloudflare.WebAnalyticsSite("example_web_analytics_site", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     autoInstall: true,
///     host: "example.com",
///     zoneTag: "023e105f4ecef8ad9ca31a8372d0c353",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_web_analytics_site = cloudflare.WebAnalyticsSite("example_web_analytics_site",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     auto_install=True,
///     host="example.com",
///     zone_tag="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWebAnalyticsSite = new Cloudflare.WebAnalyticsSite("example_web_analytics_site", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AutoInstall = true,
///         Host = "example.com",
///         ZoneTag = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewWebAnalyticsSite(ctx, "example_web_analytics_site", &cloudflare.WebAnalyticsSiteArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AutoInstall: pulumi.Bool(true),
/// 			Host:        pulumi.String("example.com"),
/// 			ZoneTag:     pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_webanalyticssite" "example_web_analytics_site" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   auto_install = true
///   host         = "example.com"
///   zone_tag     = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WebAnalyticsSite;
/// import com.pulumi.cloudflare.WebAnalyticsSiteArgs;
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
///         var exampleWebAnalyticsSite = new WebAnalyticsSite("exampleWebAnalyticsSite", WebAnalyticsSiteArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .autoInstall(true)
///             .host("example.com")
///             .zoneTag("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWebAnalyticsSite:
///     type: cloudflare:WebAnalyticsSite
///     name: example_web_analytics_site
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       autoInstall: true
///       host: example.com
///       zoneTag: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/webAnalyticsSite:WebAnalyticsSite example '<account_id>/<site_id>'
/// ```
class WebAnalyticsSite extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  late final pulumi.Output<bool?> autoInstall;
  late final pulumi.Output<String> created;
  /// Enables or disables RUM. This option can be used only when autoInstall is set to true.
  late final pulumi.Output<bool?> enabled;
  /// The hostname to use for gray-clouded sites.
  late final pulumi.Output<String?> host;
  /// If enabled, the JavaScript snippet will not be injected for visitors from the EU.
  late final pulumi.Output<bool?> lite;
  /// A list of rules.
  late final pulumi.Output<List<WebAnalyticsSiteRule>> rules;
  late final pulumi.Output<WebAnalyticsSiteRuleset> ruleset;
  /// The Web Analytics site identifier.
  late final pulumi.Output<String> siteTag;
  /// The Web Analytics site token.
  late final pulumi.Output<String> siteToken;
  /// Encoded JavaScript snippet.
  late final pulumi.Output<String> snippet;
  /// The zone identifier.
  late final pulumi.Output<String?> zoneTag;

  /// Creates a new [WebAnalyticsSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAnalyticsSite]. {@macro pulumi_index_web_analytics_site_web_analytics_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAnalyticsSite(
    String name, {
    WebAnalyticsSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/webAnalyticsSite:WebAnalyticsSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    autoInstall = registerOutput<bool?>('autoInstall');
    created = registerOutput<String>('created');
    enabled = registerOutput<bool?>('enabled');
    host = registerOutput<String?>('host');
    lite = registerOutput<bool?>('lite');
    rules = registerOutput<List<WebAnalyticsSiteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAnalyticsSiteRule>(guardedValue, (value) => WebAnalyticsSiteRule.fromMap((value as Map).cast<String, dynamic>())); });
    ruleset = registerOutput<WebAnalyticsSiteRuleset>('ruleset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAnalyticsSiteRuleset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteTag = registerOutput<String>('siteTag');
    siteToken = registerOutput<String>('siteToken');
    snippet = registerOutput<String>('snippet');
    zoneTag = registerOutput<String?>('zoneTag');
  }

  /// Gets an existing [WebAnalyticsSite] resource's state with the given [name] and [id].
  static WebAnalyticsSite get(
    String name,
    pulumi.Input<String> id, {
    WebAnalyticsSiteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAnalyticsSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAnalyticsSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/webAnalyticsSite:WebAnalyticsSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    autoInstall = registerOutput<bool?>('autoInstall');
    created = registerOutput<String>('created');
    enabled = registerOutput<bool?>('enabled');
    host = registerOutput<String?>('host');
    lite = registerOutput<bool?>('lite');
    rules = registerOutput<List<WebAnalyticsSiteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAnalyticsSiteRule>(guardedValue, (value) => WebAnalyticsSiteRule.fromMap((value as Map).cast<String, dynamic>())); });
    ruleset = registerOutput<WebAnalyticsSiteRuleset>('ruleset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAnalyticsSiteRuleset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteTag = registerOutput<String>('siteTag');
    siteToken = registerOutput<String>('siteToken');
    snippet = registerOutput<String>('snippet');
    zoneTag = registerOutput<String?>('zoneTag');
  }

  /// Creates a typed reference to an existing [WebAnalyticsSite] resource.
  WebAnalyticsSite.reference(String urn)
    : super(
        'cloudflare:index/webAnalyticsSite:WebAnalyticsSite',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    autoInstall = registerOutput<bool?>('autoInstall');
    created = registerOutput<String>('created');
    enabled = registerOutput<bool?>('enabled');
    host = registerOutput<String?>('host');
    lite = registerOutput<bool?>('lite');
    rules = registerOutput<List<WebAnalyticsSiteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAnalyticsSiteRule>(guardedValue, (value) => WebAnalyticsSiteRule.fromMap((value as Map).cast<String, dynamic>())); });
    ruleset = registerOutput<WebAnalyticsSiteRuleset>('ruleset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAnalyticsSiteRuleset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteTag = registerOutput<String>('siteTag');
    siteToken = registerOutput<String>('siteToken');
    snippet = registerOutput<String>('snippet');
    zoneTag = registerOutput<String?>('zoneTag');
  }
}
