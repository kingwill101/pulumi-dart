import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_finding_type_args.dart';
import 'zero_trust_casb_finding_type_category.dart';
import 'zero_trust_casb_finding_type_state.dart';

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
/// const exampleZeroTrustCasbFindingType = new cloudflare.ZeroTrustCasbFindingType("example_zero_trust_casb_finding_type", {
///     accountId: "46148281d8a93d002ef242d8b0d5f9f6",
///     appliesToAllIntegrations: true,
///     assetClass: "GoogleWorkspaceFile",
///     assetVendor: "GOOGLE_WORKSPACE",
///     description: "Detects files shared with too many users",
///     expression: `  default result := \\"pass\\"
///
///   result := \\"fail\\" if input.asset.publicLinkDisabled == false
///
/// `,
///     name: "Excessive File Sharing",
///     severity: "High",
///     integrationIds: ["550e8400-e29b-41d4-a716-446655440000"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_casb_finding_type = cloudflare.ZeroTrustCasbFindingType("example_zero_trust_casb_finding_type",
///     account_id="46148281d8a93d002ef242d8b0d5f9f6",
///     applies_to_all_integrations=True,
///     asset_class="GoogleWorkspaceFile",
///     asset_vendor="GOOGLE_WORKSPACE",
///     description="Detects files shared with too many users",
///     expression="""  default result := \"pass\"
///
///   result := \"fail\" if input.asset.publicLinkDisabled == false
///
/// """,
///     name="Excessive File Sharing",
///     severity="High",
///     integration_ids=["550e8400-e29b-41d4-a716-446655440000"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCasbFindingType = new Cloudflare.ZeroTrustCasbFindingType("example_zero_trust_casb_finding_type", new()
///     {
///         AccountId = "46148281d8a93d002ef242d8b0d5f9f6",
///         AppliesToAllIntegrations = true,
///         AssetClass = "GoogleWorkspaceFile",
///         AssetVendor = "GOOGLE_WORKSPACE",
///         Description = "Detects files shared with too many users",
///         Expression = @"  default result := \""pass\""
///
///   result := \""fail\"" if input.asset.publicLinkDisabled == false
///
/// ",
///         Name = "Excessive File Sharing",
///         Severity = "High",
///         IntegrationIds = new[]
///         {
///             "550e8400-e29b-41d4-a716-446655440000",
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
/// 		_, err := cloudflare.NewZeroTrustCasbFindingType(ctx, "example_zero_trust_casb_finding_type", &cloudflare.ZeroTrustCasbFindingTypeArgs{
/// 			AccountId:                pulumi.String("46148281d8a93d002ef242d8b0d5f9f6"),
/// 			AppliesToAllIntegrations: pulumi.Bool(true),
/// 			AssetClass:               pulumi.String("GoogleWorkspaceFile"),
/// 			AssetVendor:              pulumi.String("GOOGLE_WORKSPACE"),
/// 			Description:              pulumi.String("Detects files shared with too many users"),
/// 			Expression:               pulumi.String("  default result := \\\"pass\\\"\n\n  result := \\\"fail\\\" if input.asset.publicLinkDisabled == false\n\n"),
/// 			Name:                     pulumi.String("Excessive File Sharing"),
/// 			Severity:                 pulumi.String("High"),
/// 			IntegrationIds: pulumi.StringArray{
/// 				pulumi.String("550e8400-e29b-41d4-a716-446655440000"),
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
/// resource "cloudflare_zero_trust_casb_finding_type" "example_zero_trust_casb_finding_type" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id                  = "46148281d8a93d002ef242d8b0d5f9f6"
///   applies_to_all_integrations = true
///   asset_class                 = "GoogleWorkspaceFile"
///   asset_vendor                = "GOOGLE_WORKSPACE"
///   description                 = "Detects files shared with too many users"
///   expression                  = <<EOT
///   default result := \"pass\"
///
///   result := \"fail\" if input.asset.publicLinkDisabled == false
///
/// EOT
///
///   name                        = "Excessive File Sharing"
///   severity                    = "High"
///   integration_ids             = ["550e8400-e29b-41d4-a716-446655440000"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCasbFindingType;
/// import com.pulumi.cloudflare.ZeroTrustCasbFindingTypeArgs;
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
///         var exampleZeroTrustCasbFindingType = new ZeroTrustCasbFindingType("exampleZeroTrustCasbFindingType", ZeroTrustCasbFindingTypeArgs.builder()
///             .accountId("46148281d8a93d002ef242d8b0d5f9f6")
///             .appliesToAllIntegrations(true)
///             .assetClass("GoogleWorkspaceFile")
///             .assetVendor("GOOGLE_WORKSPACE")
///             .description("Detects files shared with too many users")
///             .expression("""
///   default result := \"pass\"
///
///   result := \"fail\" if input.asset.publicLinkDisabled == false
///
///             """)
///             .name("Excessive File Sharing")
///             .severity("High")
///             .integrationIds("550e8400-e29b-41d4-a716-446655440000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCasbFindingType:
///     type: cloudflare:ZeroTrustCasbFindingType
///     name: example_zero_trust_casb_finding_type
///     properties:
///       accountId: 46148281d8a93d002ef242d8b0d5f9f6
///       appliesToAllIntegrations: true
///       assetClass: GoogleWorkspaceFile
///       assetVendor: GOOGLE_WORKSPACE
///       description: Detects files shared with too many users
///       expression: |2+
///           default result := \"pass\"
///
///           result := \"fail\" if input.asset.publicLinkDisabled == false
///
///       name: Excessive File Sharing
///       severity: High
///       integrationIds:
///         - 550e8400-e29b-41d4-a716-446655440000
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCasbFindingType:ZeroTrustCasbFindingType example '<account_id>/<finding_type_id>'
/// ```
class ZeroTrustCasbFindingType extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// When true, this finding type applies to every current and future integration of the vendor.
  late final pulumi.Output<bool> appliesToAllIntegrations;
  /// Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
  late final pulumi.Output<String> assetClass;
  /// Canonical vendor enum for the platform whose assets this finding type evaluates.
  /// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE", "DROPBOX", "GITHUB", "GOOGLE*CLOUD*PLATFORM", "GOOGLE_WORKSPACE", "JIRA", "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
  late final pulumi.Output<String> assetVendor;
  /// Category information for a finding.
  late final pulumi.Output<ZeroTrustCasbFindingTypeCategory> category;
  /// Timestamp when the finding type was created.
  late final pulumi.Output<String> createdAt;
  /// Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
  late final pulumi.Output<String> description;
  /// Rego expression body for the policy. `package cloudflare.casb.custom` and `import rego.v1` are added automatically. Do not include package or import declarations. This field cannot be changed after creation. Maximum 4096 characters.
  late final pulumi.Output<String> expression;
  /// Required and non-empty when applies*to*all_integrations is false; omit when it is true.
  late final pulumi.Output<List<String>> integrationIds;
  /// Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  late final pulumi.Output<int> matchCount;
  /// Human-readable name for the finding type. Maximum 256 characters.
  late final pulumi.Output<String> name;
  /// Whether the finding type is system-managed or customer-created.
  /// Available values: "system", "custom".
  late final pulumi.Output<String> origin;
  /// Whether evaluation of this finding type is suspended by an operator. Present only when true.
  late final pulumi.Output<bool> quarantined;
  /// Default severity used when no integration-specific severity override exists.
  /// Available values: "Critical", "High", "Medium", "Low".
  late final pulumi.Output<String> severity;
  /// Timestamp when the finding type was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The SaaS/Cloud vendor of the platform with which the finding is associated.
  late final pulumi.Output<String> vendor;
  /// Current version of the finding type. Incremented on each update.
  late final pulumi.Output<int> version;

  /// Creates a new [ZeroTrustCasbFindingType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCasbFindingType]. {@macro pulumi_index_zero_trust_casb_finding_type_zero_trust_casb_finding_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCasbFindingType(
    String name, {
    ZeroTrustCasbFindingTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbFindingType:ZeroTrustCasbFindingType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    assetClass = registerOutput<String>('assetClass');
    assetVendor = registerOutput<String>('assetVendor');
    category = registerOutput<ZeroTrustCasbFindingTypeCategory>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbFindingTypeCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    expression = registerOutput<String>('expression');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    matchCount = registerOutput<int>('matchCount');
    this.name = registerOutput<String>('name');
    origin = registerOutput<String>('origin');
    quarantined = registerOutput<bool>('quarantined');
    severity = registerOutput<String>('severity');
    updatedAt = registerOutput<String>('updatedAt');
    vendor = registerOutput<String>('vendor');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [ZeroTrustCasbFindingType] resource's state with the given [name] and [id].
  static ZeroTrustCasbFindingType get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCasbFindingTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCasbFindingType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCasbFindingType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbFindingType:ZeroTrustCasbFindingType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    assetClass = registerOutput<String>('assetClass');
    assetVendor = registerOutput<String>('assetVendor');
    category = registerOutput<ZeroTrustCasbFindingTypeCategory>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbFindingTypeCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    expression = registerOutput<String>('expression');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    matchCount = registerOutput<int>('matchCount');
    this.name = registerOutput<String>('name');
    origin = registerOutput<String>('origin');
    quarantined = registerOutput<bool>('quarantined');
    severity = registerOutput<String>('severity');
    updatedAt = registerOutput<String>('updatedAt');
    vendor = registerOutput<String>('vendor');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [ZeroTrustCasbFindingType] resource.
  ZeroTrustCasbFindingType.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCasbFindingType:ZeroTrustCasbFindingType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    assetClass = registerOutput<String>('assetClass');
    assetVendor = registerOutput<String>('assetVendor');
    category = registerOutput<ZeroTrustCasbFindingTypeCategory>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbFindingTypeCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    expression = registerOutput<String>('expression');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    matchCount = registerOutput<int>('matchCount');
    this.name = registerOutput<String>('name');
    origin = registerOutput<String>('origin');
    quarantined = registerOutput<bool>('quarantined');
    severity = registerOutput<String>('severity');
    updatedAt = registerOutput<String>('updatedAt');
    vendor = registerOutput<String>('vendor');
    version = registerOutput<int>('version');
  }
}
