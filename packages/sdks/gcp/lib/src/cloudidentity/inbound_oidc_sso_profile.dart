import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_oidc_sso_profile_args.dart';
import 'inbound_oidc_sso_profile_idp_config.dart';
import 'inbound_oidc_sso_profile_rp_config.dart';
import 'inbound_oidc_sso_profile_state.dart';

/// An OIDC federation between a Google enterprise customer and an OIDC identity provider.
///
/// The caller must be a Google Workspace / Cloud Identity administrator of the
/// customer with the SSO settings privilege (for example a super admin);
/// Google Cloud IAM roles are not sufficient.
///
/// If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProject` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the Cloud Identity API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProject` you defined.
///
///
/// To get more information about InboundOidcSsoProfile, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/inboundOidcSsoProfiles)
/// * How-to Guides
/// * [Assign SSO profiles](https://cloud.google.com/identity/docs/how-to/assign-sso-profiles)
/// * [Set up SSO with OIDC](https://support.google.com/a/answer/13511217)
///
/// &gt; **Warning:** If the customer has Multi-Party Approval (MPA) enabled for sensitive actions, creating, updating, or deleting an SSO profile returns an operation awaiting second-admin approval (`awaiting-multi-party-approval`) and Terraform will return an error until the request is approved in Google Admin Console (after approval, a newly created profile can be imported or an updated profile refreshed).
///
///
///
///
/// ## Example Usage
///
/// ### Cloud Identity Inbound Oidc Sso Profile Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oidcProfile = new gcp.cloudidentity.InboundOidcSsoProfile("oidc_profile", {
///     customer: "customers/A01b123xz",
///     displayName: "oidc-profile",
///     idpConfig: {
///         issuerUri: "https://idp.example.com",
///         changePasswordUri: "https://idp.example.com/change-password",
///     },
///     rpConfig: {
///         clientId: "test-client-id",
///         clientSecret: "test-client-secret",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oidc_profile = gcp.cloudidentity.InboundOidcSsoProfile("oidc_profile",
///     customer="customers/A01b123xz",
///     display_name="oidc-profile",
///     idp_config={
///         "issuer_uri": "https://idp.example.com",
///         "change_password_uri": "https://idp.example.com/change-password",
///     },
///     rp_config={
///         "client_id": "test-client-id",
///         "client_secret": "test-client-secret",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oidcProfile = new Gcp.CloudIdentity.InboundOidcSsoProfile("oidc_profile", new()
///     {
///         Customer = "customers/A01b123xz",
///         DisplayName = "oidc-profile",
///         IdpConfig = new Gcp.CloudIdentity.Inputs.InboundOidcSsoProfileIdpConfigArgs
///         {
///             IssuerUri = "https://idp.example.com",
///             ChangePasswordUri = "https://idp.example.com/change-password",
///         },
///         RpConfig = new Gcp.CloudIdentity.Inputs.InboundOidcSsoProfileRpConfigArgs
///         {
///             ClientId = "test-client-id",
///             ClientSecret = "test-client-secret",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.NewInboundOidcSsoProfile(ctx, "oidc_profile", &cloudidentity.InboundOidcSsoProfileArgs{
/// 			Customer:    pulumi.String("customers/A01b123xz"),
/// 			DisplayName: pulumi.String("oidc-profile"),
/// 			IdpConfig: &cloudidentity.InboundOidcSsoProfileIdpConfigArgs{
/// 				IssuerUri:         pulumi.String("https://idp.example.com"),
/// 				ChangePasswordUri: pulumi.String("https://idp.example.com/change-password"),
/// 			},
/// 			RpConfig: &cloudidentity.InboundOidcSsoProfileRpConfigArgs{
/// 				ClientId:     pulumi.String("test-client-id"),
/// 				ClientSecret: pulumi.String("test-client-secret"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudidentity_inbound_oidc_sso_profile" "oidc_profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   customer     = "customers/A01b123xz"
///   display_name = "oidc-profile"
///   idp_config = {
///     issuer_uri          = "https://idp.example.com"
///     change_password_uri = "https://idp.example.com/change-password"
///   }
///   rp_config = {
///     client_id     = "test-client-id"
///     client_secret = "test-client-secret"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.InboundOidcSsoProfile;
/// import com.pulumi.gcp.cloudidentity.InboundOidcSsoProfileArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.InboundOidcSsoProfileIdpConfigArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.InboundOidcSsoProfileRpConfigArgs;
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
///         var oidcProfile = new InboundOidcSsoProfile("oidcProfile", InboundOidcSsoProfileArgs.builder()
///             .customer("customers/A01b123xz")
///             .displayName("oidc-profile")
///             .idpConfig(InboundOidcSsoProfileIdpConfigArgs.builder()
///                 .issuerUri("https://idp.example.com")
///                 .changePasswordUri("https://idp.example.com/change-password")
///                 .build())
///             .rpConfig(InboundOidcSsoProfileRpConfigArgs.builder()
///                 .clientId("test-client-id")
///                 .clientSecret("test-client-secret")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   oidcProfile:
///     type: gcp:cloudidentity:InboundOidcSsoProfile
///     name: oidc_profile
///     properties:
///       customer: customers/A01b123xz
///       displayName: oidc-profile
///       idpConfig:
///         issuerUri: https://idp.example.com
///         changePasswordUri: https://idp.example.com/change-password
///       rpConfig:
///         clientId: test-client-id
///         clientSecret: test-client-secret
/// ```
///
///
/// ## Import
///
/// InboundOidcSsoProfile can be imported using any of these accepted formats:
///
/// * `inboundOidcSsoProfiles/{{inbound_oidc_sso_profile_id}}`
/// * `{{inbound_oidc_sso_profile_id}}`
///
///
/// When using the `pulumi import` command, InboundOidcSsoProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/inboundOidcSsoProfile:InboundOidcSsoProfile default inboundOidcSsoProfiles/{{inbound_oidc_sso_profile_id}}
/// $ pulumi import gcp:cloudidentity/inboundOidcSsoProfile:InboundOidcSsoProfile default {{inbound_oidc_sso_profile_id}}
/// ```
class InboundOidcSsoProfile extends pulumi.CustomResource {
  /// The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  late final pulumi.Output<String> customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable name of the OIDC SSO profile.
  late final pulumi.Output<String?> displayName;
  /// OIDC identity provider configuration.
  /// Structure is documented below.
  late final pulumi.Output<InboundOidcSsoProfileIdpConfig> idpConfig;
  /// The server-assigned ID of the OIDC SSO profile (the last segment of `name`).
  late final pulumi.Output<String> inboundOidcSsoProfileId;
  /// Resource name of the OIDC SSO profile, in the format `inboundOidcSsoProfiles/{inbound_oidc_sso_profile_id}`.
  late final pulumi.Output<String> name;
  /// OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details
  /// provided by Google that should be configured on the corresponding identity provider.
  /// Structure is documented below.
  late final pulumi.Output<InboundOidcSsoProfileRpConfig> rpConfig;

