import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_catch_all_action.dart';
import 'email_routing_catch_all_args.dart';
import 'email_routing_catch_all_matcher.dart';
import 'email_routing_catch_all_state.dart';

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
/// const exampleEmailRoutingCatchAll = new cloudflare.EmailRoutingCatchAll("example_email_routing_catch_all", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     actions: [{
///         type: "forward",
///         value: ["destinationaddress@example.net"],
///     }],
///     matchers: [{
///         type: "all",
///     }],
///     enabled: true,
///     name: "Send to user@example.net rule.",
///     ownerWorkerTag: "a7e6fb77503c41d8a7f3113c6918f10c",
///     source: "api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_routing_catch_all = cloudflare.EmailRoutingCatchAll("example_email_routing_catch_all",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     actions=[{
///         "type": "forward",
///         "value": ["destinationaddress@example.net"],
///     }],
///     matchers=[{
///         "type": "all",
///     }],
///     enabled=True,
///     name="Send to user@example.net rule.",
///     owner_worker_tag="a7e6fb77503c41d8a7f3113c6918f10c",
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
///     var exampleEmailRoutingCatchAll = new Cloudflare.EmailRoutingCatchAll("example_email_routing_catch_all", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Actions = new[]
///         {
///             new Cloudflare.Inputs.EmailRoutingCatchAllActionArgs
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
///             new Cloudflare.Inputs.EmailRoutingCatchAllMatcherArgs
///             {
///                 Type = "all",
///             },
///         },
///         Enabled = true,
///         Name = "Send to user@example.net rule.",
///         OwnerWorkerTag = "a7e6fb77503c41d8a7f3113c6918f10c",
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
/// 		_, err := cloudflare.NewEmailRoutingCatchAll(ctx, "example_email_routing_catch_all", &cloudflare.EmailRoutingCatchAllArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Actions: cloudflare.EmailRoutingCatchAllActionArray{
/// 				&cloudflare.EmailRoutingCatchAllActionArgs{
/// 					Type: pulumi.String("forward"),
/// 					Value: []string{
/// 						"destinationaddress@example.net",
/// 					},
/// 				},
/// 			},
/// 			Matchers: cloudflare.EmailRoutingCatchAllMatcherArray{
/// 				&cloudflare.EmailRoutingCatchAllMatcherArgs{
/// 					Type: pulumi.String("all"),
/// 				},
/// 			},
/// 			Enabled:        pulumi.Bool(true),
/// 			Name:           pulumi.String("Send to user@example.net rule."),
/// 			OwnerWorkerTag: pulumi.String("a7e6fb77503c41d8a7f3113c6918f10c"),
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
/// resource "cloudflare_emailroutingcatchall" "example_email_routing_catch_all" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   actions {
///     type  = "forward"
///     value = ["destinationaddress@example.net"]
///   }
///   matchers {
///     type = "all"
///   }
///   enabled          = true
///   name             = "Send to user@example.net rule."
///   owner_worker_tag = "a7e6fb77503c41d8a7f3113c6918f10c"
///   source           = "api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailRoutingCatchAll;
/// import com.pulumi.cloudflare.EmailRoutingCatchAllArgs;
/// import com.pulumi.cloudflare.inputs.EmailRoutingCatchAllActionArgs;
/// import com.pulumi.cloudflare.inputs.EmailRoutingCatchAllMatcherArgs;
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
///         var exampleEmailRoutingCatchAll = new EmailRoutingCatchAll("exampleEmailRoutingCatchAll", EmailRoutingCatchAllArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .actions(EmailRoutingCatchAllActionArgs.builder()
///                 .type("forward")
///                 .value(Arrays.asList("destinationaddress@example.net"))
///                 .build())
///             .matchers(EmailRoutingCatchAllMatcherArgs.builder()
///                 .type("all")
///                 .build())
///             .enabled(true)
///             .name("Send to user@example.net rule.")
///             .ownerWorkerTag("a7e6fb77503c41d8a7f3113c6918f10c")
///             .source("api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailRoutingCatchAll:
///     type: cloudflare:EmailRoutingCatchAll
///     name: example_email_routing_catch_all
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       actions:
///         - type: forward
///           value:
///             - destinationaddress@example.net
///       matchers:
///         - type: all
///       enabled: true
///       name: Send to user@example.net rule.
///       ownerWorkerTag: a7e6fb77503c41d8a7f3113c6918f10c
///       source: api
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailRoutingCatchAll:EmailRoutingCatchAll example '<zone_id>'
/// ```
class EmailRoutingCatchAll extends pulumi.CustomResource {
  /// List actions for the catch-all routing rule.
  late final pulumi.Output<List<EmailRoutingCatchAllAction>> actions;
  /// Routing rule status.
  late final pulumi.Output<bool> enabled;
  /// List of matchers for the catch-all routing rule.
  late final pulumi.Output<List<EmailRoutingCatchAllMatcher>> matchers;
  /// Routing rule name.
  late final pulumi.Output<String?> name;
  /// Public tag (script_tag) of the Worker that owns this rule. Required when
  /// `source` is `wrangler`.
  late final pulumi.Output<String?> ownerWorkerTag;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  late final pulumi.Output<String> source;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  late final pulumi.Output<String> tag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EmailRoutingCatchAll].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailRoutingCatchAll]. {@macro pulumi_index_email_routing_catch_all_email_routing_catch_all_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailRoutingCatchAll(
    String name, {
    EmailRoutingCatchAllArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingCatchAll:EmailRoutingCatchAll',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    actions = registerOutput<List<EmailRoutingCatchAllAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllAction>(guardedValue, (value) => EmailRoutingCatchAllAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingCatchAllMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllMatcher>(guardedValue, (value) => EmailRoutingCatchAllMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EmailRoutingCatchAll] resource's state with the given [name] and [id].
  static EmailRoutingCatchAll get(
    String name,
    pulumi.Input<String> id, {
    EmailRoutingCatchAllState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailRoutingCatchAll._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailRoutingCatchAll._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingCatchAll:EmailRoutingCatchAll',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<EmailRoutingCatchAllAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllAction>(guardedValue, (value) => EmailRoutingCatchAllAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingCatchAllMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllMatcher>(guardedValue, (value) => EmailRoutingCatchAllMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [EmailRoutingCatchAll] resource.
  EmailRoutingCatchAll.reference(String urn)
    : super(
        'cloudflare:index/emailRoutingCatchAll:EmailRoutingCatchAll',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<EmailRoutingCatchAllAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllAction>(guardedValue, (value) => EmailRoutingCatchAllAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    matchers = registerOutput<List<EmailRoutingCatchAllMatcher>>('matchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingCatchAllMatcher>(guardedValue, (value) => EmailRoutingCatchAllMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    ownerWorkerTag = registerOutput<String?>('ownerWorkerTag');
    source = registerOutput<String>('source');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }
}
