import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_sso_profile_args.dart';
import 'inbound_saml_sso_profile_idp_config.dart';
import 'inbound_saml_sso_profile_sp_config.dart';
import 'inbound_saml_sso_profile_state.dart';

/// A SAML federation between a Google enterprise customer and a SAML identity provider.
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
/// To get more information about InboundSamlSsoProfile, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/inboundSamlSsoProfiles)
/// * How-to Guides
/// * [Assign SSO profiles](https://cloud.google.com/identity/docs/how-to/assign-sso-profiles)
/// * [Set up SSO with a third party IdP](https://support.google.com/a/answer/12032922)
///
/// &gt; **Warning:** If the customer has Multi-Party Approval (MPA) enabled for sensitive actions,
/// creating or updating a profile returns an error (`awaiting-multi-party-approval`) while
/// the change awaits second-admin approval in Google Admin Console. Once approved,
/// a newly created profile can be imported and an updated profile can be refreshed.
///
///
/// ## Example Usage
///
/// ### Cloud Identity Inbound Saml Sso Profile Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const samlProfile = new gcp.cloudidentity.InboundSamlSsoProfile("saml_profile", {
///     customer: "customers/A01b123xz",
///     displayName: "saml-profile",
///     idpConfig: {
///         entityId: "https://idp.example.com/saml-profile",
///         singleSignOnServiceUri: "https://idp.example.com/sso",
///         logoutRedirectUri: "https://idp.example.com/logout",
///         changePasswordUri: "https://idp.example.com/change-password",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// saml_profile = gcp.cloudidentity.InboundSamlSsoProfile("saml_profile",
///     customer="customers/A01b123xz",
///     display_name="saml-profile",
///     idp_config={
///         "entity_id": "https://idp.example.com/saml-profile",
///         "single_sign_on_service_uri": "https://idp.example.com/sso",
///         "logout_redirect_uri": "https://idp.example.com/logout",
///         "change_password_uri": "https://idp.example.com/change-password",
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
///     var samlProfile = new Gcp.CloudIdentity.InboundSamlSsoProfile("saml_profile", new()
///     {
///         Customer = "customers/A01b123xz",
///         DisplayName = "saml-profile",
///         IdpConfig = new Gcp.CloudIdentity.Inputs.InboundSamlSsoProfileIdpConfigArgs
///         {
///             EntityId = "https://idp.example.com/saml-profile",
///             SingleSignOnServiceUri = "https://idp.example.com/sso",
///             LogoutRedirectUri = "https://idp.example.com/logout",
///             ChangePasswordUri = "https://idp.example.com/change-password",
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
/// 		_, err := cloudidentity.NewInboundSamlSsoProfile(ctx, "saml_profile", &cloudidentity.InboundSamlSsoProfileArgs{
/// 			Customer:    pulumi.String("customers/A01b123xz"),
/// 			DisplayName: pulumi.String("saml-profile"),
/// 			IdpConfig: &cloudidentity.InboundSamlSsoProfileIdpConfigArgs{
/// 				EntityId:               pulumi.String("https://idp.example.com/saml-profile"),
/// 				SingleSignOnServiceUri: pulumi.String("https://idp.example.com/sso"),
/// 				LogoutRedirectUri:      pulumi.String("https://idp.example.com/logout"),
/// 				ChangePasswordUri:      pulumi.String("https://idp.example.com/change-password"),
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
/// resource "gcp_cloudidentity_inbound_saml_sso_profile" "saml_profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   customer     = "customers/A01b123xz"
///   display_name = "saml-profile"
///   idp_config = {
///     entity_id                  = "https://idp.example.com/saml-profile"
///     single_sign_on_service_uri = "https://idp.example.com/sso"
///     logout_redirect_uri        = "https://idp.example.com/logout"
///     change_password_uri        = "https://idp.example.com/change-password"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.InboundSamlSsoProfile;
/// import com.pulumi.gcp.cloudidentity.InboundSamlSsoProfileArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.InboundSamlSsoProfileIdpConfigArgs;
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
///         var samlProfile = new InboundSamlSsoProfile("samlProfile", InboundSamlSsoProfileArgs.builder()
///             .customer("customers/A01b123xz")
///             .displayName("saml-profile")
///             .idpConfig(InboundSamlSsoProfileIdpConfigArgs.builder()
///                 .entityId("https://idp.example.com/saml-profile")
///                 .singleSignOnServiceUri("https://idp.example.com/sso")
///                 .logoutRedirectUri("https://idp.example.com/logout")
///                 .changePasswordUri("https://idp.example.com/change-password")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   samlProfile:
///     type: gcp:cloudidentity:InboundSamlSsoProfile
///     name: saml_profile
///     properties:
///       customer: customers/A01b123xz
///       displayName: saml-profile
///       idpConfig:
///         entityId: https://idp.example.com/saml-profile
///         singleSignOnServiceUri: https://idp.example.com/sso
///         logoutRedirectUri: https://idp.example.com/logout
///         changePasswordUri: https://idp.example.com/change-password
/// ```
///
///
/// ## Import
///
/// InboundSamlSsoProfile can be imported using any of these accepted formats:
///
/// * `inboundSamlSsoProfiles/{{inbound_saml_sso_profile_id}}`
/// * `{{inbound_saml_sso_profile_id}}`
///
///
/// When using the `pulumi import` command, InboundSamlSsoProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/inboundSamlSsoProfile:InboundSamlSsoProfile default inboundSamlSsoProfiles/{{inbound_saml_sso_profile_id}}
/// $ pulumi import gcp:cloudidentity/inboundSamlSsoProfile:InboundSamlSsoProfile default {{inbound_saml_sso_profile_id}}
/// ```
class InboundSamlSsoProfile extends pulumi.CustomResource {
  /// The customer. For example: `customers/C0123abc`. If omitted, the customer of the caller is used.
  late final pulumi.Output<String> customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable name of the SAML SSO profile.
  late final pulumi.Output<String?> displayName;
  /// SAML identity provider configuration.
  /// Structure is documented below.
  late final pulumi.Output<InboundSamlSsoProfileIdpConfig> idpConfig;
  /// The server-assigned ID of the SAML SSO profile (the last segment of
  /// `name`).
  late final pulumi.Output<String> inboundSamlSsoProfileId;
  /// Resource name of the SAML SSO profile, assigned by the server.
  /// Format: `inboundSamlSsoProfiles/{inbound_saml_sso_profile_id}`.
  late final pulumi.Output<String> name;
  /// SAML service provider configuration for this SAML SSO profile. These are the service
  /// provider details provided by Google that should be configured on the corresponding
  /// identity provider.
  /// Structure is documented below.
  late final pulumi.Output<List<InboundSamlSsoProfileSpConfig>> spConfigs;