  /// Creates a new [InboundOidcSsoProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundOidcSsoProfile]. {@macro pulumi_cloudidentity_inbound_oidc_sso_profile_inbound_oidc_sso_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundOidcSsoProfile(
    String name, {
    InboundOidcSsoProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/inboundOidcSsoProfile:InboundOidcSsoProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundOidcSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundOidcSsoProfileId = registerOutput<String>('inboundOidcSsoProfileId');
    this.name = registerOutput<String>('name');
    rpConfig = registerOutput<InboundOidcSsoProfileRpConfig>('rpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileRpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InboundOidcSsoProfile] resource's state with the given [name] and [id].
  static InboundOidcSsoProfile get(
    String name,
    pulumi.Input<String> id, {
    InboundOidcSsoProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InboundOidcSsoProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InboundOidcSsoProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/inboundOidcSsoProfile:InboundOidcSsoProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundOidcSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundOidcSsoProfileId = registerOutput<String>('inboundOidcSsoProfileId');
    this.name = registerOutput<String>('name');
    rpConfig = registerOutput<InboundOidcSsoProfileRpConfig>('rpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileRpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [InboundOidcSsoProfile] resource.
  InboundOidcSsoProfile.reference(String urn)
    : super(
        'gcp:cloudidentity/inboundOidcSsoProfile:InboundOidcSsoProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundOidcSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundOidcSsoProfileId = registerOutput<String>('inboundOidcSsoProfileId');
    this.name = registerOutput<String>('name');
    rpConfig = registerOutput<InboundOidcSsoProfileRpConfig>('rpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundOidcSsoProfileRpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
