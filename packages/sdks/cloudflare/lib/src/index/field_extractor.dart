import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_extractor_args.dart';
import 'field_extractor_rule.dart';
import 'field_extractor_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleFieldExtractor = new cloudflare.FieldExtractor("example_field_extractor", {
///     accountId: "123456",
///     extractor: "llm_prompts",
///     rules: [{
///         fields: [{
///             expression: "x",
///             name: "x",
///         }],
///         ref: "x",
///         description: "description",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_field_extractor = cloudflare.FieldExtractor("example_field_extractor",
///     account_id="123456",
///     extractor="llm_prompts",
///     rules=[{
///         "fields": [{
///             "expression": "x",
///             "name": "x",
///         }],
///         "ref": "x",
///         "description": "description",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFieldExtractor = new Cloudflare.FieldExtractor("example_field_extractor", new()
///     {
///         AccountId = "123456",
///         Extractor = "llm_prompts",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.FieldExtractorRuleArgs
///             {
///                 Fields = new[]
///                 {
///                     new Cloudflare.Inputs.FieldExtractorRuleFieldArgs
///                     {
///                         Expression = "x",
///                         Name = "x",
///                     },
///                 },
///                 Ref = "x",
///                 Description = "description",
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
/// 		_, err := cloudflare.NewFieldExtractor(ctx, "example_field_extractor", &cloudflare.FieldExtractorArgs{
/// 			AccountId: pulumi.String("123456"),
/// 			Extractor: pulumi.String("llm_prompts"),
/// 			Rules: cloudflare.FieldExtractorRuleArray{
/// 				&cloudflare.FieldExtractorRuleArgs{
/// 					Fields: cloudflare.FieldExtractorRuleFieldArray{
/// 						&cloudflare.FieldExtractorRuleFieldArgs{
/// 							Expression: pulumi.String("x"),
/// 							Name:       pulumi.String("x"),
/// 						},
/// 					},
/// 					Ref:         pulumi.String("x"),
/// 					Description: pulumi.String("description"),
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
/// resource "cloudflare_fieldextractor" "example_field_extractor" {
///   account_id = "123456"
///   extractor  = "llm_prompts"
///   rules {
///     fields {
///       expression = "x"
///       name       = "x"
///     }
///     ref         = "x"
///     description = "description"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.FieldExtractor;
/// import com.pulumi.cloudflare.FieldExtractorArgs;
/// import com.pulumi.cloudflare.inputs.FieldExtractorRuleArgs;
/// import com.pulumi.cloudflare.inputs.FieldExtractorRuleFieldArgs;
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
///         var exampleFieldExtractor = new FieldExtractor("exampleFieldExtractor", FieldExtractorArgs.builder()
///             .accountId("123456")
///             .extractor("llm_prompts")
///             .rules(FieldExtractorRuleArgs.builder()
///                 .fields(FieldExtractorRuleFieldArgs.builder()
///                     .expression("x")
///                     .name("x")
///                     .build())
///                 .ref("x")
///                 .description("description")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFieldExtractor:
///     type: cloudflare:FieldExtractor
///     name: example_field_extractor
///     properties:
///       accountId: '123456'
///       extractor: llm_prompts
///       rules:
///         - fields:
///             - expression: x
///               name: x
///           ref: x
///           description: description
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/fieldExtractor:FieldExtractor example '<account_id>/<extractor>'
/// ```
class FieldExtractor extends pulumi.CustomResource {
  /// Cloudflare account ID.
  late final pulumi.Output<String> accountId;
  /// Extractor type.
  late final pulumi.Output<String> extractor;
  late final pulumi.Output<List<FieldExtractorRule>> rules;

  /// Creates a new [FieldExtractor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FieldExtractor]. {@macro pulumi_index_field_extractor_field_extractor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FieldExtractor(
    String name, {
    FieldExtractorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/fieldExtractor:FieldExtractor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    extractor = registerOutput<String>('extractor');
    rules = registerOutput<List<FieldExtractorRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FieldExtractorRule>(guardedValue, (value) => FieldExtractorRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [FieldExtractor] resource's state with the given [name] and [id].
  static FieldExtractor get(
    String name,
    pulumi.Input<String> id, {
    FieldExtractorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FieldExtractor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FieldExtractor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/fieldExtractor:FieldExtractor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    extractor = registerOutput<String>('extractor');
    rules = registerOutput<List<FieldExtractorRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FieldExtractorRule>(guardedValue, (value) => FieldExtractorRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [FieldExtractor] resource.
  FieldExtractor.reference(String urn)
    : super(
        'cloudflare:index/fieldExtractor:FieldExtractor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    extractor = registerOutput<String>('extractor');
    rules = registerOutput<List<FieldExtractorRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FieldExtractorRule>(guardedValue, (value) => FieldExtractorRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
