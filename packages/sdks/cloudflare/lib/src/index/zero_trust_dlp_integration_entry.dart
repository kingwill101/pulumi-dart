import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_integration_entry_args.dart';
import 'zero_trust_dlp_integration_entry_confidence.dart';
import 'zero_trust_dlp_integration_entry_pattern.dart';
import 'zero_trust_dlp_integration_entry_profile.dart';
import 'zero_trust_dlp_integration_entry_state.dart';
import 'zero_trust_dlp_integration_entry_variant.dart';

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
/// const exampleZeroTrustDlpIntegrationEntry = new cloudflare.ZeroTrustDlpIntegrationEntry("example_zero_trust_dlp_integration_entry", {
///     accountId: "account_id",
///     enabled: true,
///     entryId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     profileId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_integration_entry = cloudflare.ZeroTrustDlpIntegrationEntry("example_zero_trust_dlp_integration_entry",
///     account_id="account_id",
///     enabled=True,
///     entry_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
///     var exampleZeroTrustDlpIntegrationEntry = new Cloudflare.ZeroTrustDlpIntegrationEntry("example_zero_trust_dlp_integration_entry", new()
///     {
///         AccountId = "account_id",
///         Enabled = true,
///         EntryId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
/// 		_, err := cloudflare.NewZeroTrustDlpIntegrationEntry(ctx, "example_zero_trust_dlp_integration_entry", &cloudflare.ZeroTrustDlpIntegrationEntryArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Enabled:   pulumi.Bool(true),
/// 			EntryId:   pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			ProfileId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
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
/// resource "cloudflare_zerotrustdlpintegrationentry" "example_zero_trust_dlp_integration_entry" {
///   account_id = "account_id"
///   enabled    = true
///   entry_id   = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   profile_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpIntegrationEntry;
/// import com.pulumi.cloudflare.ZeroTrustDlpIntegrationEntryArgs;
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
///         var exampleZeroTrustDlpIntegrationEntry = new ZeroTrustDlpIntegrationEntry("exampleZeroTrustDlpIntegrationEntry", ZeroTrustDlpIntegrationEntryArgs.builder()
///             .accountId("account_id")
///             .enabled(true)
///             .entryId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .profileId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpIntegrationEntry:
///     type: cloudflare:ZeroTrustDlpIntegrationEntry
///     name: example_zero_trust_dlp_integration_entry
///     properties:
///       accountId: account_id
///       enabled: true
///       entryId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       profileId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpIntegrationEntry:ZeroTrustDlpIntegrationEntry example '<account_id>/<entry_id>'
/// ```
class ZeroTrustDlpIntegrationEntry extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  late final pulumi.Output<bool> caseSensitive;
  late final pulumi.Output<ZeroTrustDlpIntegrationEntryConfidence> confidence;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> description;
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<String> entryId;
  late final pulumi.Output<String> name;
  late final pulumi.Output<ZeroTrustDlpIntegrationEntryPattern> pattern;
  /// This field is not used as the owning profile.
  /// For predefined entries it is already set to a predefined profile.
  late final pulumi.Output<String?> profileId;
  late final pulumi.Output<List<ZeroTrustDlpIntegrationEntryProfile>> profiles;
  late final pulumi.Output<bool> secret;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  late final pulumi.Output<String> uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  late final pulumi.Output<ZeroTrustDlpIntegrationEntryVariant> variant;
  late final pulumi.Output<String> wordList;

  /// Creates a new [ZeroTrustDlpIntegrationEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpIntegrationEntry]. {@macro pulumi_index_zero_trust_dlp_integration_entry_zero_trust_dlp_integration_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpIntegrationEntry(
    String name, {
    ZeroTrustDlpIntegrationEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpIntegrationEntry:ZeroTrustDlpIntegrationEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpIntegrationEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    entryId = registerOutput<String>('entryId');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpIntegrationEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpIntegrationEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpIntegrationEntryProfile>(guardedValue, (value) => ZeroTrustDlpIntegrationEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpIntegrationEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Gets an existing [ZeroTrustDlpIntegrationEntry] resource's state with the given [name] and [id].
  static ZeroTrustDlpIntegrationEntry get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpIntegrationEntryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpIntegrationEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpIntegrationEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpIntegrationEntry:ZeroTrustDlpIntegrationEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpIntegrationEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    entryId = registerOutput<String>('entryId');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpIntegrationEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpIntegrationEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpIntegrationEntryProfile>(guardedValue, (value) => ZeroTrustDlpIntegrationEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpIntegrationEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpIntegrationEntry] resource.
  ZeroTrustDlpIntegrationEntry.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpIntegrationEntry:ZeroTrustDlpIntegrationEntry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool>('caseSensitive');
    confidence = registerOutput<ZeroTrustDlpIntegrationEntryConfidence>('confidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    entryId = registerOutput<String>('entryId');
    this.name = registerOutput<String>('name');
    pattern = registerOutput<ZeroTrustDlpIntegrationEntryPattern>('pattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileId = registerOutput<String?>('profileId');
    profiles = registerOutput<List<ZeroTrustDlpIntegrationEntryProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpIntegrationEntryProfile>(guardedValue, (value) => ZeroTrustDlpIntegrationEntryProfile.fromMap((value as Map).cast<String, dynamic>())); });
    secret = registerOutput<bool>('secret');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadStatus = registerOutput<String>('uploadStatus');
    variant = registerOutput<ZeroTrustDlpIntegrationEntryVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpIntegrationEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wordList = registerOutput<String>('wordList');
  }
}
