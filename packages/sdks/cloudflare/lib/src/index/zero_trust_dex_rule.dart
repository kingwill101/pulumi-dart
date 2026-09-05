import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_rule_args.dart';
import 'zero_trust_dex_rule_state.dart';
import 'zero_trust_dex_rule_targeted_test.dart';

/// Accepted Permissions
///
/// - `Cloudflare DEX Read`
/// - `Cloudflare DEX Write`
/// - `Zero Trust Read`
/// - `Zero Trust Report`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDexRule = new cloudflare.ZeroTrustDexRule("example_zero_trust_dex_rule", {
///     accountId: "01a7362d577a6c3019a474fd6f485823",
///     match: "match",
///     name: "name",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dex_rule = cloudflare.ZeroTrustDexRule("example_zero_trust_dex_rule",
///     account_id="01a7362d577a6c3019a474fd6f485823",
///     match="match",
///     name="name",
///     description="description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDexRule = new Cloudflare.ZeroTrustDexRule("example_zero_trust_dex_rule", new()
///     {
///         AccountId = "01a7362d577a6c3019a474fd6f485823",
///         Match = "match",
///         Name = "name",
///         Description = "description",
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
/// 		_, err := cloudflare.NewZeroTrustDexRule(ctx, "example_zero_trust_dex_rule", &cloudflare.ZeroTrustDexRuleArgs{
/// 			AccountId:   pulumi.String("01a7362d577a6c3019a474fd6f485823"),
/// 			Match:       pulumi.String("match"),
/// 			Name:        pulumi.String("name"),
/// 			Description: pulumi.String("description"),
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
/// resource "cloudflare_zerotrustdexrule" "example_zero_trust_dex_rule" {
///   account_id  = "01a7362d577a6c3019a474fd6f485823"
///   match       = "match"
///   name        = "name"
///   description = "description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDexRule;
/// import com.pulumi.cloudflare.ZeroTrustDexRuleArgs;
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
///         var exampleZeroTrustDexRule = new ZeroTrustDexRule("exampleZeroTrustDexRule", ZeroTrustDexRuleArgs.builder()
///             .accountId("01a7362d577a6c3019a474fd6f485823")
///             .match("match")
///             .name("name")
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDexRule:
///     type: cloudflare:ZeroTrustDexRule
///     name: example_zero_trust_dex_rule
///     properties:
///       accountId: 01a7362d577a6c3019a474fd6f485823
///       match: match
///       name: name
///       description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDexRule:ZeroTrustDexRule example '<account_id>/<rule_id>'
/// ```
class ZeroTrustDexRule extends pulumi.CustomResource {
  /// Unique identifier linked to an account.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  /// The wirefilter expression to match.
  late final pulumi.Output<String> match;
  /// The name of the Rule.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<ZeroTrustDexRuleTargetedTest>> targetedTests;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDexRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDexRule]. {@macro pulumi_index_zero_trust_dex_rule_zero_trust_dex_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDexRule(
    String name, {
    ZeroTrustDexRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDexRule:ZeroTrustDexRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    targetedTests = registerOutput<List<ZeroTrustDexRuleTargetedTest>>('targetedTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexRuleTargetedTest>(guardedValue, (value) => ZeroTrustDexRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDexRule] resource's state with the given [name] and [id].
  static ZeroTrustDexRule get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDexRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDexRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDexRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDexRule:ZeroTrustDexRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    targetedTests = registerOutput<List<ZeroTrustDexRuleTargetedTest>>('targetedTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexRuleTargetedTest>(guardedValue, (value) => ZeroTrustDexRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDexRule] resource.
  ZeroTrustDexRule.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDexRule:ZeroTrustDexRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    targetedTests = registerOutput<List<ZeroTrustDexRuleTargetedTest>>('targetedTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexRuleTargetedTest>(guardedValue, (value) => ZeroTrustDexRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
