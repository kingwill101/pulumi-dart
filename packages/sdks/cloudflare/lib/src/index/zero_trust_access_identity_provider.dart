import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_identity_provider_args.dart';
import 'zero_trust_access_identity_provider_config.dart';
import 'zero_trust_access_identity_provider_saml_certificate_set.dart';
import 'zero_trust_access_identity_provider_scim_config.dart';
import 'zero_trust_access_identity_provider_state.dart';

/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read`
/// - `Access: Organizations, Identity Providers, and Groups Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessIdentityProvider = new cloudflare.ZeroTrustAccessIdentityProvider("example_zero_trust_access_identity_provider", {
///     config: {
///         claims: [
///             "email_verified",
///             "preferred_username",
///             "custom_claim_name",
///         ],
///         clientId: "<your client id>",
///         clientSecret: "<your client secret>",
///         conditionalAccessEnabled: true,
///         directoryId: "<your azure directory uuid>",
///         emailClaimName: "custom_claim_name",
///         prompt: "login",
///         supportGroups: true,
///     },
///     name: "Widget Corps IDP",
///     type: "onetimepin",
///     zoneId: "zone_id",
///     scimConfig: {
///         enabled: true,
///         identityUpdateBehavior: "automatic",
///         seatDeprovision: true,
///         userDeprovision: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_identity_provider = cloudflare.ZeroTrustAccessIdentityProvider("example_zero_trust_access_identity_provider",
///     config={
///         "claims": [
///             "email_verified",
///             "preferred_username",
///             "custom_claim_name",
///         ],
///         "client_id": "<your client id>",
///         "client_secret": "<your client secret>",
///         "conditional_access_enabled": True,
///         "directory_id": "<your azure directory uuid>",
///         "email_claim_name": "custom_claim_name",
///         "prompt": "login",
///         "support_groups": True,
///     },
///     name="Widget Corps IDP",
///     type="onetimepin",
///     zone_id="zone_id",
///     scim_config={
///         "enabled": True,
///         "identity_update_behavior": "automatic",
///         "seat_deprovision": True,
///         "user_deprovision": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessIdentityProvider = new Cloudflare.ZeroTrustAccessIdentityProvider("example_zero_trust_access_identity_provider", new()
///     {
///         Config = new Cloudflare.Inputs.ZeroTrustAccessIdentityProviderConfigArgs
///         {
///             Claims = new[]
///             {
///                 "email_verified",
///                 "preferred_username",
///                 "custom_claim_name",
///             },
///             ClientId = "<your client id>",
///             ClientSecret = "<your client secret>",
///             ConditionalAccessEnabled = true,
///             DirectoryId = "<your azure directory uuid>",
///             EmailClaimName = "custom_claim_name",
///             Prompt = "login",
///             SupportGroups = true,
///         },
///         Name = "Widget Corps IDP",
///         Type = "onetimepin",
///         ZoneId = "zone_id",
///         ScimConfig = new Cloudflare.Inputs.ZeroTrustAccessIdentityProviderScimConfigArgs
///         {
///             Enabled = true,
///             IdentityUpdateBehavior = "automatic",
///             SeatDeprovision = true,
///             UserDeprovision = true,
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
/// 		_, err := cloudflare.NewZeroTrustAccessIdentityProvider(ctx, "example_zero_trust_access_identity_provider", &cloudflare.ZeroTrustAccessIdentityProviderArgs{
/// 			Config: &cloudflare.ZeroTrustAccessIdentityProviderConfigArgs{
/// 				Claims: pulumi.StringArray{
/// 					pulumi.String("email_verified"),
/// 					pulumi.String("preferred_username"),
/// 					pulumi.String("custom_claim_name"),
/// 				},
/// 				ClientId:                 pulumi.String("<your client id>"),
/// 				ClientSecret:             pulumi.String("<your client secret>"),
/// 				ConditionalAccessEnabled: pulumi.Bool(true),
/// 				DirectoryId:              pulumi.String("<your azure directory uuid>"),
/// 				EmailClaimName:           pulumi.String("custom_claim_name"),
/// 				Prompt:                   pulumi.String("login"),
/// 				SupportGroups:            pulumi.Bool(true),
/// 			},
/// 			Name:   pulumi.String("Widget Corps IDP"),
/// 			Type:   pulumi.String("onetimepin"),
/// 			ZoneId: pulumi.String("zone_id"),
/// 			ScimConfig: &cloudflare.ZeroTrustAccessIdentityProviderScimConfigArgs{
/// 				Enabled:                pulumi.Bool(true),
/// 				IdentityUpdateBehavior: pulumi.String("automatic"),
/// 				SeatDeprovision:        pulumi.Bool(true),
/// 				UserDeprovision:        pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustaccessidentityprovider" "example_zero_trust_access_identity_provider" {
///   config = {
///     claims                     = ["email_verified", "preferred_username", "custom_claim_name"]
///     client_id                  = "<your client id>"
///     client_secret              = "<your client secret>"
///     conditional_access_enabled = true
///     directory_id               = "<your azure directory uuid>"
///     email_claim_name           = "custom_claim_name"
///     prompt                     = "login"
///     support_groups             = true
///   }
///   name    = "Widget Corps IDP"
///   type    = "onetimepin"
///   zone_id = "zone_id"
///   scim_config = {
///     enabled                  = true
///     identity_update_behavior = "automatic"
///     seat_deprovision         = true
///     user_deprovision         = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessIdentityProvider;
/// import com.pulumi.cloudflare.ZeroTrustAccessIdentityProviderArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessIdentityProviderConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessIdentityProviderScimConfigArgs;
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
///         var exampleZeroTrustAccessIdentityProvider = new ZeroTrustAccessIdentityProvider("exampleZeroTrustAccessIdentityProvider", ZeroTrustAccessIdentityProviderArgs.builder()
///             .config(ZeroTrustAccessIdentityProviderConfigArgs.builder()
///                 .claims(
///                     "email_verified",
///                     "preferred_username",
///                     "custom_claim_name")
///                 .clientId("<your client id>")
///                 .clientSecret("<your client secret>")
///                 .conditionalAccessEnabled(true)
///                 .directoryId("<your azure directory uuid>")
///                 .emailClaimName("custom_claim_name")
///                 .prompt("login")
///                 .supportGroups(true)
///                 .build())
///             .name("Widget Corps IDP")
///             .type("onetimepin")
///             .zoneId("zone_id")
///             .scimConfig(ZeroTrustAccessIdentityProviderScimConfigArgs.builder()
///                 .enabled(true)
///                 .identityUpdateBehavior("automatic")
///                 .seatDeprovision(true)
///                 .userDeprovision(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessIdentityProvider:
///     type: cloudflare:ZeroTrustAccessIdentityProvider
///     name: example_zero_trust_access_identity_provider
///     properties:
///       config:
///         claims:
///           - email_verified
///           - preferred_username
///           - custom_claim_name
///         clientId: <your client id>
///         clientSecret: <your client secret>
///         conditionalAccessEnabled: true
///         directoryId: <your azure directory uuid>
///         emailClaimName: custom_claim_name
///         prompt: login
///         supportGroups: true
///       name: Widget Corps IDP
///       type: onetimepin
///       zoneId: zone_id
///       scimConfig:
///         enabled: true
///         identityUpdateBehavior: automatic
///         seatDeprovision: true
///         userDeprovision: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessIdentityProvider:ZeroTrustAccessIdentityProvider example '<{accounts|zones}/{account_id|zone_id}>/<identity_provider_id>'
/// ```
class ZeroTrustAccessIdentityProvider extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  late final pulumi.Output<ZeroTrustAccessIdentityProviderConfig> config;
  /// The name of the identity provider, shown to users on the login page.
  late final pulumi.Output<String> name;
  /// Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  late final pulumi.Output<bool?> readOnly;
  /// The SAML encryption certificate set details, including current and previous certificates.
  /// Only present for SAML identity providers with a certificate set assigned.
  late final pulumi.Output<ZeroTrustAccessIdentityProviderSamlCertificateSet> samlCertificateSet;
  /// The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// Only present for SAML identity providers with encryption configured.
  /// Create a certificate set via POST to `/identity_providers/{id}/saml_certificate`.
  late final pulumi.Output<String?> samlCertificateSetId;
  /// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  late final pulumi.Output<ZeroTrustAccessIdentityProviderScimConfig> scimConfig;
  /// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// Available values: "onetimepin", "azureAD", "saml", "centrify", "facebook", "github", "google-apps", "google", "linkedin", "oidc", "okta", "onelogin", "pingone", "yandex", "cloudflare".
  late final pulumi.Output<String> type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ZeroTrustAccessIdentityProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessIdentityProvider]. {@macro pulumi_index_zero_trust_access_identity_provider_zero_trust_access_identity_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessIdentityProvider(
    String name, {
    ZeroTrustAccessIdentityProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessIdentityProvider:ZeroTrustAccessIdentityProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    config = registerOutput<ZeroTrustAccessIdentityProviderConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    readOnly = registerOutput<bool?>('readOnly');
    samlCertificateSet = registerOutput<ZeroTrustAccessIdentityProviderSamlCertificateSet>('samlCertificateSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderSamlCertificateSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlCertificateSetId = registerOutput<String?>('samlCertificateSetId');
    scimConfig = registerOutput<ZeroTrustAccessIdentityProviderScimConfig>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ZeroTrustAccessIdentityProvider] resource's state with the given [name] and [id].
  static ZeroTrustAccessIdentityProvider get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessIdentityProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessIdentityProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessIdentityProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessIdentityProvider:ZeroTrustAccessIdentityProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    config = registerOutput<ZeroTrustAccessIdentityProviderConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    readOnly = registerOutput<bool?>('readOnly');
    samlCertificateSet = registerOutput<ZeroTrustAccessIdentityProviderSamlCertificateSet>('samlCertificateSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderSamlCertificateSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlCertificateSetId = registerOutput<String?>('samlCertificateSetId');
    scimConfig = registerOutput<ZeroTrustAccessIdentityProviderScimConfig>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessIdentityProvider] resource.
  ZeroTrustAccessIdentityProvider.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessIdentityProvider:ZeroTrustAccessIdentityProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    config = registerOutput<ZeroTrustAccessIdentityProviderConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    readOnly = registerOutput<bool?>('readOnly');
    samlCertificateSet = registerOutput<ZeroTrustAccessIdentityProviderSamlCertificateSet>('samlCertificateSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderSamlCertificateSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samlCertificateSetId = registerOutput<String?>('samlCertificateSetId');
    scimConfig = registerOutput<ZeroTrustAccessIdentityProviderScimConfig>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustAccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }
}
