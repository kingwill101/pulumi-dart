import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_organization_trust_settings_args.dart';
import 'zero_trust_organization_trust_settings_state.dart';

/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read`
/// - `Access: Organizations, Identity Providers, and Groups Revoke`
/// - `Access: Organizations, Identity Providers, and Groups Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustOrganizationTrustSettings = new cloudflare.ZeroTrustOrganizationTrustSettings("example_zero_trust_organization_trust_settings", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     grantTrustToAllAccountsInOrg: false,
///     trustingAccounts: ["023e105f4ecef8ad9ca31a8372d0c353"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_organization_trust_settings = cloudflare.ZeroTrustOrganizationTrustSettings("example_zero_trust_organization_trust_settings",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     grant_trust_to_all_accounts_in_org=False,
///     trusting_accounts=["023e105f4ecef8ad9ca31a8372d0c353"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustOrganizationTrustSettings = new Cloudflare.ZeroTrustOrganizationTrustSettings("example_zero_trust_organization_trust_settings", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         GrantTrustToAllAccountsInOrg = false,
///         TrustingAccounts = new[]
///         {
///             "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewZeroTrustOrganizationTrustSettings(ctx, "example_zero_trust_organization_trust_settings", &cloudflare.ZeroTrustOrganizationTrustSettingsArgs{
/// 			AccountId:                    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			GrantTrustToAllAccountsInOrg: pulumi.Bool(false),
/// 			TrustingAccounts: pulumi.StringArray{
/// 				pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_zero_trust_organization_trust_settings" "example_zero_trust_organization_trust_settings" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id                         = "023e105f4ecef8ad9ca31a8372d0c353"
///   grant_trust_to_all_accounts_in_org = false
///   trusting_accounts                  = ["023e105f4ecef8ad9ca31a8372d0c353"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustOrganizationTrustSettings;
/// import com.pulumi.cloudflare.ZeroTrustOrganizationTrustSettingsArgs;
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
///         var exampleZeroTrustOrganizationTrustSettings = new ZeroTrustOrganizationTrustSettings("exampleZeroTrustOrganizationTrustSettings", ZeroTrustOrganizationTrustSettingsArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .grantTrustToAllAccountsInOrg(false)
///             .trustingAccounts("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustOrganizationTrustSettings:
///     type: cloudflare:ZeroTrustOrganizationTrustSettings
///     name: example_zero_trust_organization_trust_settings
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       grantTrustToAllAccountsInOrg: false
///       trustingAccounts:
///         - 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustOrganizationTrustSettings:ZeroTrustOrganizationTrustSettings example '<account_id>'
/// ```
class ZeroTrustOrganizationTrustSettings extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  late final pulumi.Output<bool> grantTrustToAllAccountsInOrg;
  /// Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  late final pulumi.Output<List<String>?> trustingAccounts;

  /// Creates a new [ZeroTrustOrganizationTrustSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustOrganizationTrustSettings]. {@macro pulumi_index_zero_trust_organization_trust_settings_zero_trust_organization_trust_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustOrganizationTrustSettings(
    String name, {
    ZeroTrustOrganizationTrustSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustOrganizationTrustSettings:ZeroTrustOrganizationTrustSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    grantTrustToAllAccountsInOrg = registerOutput<bool>('grantTrustToAllAccountsInOrg');
    trustingAccounts = registerOutput<List<String>?>('trustingAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ZeroTrustOrganizationTrustSettings] resource's state with the given [name] and [id].
  static ZeroTrustOrganizationTrustSettings get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustOrganizationTrustSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustOrganizationTrustSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustOrganizationTrustSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustOrganizationTrustSettings:ZeroTrustOrganizationTrustSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    grantTrustToAllAccountsInOrg = registerOutput<bool>('grantTrustToAllAccountsInOrg');
    trustingAccounts = registerOutput<List<String>?>('trustingAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ZeroTrustOrganizationTrustSettings] resource.
  ZeroTrustOrganizationTrustSettings.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustOrganizationTrustSettings:ZeroTrustOrganizationTrustSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    grantTrustToAllAccountsInOrg = registerOutput<bool>('grantTrustToAllAccountsInOrg');
    trustingAccounts = registerOutput<List<String>?>('trustingAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
