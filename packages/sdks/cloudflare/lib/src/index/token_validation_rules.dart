import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_rules_args.dart';
import 'token_validation_rules_position.dart';
import 'token_validation_rules_selector.dart';
import 'token_validation_rules_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleTokenValidationRules = new cloudflare.TokenValidationRules("example_token_validation_rules", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     action: "log",
///     description: "Long description for Token Validation Rule",
///     enabled: true,
///     expression: "is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")",
///     selector: {
///         excludes: [{
///             operationIds: [
///                 "f9c5615e-fe15-48ce-bec6-cfc1946f1bec",
///                 "56828eae-035a-4396-ba07-51c66d680a04",
///             ],
///         }],
///         includes: [{
///             host: [
///                 "v1.example.com",
///                 "v2.example.com",
///             ],
///         }],
///     },
///     title: "Example Token Validation Rule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_token_validation_rules = cloudflare.TokenValidationRules("example_token_validation_rules",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     action="log",
///     description="Long description for Token Validation Rule",
///     enabled=True,
///     expression="is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")",
///     selector={
///         "excludes": [{
///             "operation_ids": [
///                 "f9c5615e-fe15-48ce-bec6-cfc1946f1bec",
///                 "56828eae-035a-4396-ba07-51c66d680a04",
///             ],
///         }],
///         "includes": [{
///             "host": [
///                 "v1.example.com",
///                 "v2.example.com",
///             ],
///         }],
///     },
///     title="Example Token Validation Rule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTokenValidationRules = new Cloudflare.TokenValidationRules("example_token_validation_rules", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Action = "log",
///         Description = "Long description for Token Validation Rule",
///         Enabled = true,
///         Expression = "is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")",
///         Selector = new Cloudflare.Inputs.TokenValidationRulesSelectorArgs
///         {
///             Excludes = new[]
///             {
///                 new Cloudflare.Inputs.TokenValidationRulesSelectorExcludeArgs
///                 {
///                     OperationIds = new[]
///                     {
///                         "f9c5615e-fe15-48ce-bec6-cfc1946f1bec",
///                         "56828eae-035a-4396-ba07-51c66d680a04",
///                     },
///                 },
///             },
///             Includes = new[]
///             {
///                 new Cloudflare.Inputs.TokenValidationRulesSelectorIncludeArgs
///                 {
///                     Host = new[]
///                     {
///                         "v1.example.com",
///                         "v2.example.com",
///                     },
///                 },
///             },
///         },
///         Title = "Example Token Validation Rule",
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
/// 		_, err := cloudflare.NewTokenValidationRules(ctx, "example_token_validation_rules", &cloudflare.TokenValidationRulesArgs{
/// 			ZoneId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Action:      pulumi.String("log"),
/// 			Description: pulumi.String("Long description for Token Validation Rule"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Expression:  pulumi.String("is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")"),
/// 			Selector: &cloudflare.TokenValidationRulesSelectorArgs{
/// 				Excludes: cloudflare.TokenValidationRulesSelectorExcludeArray{
/// 					&cloudflare.TokenValidationRulesSelectorExcludeArgs{
/// 						OperationIds: pulumi.StringArray{
/// 							pulumi.String("f9c5615e-fe15-48ce-bec6-cfc1946f1bec"),
/// 							pulumi.String("56828eae-035a-4396-ba07-51c66d680a04"),
/// 						},
/// 					},
/// 				},
/// 				Includes: cloudflare.TokenValidationRulesSelectorIncludeArray{
/// 					&cloudflare.TokenValidationRulesSelectorIncludeArgs{
/// 						Host: []string{
/// 							"v1.example.com",
/// 							"v2.example.com",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Title: pulumi.String("Example Token Validation Rule"),
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
/// resource "cloudflare_tokenvalidationrules" "example_token_validation_rules" {
///   zone_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   action      = "log"
///   description = "Long description for Token Validation Rule"
///   enabled     = true
///   expression  = "is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")"
///   selector = {
///     excludes = [{
///       "operationIds" = ["f9c5615e-fe15-48ce-bec6-cfc1946f1bec", "56828eae-035a-4396-ba07-51c66d680a04"]
///     }]
///     includes = [{
///       "host" = ["v1.example.com", "v2.example.com"]
///     }]
///   }
///   title = "Example Token Validation Rule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.TokenValidationRules;
/// import com.pulumi.cloudflare.TokenValidationRulesArgs;
/// import com.pulumi.cloudflare.inputs.TokenValidationRulesSelectorArgs;
/// import com.pulumi.cloudflare.inputs.TokenValidationRulesSelectorExcludeArgs;
/// import com.pulumi.cloudflare.inputs.TokenValidationRulesSelectorIncludeArgs;
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
///         var exampleTokenValidationRules = new TokenValidationRules("exampleTokenValidationRules", TokenValidationRulesArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .action("log")
///             .description("Long description for Token Validation Rule")
///             .enabled(true)
///             .expression("is_jwt_valid(\"52973293-cb04-4a97-8f55-e7d2ad1107dd\") or is_jwt_valid(\"46eab8d1-6376-45e3-968f-2c649d77d423\")")
///             .selector(TokenValidationRulesSelectorArgs.builder()
///                 .excludes(TokenValidationRulesSelectorExcludeArgs.builder()
///                     .operationIds(
///                         "f9c5615e-fe15-48ce-bec6-cfc1946f1bec",
///                         "56828eae-035a-4396-ba07-51c66d680a04")
///                     .build())
///                 .includes(TokenValidationRulesSelectorIncludeArgs.builder()
///                     .host(Arrays.asList(
///                         "v1.example.com",
///                         "v2.example.com"))
///                     .build())
///                 .build())
///             .title("Example Token Validation Rule")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTokenValidationRules:
///     type: cloudflare:TokenValidationRules
///     name: example_token_validation_rules
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       action: log
///       description: Long description for Token Validation Rule
///       enabled: true
///       expression: is_jwt_valid("52973293-cb04-4a97-8f55-e7d2ad1107dd") or is_jwt_valid("46eab8d1-6376-45e3-968f-2c649d77d423")
///       selector:
///         excludes:
///           - operationIds:
///               - f9c5615e-fe15-48ce-bec6-cfc1946f1bec
///               - 56828eae-035a-4396-ba07-51c66d680a04
///         includes:
///           - host:
///               - v1.example.com
///               - v2.example.com
///       title: Example Token Validation Rule
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/tokenValidationRules:TokenValidationRules example '<zone_id>/<rule_id>'
/// ```
class TokenValidationRules extends pulumi.CustomResource {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  late final pulumi.Output<String> action;
  late final pulumi.Output<String> createdAt;
  /// A human-readable description that gives more details than `title`.
  late final pulumi.Output<String> description;
  /// Toggle rule on or off.
  late final pulumi.Output<bool> enabled;
  /// Rule expression. Requests that fail to match this expression will be subject to `action`.
  late final pulumi.Output<String> expression;
  late final pulumi.Output<String> lastUpdated;
  /// Update rule order among zone rules.
  late final pulumi.Output<TokenValidationRulesPosition?> position;
  /// Select operations covered by this rule.
  ///
  /// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
  late final pulumi.Output<TokenValidationRulesSelector> selector;
  /// A human-readable name for the rule.
  late final pulumi.Output<String> title;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TokenValidationRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TokenValidationRules]. {@macro pulumi_index_token_validation_rules_token_validation_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TokenValidationRules(
    String name, {
    TokenValidationRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tokenValidationRules:TokenValidationRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    lastUpdated = registerOutput<String>('lastUpdated');
    position = registerOutput<TokenValidationRulesPosition?>('position', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesPosition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selector = registerOutput<TokenValidationRulesSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [TokenValidationRules] resource's state with the given [name] and [id].
  static TokenValidationRules get(
    String name,
    pulumi.Input<String> id, {
    TokenValidationRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TokenValidationRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TokenValidationRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tokenValidationRules:TokenValidationRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    lastUpdated = registerOutput<String>('lastUpdated');
    position = registerOutput<TokenValidationRulesPosition?>('position', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesPosition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selector = registerOutput<TokenValidationRulesSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [TokenValidationRules] resource.
  TokenValidationRules.reference(String urn)
    : super(
        'cloudflare:index/tokenValidationRules:TokenValidationRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expression = registerOutput<String>('expression');
    lastUpdated = registerOutput<String>('lastUpdated');
    position = registerOutput<TokenValidationRulesPosition?>('position', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesPosition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selector = registerOutput<TokenValidationRulesSelector>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationRulesSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    zoneId = registerOutput<String>('zoneId');
  }
}
