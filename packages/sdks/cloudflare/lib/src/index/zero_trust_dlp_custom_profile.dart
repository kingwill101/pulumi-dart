import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_profile_args.dart';
import 'zero_trust_dlp_custom_profile_context_awareness.dart';
import 'zero_trust_dlp_custom_profile_entry.dart';
import 'zero_trust_dlp_custom_profile_sensitivity_level.dart';
import 'zero_trust_dlp_custom_profile_shared_entry.dart';
import 'zero_trust_dlp_custom_profile_state.dart';

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
/// const exampleZeroTrustDlpCustomProfile = new cloudflare.ZeroTrustDlpCustomProfile("example_zero_trust_dlp_custom_profile", {
///     name: "name",
///     accountId: "account_id",
///     description: "Custom profile with entries",
///     sharedEntries: [{
///         entryId: "56a8c060-01bb-4f89-ba1e-3ad42770a342",
///         entryType: "predefined",
///         enabled: true,
///     }],
/// });
/// // Custom entry that is a part of this new profile
/// const exampleCustomEntry = new cloudflare.ZeroTrustDlpCustomEntry("example_custom_entry", {
///     name: "custom",
///     accountId: "account_id",
///     profileId: exampleZeroTrustDlpCustomProfile.id,
///     pattern: {
///         regex: "customentryregex",
///     },
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_custom_profile = cloudflare.ZeroTrustDlpCustomProfile("example_zero_trust_dlp_custom_profile",
///     name="name",
///     account_id="account_id",
///     description="Custom profile with entries",
///     shared_entries=[{
///         "entry_id": "56a8c060-01bb-4f89-ba1e-3ad42770a342",
///         "entry_type": "predefined",
///         "enabled": True,
///     }])
/// # Custom entry that is a part of this new profile
/// example_custom_entry = cloudflare.ZeroTrustDlpCustomEntry("example_custom_entry",
///     name="custom",
///     account_id="account_id",
///     profile_id=example_zero_trust_dlp_custom_profile.id,
///     pattern={
///         "regex": "customentryregex",
///     },
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpCustomProfile = new Cloudflare.ZeroTrustDlpCustomProfile("example_zero_trust_dlp_custom_profile", new()
///     {
///         Name = "name",
///         AccountId = "account_id",
///         Description = "Custom profile with entries",
///         SharedEntries = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDlpCustomProfileSharedEntryArgs
///             {
///                 EntryId = "56a8c060-01bb-4f89-ba1e-3ad42770a342",
///                 EntryType = "predefined",
///                 Enabled = true,
///             },
///         },
///     });
///
///     // Custom entry that is a part of this new profile
///     var exampleCustomEntry = new Cloudflare.ZeroTrustDlpCustomEntry("example_custom_entry", new()
///     {
///         Name = "custom",
///         AccountId = "account_id",
///         ProfileId = exampleZeroTrustDlpCustomProfile.Id,
///         Pattern = new Cloudflare.Inputs.ZeroTrustDlpCustomEntryPatternArgs
///         {
///             Regex = "customentryregex",
///         },
///         Enabled = true,
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
/// 		exampleZeroTrustDlpCustomProfile, err := cloudflare.NewZeroTrustDlpCustomProfile(ctx, "example_zero_trust_dlp_custom_profile", &cloudflare.ZeroTrustDlpCustomProfileArgs{
/// 			Name:        pulumi.String("name"),
/// 			AccountId:   pulumi.String("account_id"),
/// 			Description: pulumi.String("Custom profile with entries"),
/// 			SharedEntries: cloudflare.ZeroTrustDlpCustomProfileSharedEntryArray{
/// 				&cloudflare.ZeroTrustDlpCustomProfileSharedEntryArgs{
/// 					EntryId:   pulumi.String("56a8c060-01bb-4f89-ba1e-3ad42770a342"),
/// 					EntryType: pulumi.String("predefined"),
/// 					Enabled:   pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Custom entry that is a part of this new profile
/// 		_, err = cloudflare.NewZeroTrustDlpCustomEntry(ctx, "example_custom_entry", &cloudflare.ZeroTrustDlpCustomEntryArgs{
/// 			Name:      pulumi.String("custom"),
/// 			AccountId: pulumi.String("account_id"),
/// 			ProfileId: exampleZeroTrustDlpCustomProfile.ID(),
/// 			Pattern: &cloudflare.ZeroTrustDlpCustomEntryPatternArgs{
/// 				Regex: pulumi.String("customentryregex"),
/// 			},
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustdlpcustomprofile" "example_zero_trust_dlp_custom_profile" {
///   name        = "name"
///   account_id  = "account_id"
///   description = "Custom profile with entries"
///   shared_entries {
///     entry_id   = "56a8c060-01bb-4f89-ba1e-3ad42770a342"
///     entry_type = "predefined"
///     enabled    = true
///   }
/// }
/// // Custom entry that is a part of this new profile
/// resource "cloudflare_zerotrustdlpcustomentry" "example_custom_entry" {
///   name       = "custom"
///   account_id = "account_id"
///   profile_id = cloudflare_zerotrustdlpcustomprofile.example_zero_trust_dlp_custom_profile.id
///   pattern = {
///     regex = "customentryregex"
///   }
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpCustomProfile;
/// import com.pulumi.cloudflare.ZeroTrustDlpCustomProfileArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomProfileSharedEntryArgs;
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
///         var exampleZeroTrustDlpCustomProfile = new ZeroTrustDlpCustomProfile("exampleZeroTrustDlpCustomProfile", ZeroTrustDlpCustomProfileArgs.builder()
///             .name("name")
///             .accountId("account_id")
///             .description("Custom profile with entries")
///             .sharedEntries(ZeroTrustDlpCustomProfileSharedEntryArgs.builder()
///                 .entryId("56a8c060-01bb-4f89-ba1e-3ad42770a342")
///                 .entryType("predefined")
///                 .enabled(true)
///                 .build())
///             .build());
///
///         // Custom entry that is a part of this new profile
///         var exampleCustomEntry = new ZeroTrustDlpCustomEntry("exampleCustomEntry", ZeroTrustDlpCustomEntryArgs.builder()
///             .name("custom")
///             .accountId("account_id")
///             .profileId(exampleZeroTrustDlpCustomProfile.id())
///             .pattern(ZeroTrustDlpCustomEntryPatternArgs.builder()
///                 .regex("customentryregex")
///                 .build())
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpCustomProfile:
///     type: cloudflare:ZeroTrustDlpCustomProfile
///     name: example_zero_trust_dlp_custom_profile
///     properties:
///       name: name
///       accountId: account_id
///       description: Custom profile with entries
///       sharedEntries:
///         - entryId: 56a8c060-01bb-4f89-ba1e-3ad42770a342
///           entryType: predefined
///           enabled: true
///   # Custom entry that is a part of this new profile
///   exampleCustomEntry:
///     type: cloudflare:ZeroTrustDlpCustomEntry
///     name: example_custom_entry
///     properties:
///       name: custom
///       accountId: account_id
///       profileId: ${exampleZeroTrustDlpCustomProfile.id}
///       pattern:
///         regex: customentryregex
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDlpCustomProfile:ZeroTrustDlpCustomProfile example '<account_id>/<profile_id>'
/// ```
class ZeroTrustDlpCustomProfile extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<bool> aiContextEnabled;
  /// Related DLP policies will trigger when the match count exceeds the number set.
  late final pulumi.Output<int> allowedMatchCount;
  late final pulumi.Output<String> confidenceThreshold;
  /// Scan the context of predefined entries to only return matches surrounded by keywords.
  late final pulumi.Output<ZeroTrustDlpCustomProfileContextAwareness> contextAwareness;
  /// When the profile was created.
  late final pulumi.Output<String> createdAt;
  /// Data class IDs to associate with the profile.
  late final pulumi.Output<List<String>?> dataClasses;
  /// Data tag IDs to associate with the profile.
  late final pulumi.Output<List<String>?> dataTags;
  /// The description of the profile.
  late final pulumi.Output<String?> description;
  /// Custom entries from this profile.
  /// If this field is omitted, entries owned by this profile will not be changed.
  late final pulumi.Output<List<ZeroTrustDlpCustomProfileEntry>?> entries;
  late final pulumi.Output<String> name;
  late final pulumi.Output<bool> ocrEnabled;
  /// Whether this profile can be accessed by anyone.
  late final pulumi.Output<bool> openAccess;
  /// Sensitivity levels to associate with the profile.
  late final pulumi.Output<List<ZeroTrustDlpCustomProfileSensitivityLevel>?> sensitivityLevels;
  /// Entries from other profiles (e.g. pre-defined Cloudflare profiles, or your Microsoft Information Protection profiles).
  late final pulumi.Output<List<ZeroTrustDlpCustomProfileSharedEntry>?> sharedEntries;
  /// Available values: "custom", "predefined", "integration".
  late final pulumi.Output<String> type;
  /// When the profile was lasted updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDlpCustomProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpCustomProfile]. {@macro pulumi_index_zero_trust_dlp_custom_profile_zero_trust_dlp_custom_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpCustomProfile(
    String name, {
    ZeroTrustDlpCustomProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpCustomProfile:ZeroTrustDlpCustomProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    aiContextEnabled = registerOutput<bool>('aiContextEnabled');
    allowedMatchCount = registerOutput<int>('allowedMatchCount');
    confidenceThreshold = registerOutput<String>('confidenceThreshold');
    contextAwareness = registerOutput<ZeroTrustDlpCustomProfileContextAwareness>('contextAwareness', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dataClasses = registerOutput<List<String>?>('dataClasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataTags = registerOutput<List<String>?>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    entries = registerOutput<List<ZeroTrustDlpCustomProfileEntry>?>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    ocrEnabled = registerOutput<bool>('ocrEnabled');
    openAccess = registerOutput<bool>('openAccess');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpCustomProfileSensitivityLevel>?>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    sharedEntries = registerOutput<List<ZeroTrustDlpCustomProfileSharedEntry>?>('sharedEntries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDlpCustomProfile] resource's state with the given [name] and [id].
  static ZeroTrustDlpCustomProfile get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpCustomProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpCustomProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpCustomProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpCustomProfile:ZeroTrustDlpCustomProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    aiContextEnabled = registerOutput<bool>('aiContextEnabled');
    allowedMatchCount = registerOutput<int>('allowedMatchCount');
    confidenceThreshold = registerOutput<String>('confidenceThreshold');
    contextAwareness = registerOutput<ZeroTrustDlpCustomProfileContextAwareness>('contextAwareness', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dataClasses = registerOutput<List<String>?>('dataClasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataTags = registerOutput<List<String>?>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    entries = registerOutput<List<ZeroTrustDlpCustomProfileEntry>?>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    ocrEnabled = registerOutput<bool>('ocrEnabled');
    openAccess = registerOutput<bool>('openAccess');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpCustomProfileSensitivityLevel>?>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    sharedEntries = registerOutput<List<ZeroTrustDlpCustomProfileSharedEntry>?>('sharedEntries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpCustomProfile] resource.
  ZeroTrustDlpCustomProfile.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpCustomProfile:ZeroTrustDlpCustomProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    aiContextEnabled = registerOutput<bool>('aiContextEnabled');
    allowedMatchCount = registerOutput<int>('allowedMatchCount');
    confidenceThreshold = registerOutput<String>('confidenceThreshold');
    contextAwareness = registerOutput<ZeroTrustDlpCustomProfileContextAwareness>('contextAwareness', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dataClasses = registerOutput<List<String>?>('dataClasses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataTags = registerOutput<List<String>?>('dataTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    entries = registerOutput<List<ZeroTrustDlpCustomProfileEntry>?>('entries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    ocrEnabled = registerOutput<bool>('ocrEnabled');
    openAccess = registerOutput<bool>('openAccess');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpCustomProfileSensitivityLevel>?>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    sharedEntries = registerOutput<List<ZeroTrustDlpCustomProfileSharedEntry>?>('sharedEntries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