  /// Creates a new [InboundSamlSsoProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSamlSsoProfile]. {@macro pulumi_cloudidentity_inbound_saml_sso_profile_inbound_saml_sso_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSamlSsoProfile(
    String name, {
    InboundSamlSsoProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/inboundSamlSsoProfile:InboundSamlSsoProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundSamlSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundSamlSsoProfileId = registerOutput<String>('inboundSamlSsoProfileId');
    this.name = registerOutput<String>('name');
    spConfigs = registerOutput<List<InboundSamlSsoProfileSpConfig>>('spConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundSamlSsoProfileSpConfig>(guardedValue, (value) => InboundSamlSsoProfileSpConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [InboundSamlSsoProfile] resource's state with the given [name] and [id].
  static InboundSamlSsoProfile get(
    String name,
    pulumi.Input<String> id, {
    InboundSamlSsoProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InboundSamlSsoProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InboundSamlSsoProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/inboundSamlSsoProfile:InboundSamlSsoProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundSamlSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundSamlSsoProfileId = registerOutput<String>('inboundSamlSsoProfileId');
    this.name = registerOutput<String>('name');
    spConfigs = registerOutput<List<InboundSamlSsoProfileSpConfig>>('spConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundSamlSsoProfileSpConfig>(guardedValue, (value) => InboundSamlSsoProfileSpConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [InboundSamlSsoProfile] resource.
  InboundSamlSsoProfile.reference(String urn)
    : super(
        'gcp:cloudidentity/inboundSamlSsoProfile:InboundSamlSsoProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    idpConfig = registerOutput<InboundSamlSsoProfileIdpConfig>('idpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InboundSamlSsoProfileIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundSamlSsoProfileId = registerOutput<String>('inboundSamlSsoProfileId');
    this.name = registerOutput<String>('name');
    spConfigs = registerOutput<List<InboundSamlSsoProfileSpConfig>>('spConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundSamlSsoProfileSpConfig>(guardedValue, (value) => InboundSamlSsoProfileSpConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
