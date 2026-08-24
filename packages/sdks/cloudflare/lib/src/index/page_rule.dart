import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_rule_actions.dart';
import 'page_rule_args.dart';
import 'page_rule_state.dart';

/// Accepted Permissions
///
/// - `Access: Apps and Policies Read`
/// - `Access: Apps and Policies Revoke`
/// - `Access: Apps and Policies Write`
/// - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write`
/// - `Analytics Read`
/// - `Apps Write`
/// - `Cache Purge`
/// - `DNS Read`
/// - `DNS Write`
/// - `Firewall Services Read`
/// - `Firewall Services Write`
/// - `Load Balancers Read`
/// - `Load Balancers Write`
/// - `Logs Read`
/// - `Logs Write`
/// - `Page Rules Read`
/// - `Page Rules Write`
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
/// - `Stream Read`
/// - `Stream Write`
/// - `Trust and Safety Read`
/// - `Trust and Safety Write`
/// - `Workers Routes Read`
/// - `Workers Routes Write`
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Zaraz Admin`
/// - `Zaraz Edit`
/// - `Zaraz Read`
/// - `Zero Trust: PII Read`
/// - `Zone Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const examplePageRule = new cloudflare.PageRule("example_page_rule", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     target: "example.com/*",
///     priority: 1,
///     status: "active",
///     actions: {
///         forwardingUrl: {
///             url: "https://example.com/foo",
///             statusCode: 301,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_page_rule = cloudflare.PageRule("example_page_rule",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     target="example.com/*",
///     priority=1,
///     status="active",
///     actions={
///         "forwarding_url": {
///             "url": "https://example.com/foo",
///             "status_code": 301,
///         },
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
///     var examplePageRule = new Cloudflare.PageRule("example_page_rule", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Target = "example.com/*",
///         Priority = 1,
///         Status = "active",
///         Actions = new Cloudflare.Inputs.PageRuleActionsArgs
///         {
///             ForwardingUrl = new Cloudflare.Inputs.PageRuleActionsForwardingUrlArgs
///             {
///                 Url = "https://example.com/foo",
///                 StatusCode = 301,
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
/// 		_, err := cloudflare.NewPageRule(ctx, "example_page_rule", &cloudflare.PageRuleArgs{
/// 			ZoneId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Target:   pulumi.String("example.com/*"),
/// 			Priority: pulumi.Int(1),
/// 			Status:   pulumi.String("active"),
/// 			Actions: &cloudflare.PageRuleActionsArgs{
/// 				ForwardingUrl: &cloudflare.PageRuleActionsForwardingUrlArgs{
/// 					Url:        pulumi.String("https://example.com/foo"),
/// 					StatusCode: pulumi.Int(301),
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
/// resource "cloudflare_pagerule" "example_page_rule" {
///   zone_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   target   = "example.com/*"
///   priority = 1
///   status   = "active"
///   actions = {
///     forwarding_url = {
///       url         = "https://example.com/foo"
///       status_code = 301
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.PageRule;
/// import com.pulumi.cloudflare.PageRuleArgs;
/// import com.pulumi.cloudflare.inputs.PageRuleActionsArgs;
/// import com.pulumi.cloudflare.inputs.PageRuleActionsForwardingUrlArgs;
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
///         var examplePageRule = new PageRule("examplePageRule", PageRuleArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .target("example.com/*")
///             .priority(1)
///             .status("active")
///             .actions(PageRuleActionsArgs.builder()
///                 .forwardingUrl(PageRuleActionsForwardingUrlArgs.builder()
///                     .url("https://example.com/foo")
///                     .statusCode(301)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePageRule:
///     type: cloudflare:PageRule
///     name: example_page_rule
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       target: example.com/*
///       priority: 1
///       status: active
///       actions:
///         forwardingUrl:
///           url: https://example.com/foo
///           statusCode: 301
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pageRule:PageRule example '<zone_id>/<pagerule_id>'
/// ```
class PageRule extends pulumi.CustomResource {
  late final pulumi.Output<PageRuleActions> actions;
  /// The timestamp of when the Page Rule was created.
  late final pulumi.Output<String> createdOn;
  /// The timestamp of when the Page Rule was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The priority of the rule, used to define which Page Rule is processed
  /// over another. A higher number indicates a higher priority. For example,
  /// if you have a catch-all Page Rule (rule A: `/images/*`) but want a more
  /// specific Page Rule to take precedence (rule B: `/images/special/*`),
  /// specify a higher priority for rule B so it overrides rule A.
  late final pulumi.Output<int> priority;
  /// The status of the Page Rule.
  /// Available values: "active", "disabled".
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> target;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [PageRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PageRule]. {@macro pulumi_index_page_rule_page_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PageRule(
    String name, {
    PageRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pageRule:PageRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    actions = registerOutput<PageRuleActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PageRuleActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    priority = registerOutput<int>('priority');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [PageRule] resource's state with the given [name] and [id].
  static PageRule get(
    String name,
    pulumi.Input<String> id, {
    PageRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PageRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PageRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pageRule:PageRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<PageRuleActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PageRuleActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    priority = registerOutput<int>('priority');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [PageRule] resource.
  PageRule.reference(String urn)
    : super(
        'cloudflare:index/pageRule:PageRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<PageRuleActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PageRuleActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    priority = registerOutput<int>('priority');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }
}
