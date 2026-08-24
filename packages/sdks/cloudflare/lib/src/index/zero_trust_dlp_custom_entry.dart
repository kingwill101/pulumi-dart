import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_entry_args.dart';
import 'zero_trust_dlp_custom_entry_confidence.dart';
import 'zero_trust_dlp_custom_entry_pattern.dart';
import 'zero_trust_dlp_custom_entry_profile.dart';
import 'zero_trust_dlp_custom_entry_state.dart';
import 'zero_trust_dlp_custom_entry_variant.dart';

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
/// const exampleZeroTrustDlpCustomEntry = new cloudflare.ZeroTrustDlpCustomEntry("example_zero_trust_dlp_custom_entry", {
///     accountId: "account_id",
///     enabled: true,
///     name: "name",
///     pattern: {
///         regex: "regex",
///         validation: "luhn",
///     },
///     description: "description",
///     profileId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_custom_entry = cloudflare.ZeroTrustDlpCustomEntry("example_zero_trust_dlp_custom_entry",
///     account_id="account_id",
///     enabled=True,
///     name="name",
///     pattern={
///         "regex": "regex",
///         "validation": "luhn",
///     },
///     description="description",
///     profile_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpCustomEntry = new Cloudflare.ZeroTrustDlpCustomEntry("example_zero_trust_dlp_custom_entry", new()
///     {
///         AccountId = "account_id",
///         Enabled = true,
///         Name = "name",
///         Pattern = new Cloudflare.Inputs.ZeroTrustDlpCustomEntryPatternArgs
///         {
///             Regex = "regex",
///             Validation = "luhn",
///         },
///         Description = "description",
///         ProfileId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
/// 		_, err := cloudflare.NewZeroTrustDlpCustomEntry(ctx, "example_zero_trust_dlp_custom_entry", &cloudflare.ZeroTrustDlpCustomEntryArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Enabled:   pulumi.Bool(true),
/// 			Name:      pulumi.String("name"),
/// 			Pattern: &cloudflare.ZeroTrustDlpCustomEntryPatternArgs{
/// 				Regex:      pulumi.String("regex"),
/// 				Validation: pulumi.String("luhn"),
/// 			},
/// 			Description: pulumi.String("description"),
/// 			ProfileId:   pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
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
/// resource "cloudflare_zerotrustdlpcustomentry" "example_zero_trust_dlp_custom_entry" {
///   account_id = "account_id"
///   enabled    = true
///   name       = "name"
///   pattern = {
///     regex      = "regex"
///     validation = "luhn"
///   }
///   description = "description"
///   profile_id  = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpCustomEntry;
/// import com.pulumi.cloudflare.ZeroTrustDlpCustomEntryArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomEntryPatternArgs;
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
///         var exampleZeroTrustDlpCustomEntry = new ZeroTrustDlpCustomEntry("exampleZeroTrustDlpCustomEntry", ZeroTrustDlpCustomEntryArgs.builder()
///             .accountId("account_id")
///             .enabled(true)
///             .name("name")
///             .pattern(ZeroTrustDlpCustomEntryPatternArgs.builder()
///                 .regex("regex")
///                 .validation("luhn")
///                 .build())
///             .description("description")
///             .profileId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpCustomEntry:
///     type: cloudflare:ZeroTrustDlpCustomEntry
///     name: example_zero_trust_dlp_custom_entry
///     properties:
///       accountId: account_id
///       enabled: true
///       name: name
///       pattern:
///         regex: regex
///         validation: luhn
///       description: description
///       profileId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpCustomEntry:ZeroTrustDlpCustomEntry example '<account_id>/<entry_id>'
/// ```
class ZeroTrustDlpCustomEntry extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  late final pulumi.Output<bool> caseSensitive;
  late final pulumi.Output<ZeroTrustDlpCustomEntryConfidence> confidence;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<String> name;
  late final pulumi.Output<ZeroTrustDlpCustomEntryPattern> pattern;
  late final pulumi.Output<String?> profileId;
  late final pulumi.Output<List<ZeroTrustDlpCustomEntryProfile>> profiles;
  late final pulumi.Output<bool> secret;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  late final pulumi.Output<String> uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  late final pulumi.Output<ZeroTrustDlpCustomEntryVariant> variant;
  late final pulumi.Output<String> wordList;

  /// Creates a new [ZeroTrustDlpCustomEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpCustomEntry]. {@macro pulumi_index_zero_trust_dlp_custom_entry_zero_trust_dlp_custom_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpCustomEntry(
    String name, {
    ZeroTrustDlpCustomEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpCustomEntry:ZeroTrustDlpCustomEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpCustomEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpCustomEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpCustomEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomEntryProfile>(guardedValue, (value) => ZeroTrustDlpCustomEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpCustomEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Gets an existing [ZeroTrustDlpCustomEntry] resource's state with the given [name] and [id].
  static ZeroTrustDlpCustomEntry get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpCustomEntryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpCustomEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpCustomEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpCustomEntry:ZeroTrustDlpCustomEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpCustomEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpCustomEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpCustomEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomEntryProfile>(guardedValue, (value) => ZeroTrustDlpCustomEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpCustomEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpCustomEntry] resource.
  ZeroTrustDlpCustomEntry.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpCustomEntry:ZeroTrustDlpCustomEntry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpCustomEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpCustomEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpCustomEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomEntryProfile>(guardedValue, (value) => ZeroTrustDlpCustomEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpCustomEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }
}
