import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rule_args.dart';
import 'access_rule_configuration.dart';
import 'access_rule_scope.dart';
import 'access_rule_state.dart';

/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read`
/// - `Account Firewall Access Rules Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAccessRule = new cloudflare.AccessRule("example_access_rule", {
///     configuration: {
///         target: "ip",
///         value: "198.51.100.4",
///     },
///     mode: "challenge",
///     zoneId: "zone_id",
///     notes: "This rule is enabled because of an event that occurred on date X.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_access_rule = cloudflare.AccessRule("example_access_rule",
///     configuration={
///         "target": "ip",
///         "value": "198.51.100.4",
///     },
///     mode="challenge",
///     zone_id="zone_id",
///     notes="This rule is enabled because of an event that occurred on date X.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccessRule = new Cloudflare.AccessRule("example_access_rule", new()
///     {
///         Configuration = new Cloudflare.Inputs.AccessRuleConfigurationArgs
///         {
///             Target = "ip",
///             Value = "198.51.100.4",
///         },
///         Mode = "challenge",
///         ZoneId = "zone_id",
///         Notes = "This rule is enabled because of an event that occurred on date X.",
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
/// 		_, err := cloudflare.NewAccessRule(ctx, "example_access_rule", &cloudflare.AccessRuleArgs{
/// 			Configuration: &cloudflare.AccessRuleConfigurationArgs{
/// 				Target: pulumi.String("ip"),
/// 				Value:  pulumi.String("198.51.100.4"),
/// 			},
/// 			Mode:   pulumi.String("challenge"),
/// 			ZoneId: pulumi.String("zone_id"),
/// 			Notes:  pulumi.String("This rule is enabled because of an event that occurred on date X."),
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
/// resource "cloudflare_accessrule" "example_access_rule" {
///   configuration = {
///     target = "ip"
///     value  = "198.51.100.4"
///   }
///   mode    = "challenge"
///   zone_id = "zone_id"
///   notes   = "This rule is enabled because of an event that occurred on date X."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AccessRule;
/// import com.pulumi.cloudflare.AccessRuleArgs;
/// import com.pulumi.cloudflare.inputs.AccessRuleConfigurationArgs;
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
///         var exampleAccessRule = new AccessRule("exampleAccessRule", AccessRuleArgs.builder()
///             .configuration(AccessRuleConfigurationArgs.builder()
///                 .target("ip")
///                 .value("198.51.100.4")
///                 .build())
///             .mode("challenge")
///             .zoneId("zone_id")
///             .notes("This rule is enabled because of an event that occurred on date X.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccessRule:
///     type: cloudflare:AccessRule
///     name: example_access_rule
///     properties:
///       configuration:
///         target: ip
///         value: 198.51.100.4
///       mode: challenge
///       zoneId: zone_id
///       notes: This rule is enabled because of an event that occurred on date X.
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accessRule:AccessRule example '<{accounts|zones}/{account_id|zone_id}>/<rule_id>'
/// ```
class AccessRule extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// The available actions that a rule can apply to a matched request.
  late final pulumi.Output<List<String>> allowedModes;
  /// The rule configuration.
  late final pulumi.Output<AccessRuleConfiguration> configuration;
  /// The timestamp of when the rule was created.
  late final pulumi.Output<String> createdOn;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  late final pulumi.Output<String> mode;
  /// The timestamp of when the rule was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// An informative summary of the rule, typically used as a reminder or explanation.
  late final pulumi.Output<String> notes;
  /// All zones owned by the user will have the rule applied.
  late final pulumi.Output<AccessRuleScope> scope;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessRule]. {@macro pulumi_index_access_rule_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessRule(
    String name, {
    AccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessRule:AccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowedModes = registerOutput<List<String>>('allowedModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<AccessRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    notes = registerOutput<String>('notes');
    scope = registerOutput<AccessRuleScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessRule] resource's state with the given [name] and [id].
  static AccessRule get(
    String name,
    pulumi.Input<String> id, {
    AccessRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessRule:AccessRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowedModes = registerOutput<List<String>>('allowedModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<AccessRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    notes = registerOutput<String>('notes');
    scope = registerOutput<AccessRuleScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessRule] resource.
  AccessRule.reference(String urn)
    : super(
        'cloudflare:index/accessRule:AccessRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    allowedModes = registerOutput<List<String>>('allowedModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<AccessRuleConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    notes = registerOutput<String>('notes');
    scope = registerOutput<AccessRuleScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessRuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String?>('zoneId');
  }
}
