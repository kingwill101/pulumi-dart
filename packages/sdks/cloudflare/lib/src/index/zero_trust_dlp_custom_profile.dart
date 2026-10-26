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
///     accountId: "account_id",
///     name: "name",
///     aiContextEnabled: true,
///     allowedMatchCount: 5,
///     confidenceThreshold: "confidence_threshold",
///     contextAwareness: {
///         enabled: true,
///         skip: {
///             files: true,
///         },
///     },
///     dataClasses: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     dataTags: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     description: "description",
///     ocrEnabled: true,
///     sensitivityLevels: [{
///         groupId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         levelId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
///     sharedEntries: [{
///         enabled: true,
///         entryId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_custom_profile = cloudflare.ZeroTrustDlpCustomProfile("example_zero_trust_dlp_custom_profile",
///     account_id="account_id",
///     name="name",
///     ai_context_enabled=True,
///     allowed_match_count=5,
///     confidence_threshold="confidence_threshold",
///     context_awareness={
///         "enabled": True,
///         "skip": {
///             "files": True,
///         },
///     },
///     data_classes=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     data_tags=["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
///     description="description",
///     ocr_enabled=True,
///     sensitivity_levels=[{
///         "group_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         "level_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     }],
///     shared_entries=[{
///         "enabled": True,
///         "entry_id": "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
///     var exampleZeroTrustDlpCustomProfile = new Cloudflare.ZeroTrustDlpCustomProfile("example_zero_trust_dlp_custom_profile", new()
///     {
///         AccountId = "account_id",
///         Name = "name",
///         AiContextEnabled = true,
///         AllowedMatchCount = 5,
///         ConfidenceThreshold = "confidence_threshold",
///         ContextAwareness = new Cloudflare.Inputs.ZeroTrustDlpCustomProfileContextAwarenessArgs
///         {
///             Enabled = true,
///             Skip = new Cloudflare.Inputs.ZeroTrustDlpCustomProfileContextAwarenessSkipArgs
///             {
///                 Files = true,
///             },
///         },
///         DataClasses = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         DataTags = new[]
///         {
///             "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         },
///         Description = "description",
///         OcrEnabled = true,
///         SensitivityLevels = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDlpCustomProfileSensitivityLevelArgs
///             {
///                 GroupId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///                 LevelId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///             },
///         },
///         SharedEntries = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDlpCustomProfileSharedEntryArgs
///             {
///                 Enabled = true,
///                 EntryId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
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
/// 		_, err := cloudflare.NewZeroTrustDlpCustomProfile(ctx, "example_zero_trust_dlp_custom_profile", &cloudflare.ZeroTrustDlpCustomProfileArgs{
/// 			AccountId:           pulumi.String("account_id"),
/// 			Name:                pulumi.String("name"),
/// 			AiContextEnabled:    pulumi.Bool(true),
/// 			AllowedMatchCount:   pulumi.Int(5),
/// 			ConfidenceThreshold: pulumi.String("confidence_threshold"),
/// 			ContextAwareness: &cloudflare.ZeroTrustDlpCustomProfileContextAwarenessArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Skip: &cloudflare.ZeroTrustDlpCustomProfileContextAwarenessSkipArgs{
/// 					Files: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DataClasses: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			DataTags: pulumi.StringArray{
/// 				pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			},
/// 			Description: pulumi.String("description"),
/// 			OcrEnabled:  pulumi.Bool(true),
/// 			SensitivityLevels: cloudflare.ZeroTrustDlpCustomProfileSensitivityLevelArray{
/// 				&cloudflare.ZeroTrustDlpCustomProfileSensitivityLevelArgs{
/// 					GroupId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 					LevelId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 				},
/// 			},
/// 			SharedEntries: cloudflare.ZeroTrustDlpCustomProfileSharedEntryArray{
/// 				&cloudflare.ZeroTrustDlpCustomProfileSharedEntryArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					EntryId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
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
/// resource "cloudflare_zero_trust_dlp_custom_profile" "example_zero_trust_dlp_custom_profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id           = "account_id"
///   name                 = "name"
///   ai_context_enabled   = true
///   allowed_match_count  = 5
///   confidence_threshold = "confidence_threshold"
///   context_awareness = {
///     enabled = true
///     skip = {
///       files = true
///     }
///   }
///   data_classes = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   data_tags    = ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
///   description  = "description"
///   ocr_enabled  = true
///   sensitivity_levels {
///     group_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///     level_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   }
///   shared_entries {
///     enabled  = true
///     entry_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   }
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
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomProfileContextAwarenessArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomProfileContextAwarenessSkipArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomProfileSensitivityLevelArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDlpCustomProfileSharedEntryArgs;
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
///             .accountId("account_id")
///             .name("name")
///             .aiContextEnabled(true)
///             .allowedMatchCount(5)
///             .confidenceThreshold("confidence_threshold")
///             .contextAwareness(ZeroTrustDlpCustomProfileContextAwarenessArgs.builder()
///                 .enabled(true)
///                 .skip(ZeroTrustDlpCustomProfileContextAwarenessSkipArgs.builder()
///                     .files(true)
///                     .build())
///                 .build())
///             .dataClasses("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .dataTags("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .description("description")
///             .ocrEnabled(true)
///             .sensitivityLevels(ZeroTrustDlpCustomProfileSensitivityLevelArgs.builder()
///                 .groupId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .levelId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .build())
///             .sharedEntries(ZeroTrustDlpCustomProfileSharedEntryArgs.builder()
///                 .enabled(true)
///                 .entryId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///                 .build())
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
///       accountId: account_id
///       name: name
///       aiContextEnabled: true
///       allowedMatchCount: 5
///       confidenceThreshold: confidence_threshold
///       contextAwareness:
///         enabled: true
///         skip:
///           files: true
///       dataClasses:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       dataTags:
///         - 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       description: description
///       ocrEnabled: true
///       sensitivityLevels:
///         - groupId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///           levelId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       sharedEntries:
///         - enabled: true
///           entryId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
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
  late final pulumi.Output<String> integrationId;
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
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
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
    integrationId = registerOutput<String>('integrationId');
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
    integrationId = registerOutput<String>('integrationId');
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
    integrationId = registerOutput<String>('integrationId');
    this.name = registerOutput<String>('name');
    ocrEnabled = registerOutput<bool>('ocrEnabled');
    openAccess = registerOutput<bool>('openAccess');
    sensitivityLevels = registerOutput<List<ZeroTrustDlpCustomProfileSensitivityLevel>?>('sensitivityLevels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); });
    sharedEntries = registerOutput<List<ZeroTrustDlpCustomProfileSharedEntry>?>('sharedEntries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
