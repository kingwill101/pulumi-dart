import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_agent_blocking_rule_args.dart';
import 'user_agent_blocking_rule_configuration.dart';
import 'user_agent_blocking_rule_state.dart';

/// Accepted Permissions
///
/// - `Firewall Services Read`
/// - `Firewall Services Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleUserAgentBlockingRule = new cloudflare.UserAgentBlockingRule("example_user_agent_blocking_rule", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     configuration: {
///         target: "ua",
///         value: "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)",
///     },
///     mode: "challenge",
///     description: "Prevent multiple login failures to mitigate brute force attacks",
///     paused: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_user_agent_blocking_rule = cloudflare.UserAgentBlockingRule("example_user_agent_blocking_rule",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     configuration={
///         "target": "ua",
///         "value": "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)",
///     },
///     mode="challenge",
///     description="Prevent multiple login failures to mitigate brute force attacks",
///     paused=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUserAgentBlockingRule = new Cloudflare.UserAgentBlockingRule("example_user_agent_blocking_rule", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Configuration = new Cloudflare.Inputs.UserAgentBlockingRuleConfigurationArgs
///         {
///             Target = "ua",
///             Value = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)",
///         },
///         Mode = "challenge",
///         Description = "Prevent multiple login failures to mitigate brute force attacks",
///         Paused = false,
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
/// 		_, err := cloudflare.NewUserAgentBlockingRule(ctx, "example_user_agent_blocking_rule", &cloudflare.UserAgentBlockingRuleArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Configuration: &cloudflare.UserAgentBlockingRuleConfigurationArgs{
/// 				Target: pulumi.String("ua"),
/// 				Value:  pulumi.String("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"),
/// 			},
/// 			Mode:        pulumi.String("challenge"),
/// 			Description: pulumi.String("Prevent multiple login failures to mitigate brute force attacks"),
/// 			Paused:      pulumi.Bool(false),
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
/// resource "cloudflare_useragentblockingrule" "example_user_agent_blocking_rule" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   configuration = {
///     target = "ua"
///     value  = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"
///   }
///   mode        = "challenge"
///   description = "Prevent multiple login failures to mitigate brute force attacks"
///   paused      = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.UserAgentBlockingRule;
/// import com.pulumi.cloudflare.UserAgentBlockingRuleArgs;
/// import com.pulumi.cloudflare.inputs.UserAgentBlockingRuleConfigurationArgs;
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
///         var exampleUserAgentBlockingRule = new UserAgentBlockingRule("exampleUserAgentBlockingRule", UserAgentBlockingRuleArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .configuration(UserAgentBlockingRuleConfigurationArgs.builder()
///                 .target("ua")
///                 .value("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)")
///                 .build())
///             .mode("challenge")
///             .description("Prevent multiple login failures to mitigate brute force attacks")
///             .paused(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUserAgentBlockingRule:
///     type: cloudflare:UserAgentBlockingRule
///     name: example_user_agent_blocking_rule
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       configuration:
///         target: ua
///         value: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)
///       mode: challenge
///       description: Prevent multiple login failures to mitigate brute force attacks
///       paused: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/userAgentBlockingRule:UserAgentBlockingRule example '<zone_id>/<ua_rule_id>'
/// ```
class UserAgentBlockingRule extends pulumi.CustomResource {
  late final pulumi.Output<UserAgentBlockingRuleConfiguration> configuration;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  late final pulumi.Output<String?> description;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  late final pulumi.Output<String> mode;
  /// When true, indicates that the rule is currently paused.
  late final pulumi.Output<bool> paused;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [UserAgentBlockingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAgentBlockingRule]. {@macro pulumi_index_user_agent_blocking_rule_user_agent_blocking_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAgentBlockingRule(
    String name, {
    UserAgentBlockingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userAgentBlockingRule:UserAgentBlockingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    configuration = registerOutput<UserAgentBlockingRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserAgentBlockingRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    mode = registerOutput<String>('mode');
    paused = registerOutput<bool>('paused');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [UserAgentBlockingRule] resource's state with the given [name] and [id].
  static UserAgentBlockingRule get(
    String name,
    pulumi.Input<String> id, {
    UserAgentBlockingRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserAgentBlockingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserAgentBlockingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userAgentBlockingRule:UserAgentBlockingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<UserAgentBlockingRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserAgentBlockingRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    mode = registerOutput<String>('mode');
    paused = registerOutput<bool>('paused');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [UserAgentBlockingRule] resource.
  UserAgentBlockingRule.reference(String urn)
    : super(
        'cloudflare:index/userAgentBlockingRule:UserAgentBlockingRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configuration = registerOutput<UserAgentBlockingRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserAgentBlockingRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    mode = registerOutput<String>('mode');
    paused = registerOutput<bool>('paused');
    zoneId = registerOutput<String>('zoneId');
  }
}
