import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_proximity_validator_args.dart';
import 'zero_trust_dlp_proximity_validator_referenced_by.dart';
import 'zero_trust_dlp_proximity_validator_state.dart';
import 'zero_trust_dlp_proximity_validator_word.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDlpProximityValidator = new cloudflare.ZeroTrustDlpProximityValidator("example_zero_trust_dlp_proximity_validator", {
///     accountId: "account_id",
///     name: "HIPAA context words",
///     words: [{
///         weight: "strong",
///         word: "social security number",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_proximity_validator = cloudflare.ZeroTrustDlpProximityValidator("example_zero_trust_dlp_proximity_validator",
///     account_id="account_id",
///     name="HIPAA context words",
///     words=[{
///         "weight": "strong",
///         "word": "social security number",
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
///     var exampleZeroTrustDlpProximityValidator = new Cloudflare.ZeroTrustDlpProximityValidator("example_zero_trust_dlp_proximity_validator", new()
///     {
///         AccountId = "account_id",
///         Name = "HIPAA context words",
///         Words = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDlpProximityValidatorWordArgs
///             {
///                 Weight = "strong",
///                 Word = "social security number",
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
/// 		_, err := cloudflare.NewZeroTrustDlpProximityValidator(ctx, "example_zero_trust_dlp_proximity_validator", &cloudflare.ZeroTrustDlpProximityValidatorArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Name:      pulumi.String("HIPAA context words"),
/// 			Words: cloudflare.ZeroTrustDlpProximityValidatorWordArray{
/// 				&cloudflare.ZeroTrustDlpProximityValidatorWordArgs{
/// 					Weight: pulumi.String("strong"),
/// 					Word:   pulumi.String("social security number"),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_dlp_proximity_validator" "example_zero_trust_dlp_proximity_validator" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "account_id"
///   name       = "HIPAA context words"
///   words = [{
///     weight = "strong"
///     word   = "social security number"
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpProximityValidator;
/// import com.pulumi.cloudflare.ZeroTrustDlpProximityValidatorArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpProximityValidatorWordArgs;
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
///         var exampleZeroTrustDlpProximityValidator = new ZeroTrustDlpProximityValidator("exampleZeroTrustDlpProximityValidator", ZeroTrustDlpProximityValidatorArgs.builder()
///             .accountId("account_id")
///             .name("HIPAA context words")
///             .words(ZeroTrustDlpProximityValidatorWordArgs.builder()
///                 .weight("strong")
///                 .word("social security number")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpProximityValidator:
///     type: cloudflare:ZeroTrustDlpProximityValidator
///     name: example_zero_trust_dlp_proximity_validator
///     properties:
///       accountId: account_id
///       name: HIPAA context words
///       words:
///         - weight: strong
///           word: social security number
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpProximityValidator:ZeroTrustDlpProximityValidator example '<account_id>/<validator_id>'
/// ```
class ZeroTrustDlpProximityValidator extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// A name for this validator, at most 50 characters.
  late final pulumi.Output<String> name;
  /// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// check this first.
  ///
  /// Read-only. A validator is attached or detached by updating the detection entry that uses it, not
  /// by writing this back.
  late final pulumi.Output<ZeroTrustDlpProximityValidatorReferencedBy> referencedBy;
  late final pulumi.Output<String> updatedAt;
  /// The words that raise confidence when found near a match, at most 100 per validator. Matching
  /// ignores case, so the list may not contain the same word twice with different capitalisation.
  /// Words are stored as sent.
  late final pulumi.Output<List<ZeroTrustDlpProximityValidatorWord>> words;

  /// Creates a new [ZeroTrustDlpProximityValidator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpProximityValidator]. {@macro pulumi_index_zero_trust_dlp_proximity_validator_zero_trust_dlp_proximity_validator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpProximityValidator(
    String name, {
    ZeroTrustDlpProximityValidatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpProximityValidator:ZeroTrustDlpProximityValidator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    referencedBy = registerOutput<ZeroTrustDlpProximityValidatorReferencedBy>('referencedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpProximityValidatorReferencedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    words = registerOutput<List<ZeroTrustDlpProximityValidatorWord>>('words', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorWord>(guardedValue, (value) => ZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ZeroTrustDlpProximityValidator] resource's state with the given [name] and [id].
  static ZeroTrustDlpProximityValidator get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpProximityValidatorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpProximityValidator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpProximityValidator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpProximityValidator:ZeroTrustDlpProximityValidator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    referencedBy = registerOutput<ZeroTrustDlpProximityValidatorReferencedBy>('referencedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpProximityValidatorReferencedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    words = registerOutput<List<ZeroTrustDlpProximityValidatorWord>>('words', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorWord>(guardedValue, (value) => ZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpProximityValidator] resource.
  ZeroTrustDlpProximityValidator.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpProximityValidator:ZeroTrustDlpProximityValidator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    referencedBy = registerOutput<ZeroTrustDlpProximityValidatorReferencedBy>('referencedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpProximityValidatorReferencedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    words = registerOutput<List<ZeroTrustDlpProximityValidatorWord>>('words', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorWord>(guardedValue, (value) => ZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
