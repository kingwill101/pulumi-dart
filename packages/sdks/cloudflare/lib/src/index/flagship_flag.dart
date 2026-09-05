import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_flag_args.dart';
import 'flagship_flag_rule.dart';
import 'flagship_flag_state.dart';

/// Accepted Permissions
///
/// - `Flagship Read`
/// - `Flagship Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleFlagshipFlag = new cloudflare.FlagshipFlag("example_flagship_flag", {
///     accountId: "account_id",
///     appId: "app_id",
///     defaultVariation: "x",
///     enabled: true,
///     key: "x",
///     rules: [{
///         conditions: [{
///             attribute: "x",
///             operator: "equals",
///             value: {},
///         }],
///         priority: 1,
///         serveVariation: "x",
///         rollout: {
///             percentage: 0,
///             attribute: "x",
///         },
///     }],
///     variations: {
///         foo: "string",
///     },
///     description: "description",
///     type: "boolean",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_flagship_flag = cloudflare.FlagshipFlag("example_flagship_flag",
///     account_id="account_id",
///     app_id="app_id",
///     default_variation="x",
///     enabled=True,
///     key="x",
///     rules=[{
///         "conditions": [{
///             "attribute": "x",
///             "operator": "equals",
///             "value": {},
///         }],
///         "priority": 1,
///         "serve_variation": "x",
///         "rollout": {
///             "percentage": float(0),
///             "attribute": "x",
///         },
///     }],
///     variations={
///         "foo": "string",
///     },
///     description="description",
///     type="boolean")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFlagshipFlag = new Cloudflare.FlagshipFlag("example_flagship_flag", new()
///     {
///         AccountId = "account_id",
///         AppId = "app_id",
///         DefaultVariation = "x",
///         Enabled = true,
///         Key = "x",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.FlagshipFlagRuleArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Cloudflare.Inputs.FlagshipFlagRuleConditionArgs
///                     {
///                         Attribute = "x",
///                         Operator = "equals",
///                         Value = null,
///                     },
///                 },
///                 Priority = 1,
///                 ServeVariation = "x",
///                 Rollout = new Cloudflare.Inputs.FlagshipFlagRuleRolloutArgs
///                 {
///                     Percentage = 0,
///                     Attribute = "x",
///                 },
///             },
///         },
///         Variations =
///         {
///             { "foo", "string" },
///         },
///         Description = "description",
///         Type = "boolean",
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
/// 		_, err := cloudflare.NewFlagshipFlag(ctx, "example_flagship_flag", &cloudflare.FlagshipFlagArgs{
/// 			AccountId:        pulumi.String("account_id"),
/// 			AppId:            pulumi.String("app_id"),
/// 			DefaultVariation: pulumi.String("x"),
/// 			Enabled:          pulumi.Bool(true),
/// 			Key:              pulumi.String("x"),
/// 			Rules: cloudflare.FlagshipFlagRuleArray{
/// 				&cloudflare.FlagshipFlagRuleArgs{
/// 					Conditions: cloudflare.FlagshipFlagRuleConditionArray{
/// 						&cloudflare.FlagshipFlagRuleConditionArgs{
/// 							Attribute: pulumi.String("x"),
/// 							Operator:  pulumi.String("equals"),
/// 							Value:     pulumi.String{},
/// 						},
/// 					},
/// 					Priority:       pulumi.Int(1),
/// 					ServeVariation: pulumi.String("x"),
/// 					Rollout: &cloudflare.FlagshipFlagRuleRolloutArgs{
/// 						Percentage: pulumi.Float64(0),
/// 						Attribute:  pulumi.String("x"),
/// 					},
/// 				},
/// 			},
/// 			Variations: pulumi.StringMap{
/// 				"foo": pulumi.String("string"),
/// 			},
/// 			Description: pulumi.String("description"),
/// 			Type:        pulumi.String("boolean"),
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
/// resource "cloudflare_flagshipflag" "example_flagship_flag" {
///   account_id        = "account_id"
///   app_id            = "app_id"
///   default_variation = "x"
///   enabled           = true
///   key               = "x"
///   rules {
///     conditions {
///       attribute = "x"
///       operator  = "equals"
///       value     = {}
///     }
///     priority        = 1
///     serve_variation = "x"
///     rollout = {
///       percentage = 0
///       attribute  = "x"
///     }
///   }
///   variations = {
///     "foo" = "string"
///   }
///   description = "description"
///   type        = "boolean"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.FlagshipFlag;
/// import com.pulumi.cloudflare.FlagshipFlagArgs;
/// import com.pulumi.cloudflare.inputs.FlagshipFlagRuleArgs;
/// import com.pulumi.cloudflare.inputs.FlagshipFlagRuleConditionArgs;
/// import com.pulumi.cloudflare.inputs.FlagshipFlagRuleRolloutArgs;
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
///         var exampleFlagshipFlag = new FlagshipFlag("exampleFlagshipFlag", FlagshipFlagArgs.builder()
///             .accountId("account_id")
///             .appId("app_id")
///             .defaultVariation("x")
///             .enabled(true)
///             .key("x")
///             .rules(FlagshipFlagRuleArgs.builder()
///                 .conditions(FlagshipFlagRuleConditionArgs.builder()
///                     .attribute("x")
///                     .operator("equals")
///                     .value(Map.ofEntries(
///                     ))
///                     .build())
///                 .priority(1)
///                 .serveVariation("x")
///                 .rollout(FlagshipFlagRuleRolloutArgs.builder()
///                     .percentage(0.0)
///                     .attribute("x")
///                     .build())
///                 .build())
///             .variations(Map.of("foo", "string"))
///             .description("description")
///             .type("boolean")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFlagshipFlag:
///     type: cloudflare:FlagshipFlag
///     name: example_flagship_flag
///     properties:
///       accountId: account_id
///       appId: app_id
///       defaultVariation: x
///       enabled: true
///       key: x
///       rules:
///         - conditions:
///             - attribute: x
///               operator: equals
///               value: {}
///           priority: 1
///           serveVariation: x
///           rollout:
///             percentage: 0
///             attribute: x
///       variations:
///         foo: string
///       description: description
///       type: boolean
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class FlagshipFlag extends pulumi.CustomResource {
  /// Cloudflare account ID.
  late final pulumi.Output<String> accountId;
  /// App identifier.
  late final pulumi.Output<String> appId;
  /// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  late final pulumi.Output<String> defaultVariation;
  late final pulumi.Output<String?> description;
  /// When false, the flag bypasses all rules and always serves `defaultVariation`.
  late final pulumi.Output<bool> enabled;
  /// Flag key (slug).
  late final pulumi.Output<String?> flagKey;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  late final pulumi.Output<String> key;
  /// Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  late final pulumi.Output<List<FlagshipFlagRule>> rules;
  /// Value type of the flag's variations. Inferred from the variation values on write, so it may be omitted in requests.
  /// Available values: "boolean", "string", "number", "json".
  late final pulumi.Output<String?> type;
  late final pulumi.Output<String> updatedAt;
  late final pulumi.Output<String> updatedBy;
  /// Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  late final pulumi.Output<Map<String, String>> variations;

  /// Creates a new [FlagshipFlag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlagshipFlag]. {@macro pulumi_index_flagship_flag_flagship_flag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlagshipFlag(
    String name, {
    FlagshipFlagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/flagshipFlag:FlagshipFlag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String>('appId');
    defaultVariation = registerOutput<String>('defaultVariation');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    flagKey = registerOutput<String?>('flagKey');
    key = registerOutput<String>('key');
    rules = registerOutput<List<FlagshipFlagRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlagshipFlagRule>(guardedValue, (value) => FlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
    variations = registerOutput<Map<String, String>>('variations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [FlagshipFlag] resource's state with the given [name] and [id].
  static FlagshipFlag get(
    String name,
    pulumi.Input<String> id, {
    FlagshipFlagState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlagshipFlag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlagshipFlag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/flagshipFlag:FlagshipFlag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String>('appId');
    defaultVariation = registerOutput<String>('defaultVariation');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    flagKey = registerOutput<String?>('flagKey');
    key = registerOutput<String>('key');
    rules = registerOutput<List<FlagshipFlagRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlagshipFlagRule>(guardedValue, (value) => FlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
    variations = registerOutput<Map<String, String>>('variations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [FlagshipFlag] resource.
  FlagshipFlag.reference(String urn)
    : super(
        'cloudflare:index/flagshipFlag:FlagshipFlag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String>('appId');
    defaultVariation = registerOutput<String>('defaultVariation');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    flagKey = registerOutput<String?>('flagKey');
    key = registerOutput<String>('key');
    rules = registerOutput<List<FlagshipFlagRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlagshipFlagRule>(guardedValue, (value) => FlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
    variations = registerOutput<Map<String, String>>('variations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
