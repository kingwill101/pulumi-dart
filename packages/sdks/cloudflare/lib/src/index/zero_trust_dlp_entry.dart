import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_entry_args.dart';
import 'zero_trust_dlp_entry_confidence.dart';
import 'zero_trust_dlp_entry_pattern.dart';
import 'zero_trust_dlp_entry_profile.dart';
import 'zero_trust_dlp_entry_state.dart';
import 'zero_trust_dlp_entry_variant.dart';

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
/// const exampleZeroTrustDlpEntry = new cloudflare.ZeroTrustDlpEntry("example_zero_trust_dlp_entry", {
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
/// example_zero_trust_dlp_entry = cloudflare.ZeroTrustDlpEntry("example_zero_trust_dlp_entry",
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
///     var exampleZeroTrustDlpEntry = new Cloudflare.ZeroTrustDlpEntry("example_zero_trust_dlp_entry", new()
///     {
///         AccountId = "account_id",
///         Enabled = true,
///         Name = "name",
///         Pattern = new Cloudflare.Inputs.ZeroTrustDlpEntryPatternArgs
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
/// 		_, err := cloudflare.NewZeroTrustDlpEntry(ctx, "example_zero_trust_dlp_entry", &cloudflare.ZeroTrustDlpEntryArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Enabled:   pulumi.Bool(true),
/// 			Name:      pulumi.String("name"),
/// 			Pattern: &cloudflare.ZeroTrustDlpEntryPatternArgs{
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
/// resource "cloudflare_zerotrustdlpentry" "example_zero_trust_dlp_entry" {
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
/// import com.pulumi.cloudflare.ZeroTrustDlpEntry;
/// import com.pulumi.cloudflare.ZeroTrustDlpEntryArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpEntryPatternArgs;
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
///         var exampleZeroTrustDlpEntry = new ZeroTrustDlpEntry("exampleZeroTrustDlpEntry", ZeroTrustDlpEntryArgs.builder()
///             .accountId("account_id")
///             .enabled(true)
///             .name("name")
///             .pattern(ZeroTrustDlpEntryPatternArgs.builder()
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
///   exampleZeroTrustDlpEntry:
///     type: cloudflare:ZeroTrustDlpEntry
///     name: example_zero_trust_dlp_entry
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
/// $ pulumi import cloudflare:index/zeroTrustDlpEntry:ZeroTrustDlpEntry example '<account_id>/<entry_id>'
/// ```
class ZeroTrustDlpEntry extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  late final pulumi.Output<bool> caseSensitive;
  late final pulumi.Output<ZeroTrustDlpEntryConfidence> confidence;
  late final pulumi.Output<String> createdAt;
  /// Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// emitted only when true.
  late final pulumi.Output<bool> deprecated;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<String> name;
  late final pulumi.Output<ZeroTrustDlpEntryPattern> pattern;
  late final pulumi.Output<String?> profileId;
  late final pulumi.Output<List<ZeroTrustDlpEntryProfile>> profiles;
  late final pulumi.Output<bool> secret;
  /// Available values: "custom", "predefined", "integration".
  late final pulumi.Output<String?> type;
  late final pulumi.Output<String> updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  late final pulumi.Output<String> uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  late final pulumi.Output<ZeroTrustDlpEntryVariant> variant;
  late final pulumi.Output<String> wordList;

  /// Creates a new [ZeroTrustDlpEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpEntry]. {@macro pulumi_index_zero_trust_dlp_entry_zero_trust_dlp_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpEntry(
    String name, {
    ZeroTrustDlpEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpEntry:ZeroTrustDlpEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deprecated = registerOutput<bool>('deprecated');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpEntryProfile>(guardedValue, (value) => ZeroTrustDlpEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Gets an existing [ZeroTrustDlpEntry] resource's state with the given [name] and [id].
  static ZeroTrustDlpEntry get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpEntryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpEntry:ZeroTrustDlpEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deprecated = registerOutput<bool>('deprecated');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpEntryProfile>(guardedValue, (value) => ZeroTrustDlpEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpEntry] resource.
  ZeroTrustDlpEntry.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpEntry:ZeroTrustDlpEntry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deprecated = registerOutput<bool>('deprecated');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpEntryProfile>(guardedValue, (value) => ZeroTrustDlpEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String?>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }
}
