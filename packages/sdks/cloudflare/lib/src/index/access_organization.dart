import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_organization_args.dart';
import 'access_organization_custom_pages.dart';
import 'access_organization_login_design.dart';
import 'access_organization_mfa_config.dart';
import 'access_organization_mfa_ssh_piv_key_requirements.dart';
import 'access_organization_state.dart';

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
/// const exampleZeroTrustOrganization = new cloudflare.ZeroTrustOrganization("example_zero_trust_organization", {
///     zoneId: "zone_id",
///     allowAuthenticateViaWarp: true,
///     authDomain: "test.cloudflareaccess.com",
///     autoRedirectToIdentity: true,
///     customPages: {
///         forbidden: "699d98642c564d2e855e9661899b7252",
///         identityDenied: "699d98642c564d2e855e9661899b7252",
///     },
///     denyUnmatchedRequests: true,
///     denyUnmatchedRequestsExemptedZoneNames: ["example.com"],
///     isUiReadOnly: true,
///     loginDesign: {
///         backgroundColor: "#c5ed1b",
///         footerText: "This is an example description.",
///         headerText: "This is an example description.",
///         logoPath: "https://example.com/logo.png",
///         textColor: "#c5ed1b",
///     },
///     mfaConfig: {
///         allowedAuthenticators: [
///             "totp",
///             "biometrics",
///             "security_key",
///         ],
///         amrMatchingSessionDuration: "12h",
///         requiredAaguids: "2fc0579f-8113-47ea-b116-bb5a8db9202a",
///         sessionDuration: "24h",
///     },
///     mfaRequiredForAllApps: false,
///     mfaSshPivKeyRequirements: {
///         pinPolicy: "always",
///         requireFipsDevice: true,
///         sshKeySizes: [
///             256,
///             2048,
///         ],
///         sshKeyTypes: [
///             "ecdsa",
///             "rsa",
///         ],
///         touchPolicy: "always",
///     },
///     name: "Widget Corps Internal Applications",
///     sessionDuration: "24h",
///     uiReadOnlyToggleReason: "Temporarily turn off the UI read only lock to make a change via the UI",
///     userSeatExpirationInactiveTime: "730h",
///     warpAuthSessionDuration: "24h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_organization = cloudflare.ZeroTrustOrganization("example_zero_trust_organization",
///     zone_id="zone_id",
///     allow_authenticate_via_warp=True,
///     auth_domain="test.cloudflareaccess.com",
///     auto_redirect_to_identity=True,
///     custom_pages={
///         "forbidden": "699d98642c564d2e855e9661899b7252",
///         "identity_denied": "699d98642c564d2e855e9661899b7252",
///     },
///     deny_unmatched_requests=True,
///     deny_unmatched_requests_exempted_zone_names=["example.com"],
///     is_ui_read_only=True,
///     login_design={
///         "background_color": "#c5ed1b",
///         "footer_text": "This is an example description.",
///         "header_text": "This is an example description.",
///         "logo_path": "https://example.com/logo.png",
///         "text_color": "#c5ed1b",
///     },
///     mfa_config={
///         "allowed_authenticators": [
///             "totp",
///             "biometrics",
///             "security_key",
///         ],
///         "amr_matching_session_duration": "12h",
///         "required_aaguids": "2fc0579f-8113-47ea-b116-bb5a8db9202a",
///         "session_duration": "24h",
///     },
///     mfa_required_for_all_apps=False,
///     mfa_ssh_piv_key_requirements={
///         "pin_policy": "always",
///         "require_fips_device": True,
///         "ssh_key_sizes": [
///             256,
///             2048,
///         ],
///         "ssh_key_types": [
///             "ecdsa",
///             "rsa",
///         ],
///         "touch_policy": "always",
///     },
///     name="Widget Corps Internal Applications",
///     session_duration="24h",
///     ui_read_only_toggle_reason="Temporarily turn off the UI read only lock to make a change via the UI",
///     user_seat_expiration_inactive_time="730h",
///     warp_auth_session_duration="24h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustOrganization = new Cloudflare.ZeroTrustOrganization("example_zero_trust_organization", new()
///     {
///         ZoneId = "zone_id",
///         AllowAuthenticateViaWarp = true,
///         AuthDomain = "test.cloudflareaccess.com",
///         AutoRedirectToIdentity = true,
///         CustomPages = new Cloudflare.Inputs.ZeroTrustOrganizationCustomPagesArgs
///         {
///             Forbidden = "699d98642c564d2e855e9661899b7252",
///             IdentityDenied = "699d98642c564d2e855e9661899b7252",
///         },
///         DenyUnmatchedRequests = true,
///         DenyUnmatchedRequestsExemptedZoneNames = new[]
///         {
///             "example.com",
///         },
///         IsUiReadOnly = true,
///         LoginDesign = new Cloudflare.Inputs.ZeroTrustOrganizationLoginDesignArgs
///         {
///             BackgroundColor = "#c5ed1b",
///             FooterText = "This is an example description.",
///             HeaderText = "This is an example description.",
///             LogoPath = "https://example.com/logo.png",
///             TextColor = "#c5ed1b",
///         },
///         MfaConfig = new Cloudflare.Inputs.ZeroTrustOrganizationMfaConfigArgs
///         {
///             AllowedAuthenticators = new[]
///             {
///                 "totp",
///                 "biometrics",
///                 "security_key",
///             },
///             AmrMatchingSessionDuration = "12h",
///             RequiredAaguids = "2fc0579f-8113-47ea-b116-bb5a8db9202a",
///             SessionDuration = "24h",
///         },
///         MfaRequiredForAllApps = false,
///         MfaSshPivKeyRequirements = new Cloudflare.Inputs.ZeroTrustOrganizationMfaSshPivKeyRequirementsArgs
///         {
///             PinPolicy = "always",
///             RequireFipsDevice = true,
///             SshKeySizes = new[]
///             {
///                 256,
///                 2048,
///             },
///             SshKeyTypes = new[]
///             {
///                 "ecdsa",
///                 "rsa",
///             },
///             TouchPolicy = "always",
///         },
///         Name = "Widget Corps Internal Applications",
///         SessionDuration = "24h",
///         UiReadOnlyToggleReason = "Temporarily turn off the UI read only lock to make a change via the UI",
///         UserSeatExpirationInactiveTime = "730h",
///         WarpAuthSessionDuration = "24h",
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
/// 		_, err := cloudflare.NewZeroTrustOrganization(ctx, "example_zero_trust_organization", &cloudflare.ZeroTrustOrganizationArgs{
/// 			ZoneId:                   pulumi.String("zone_id"),
/// 			AllowAuthenticateViaWarp: pulumi.Bool(true),
/// 			AuthDomain:               pulumi.String("test.cloudflareaccess.com"),
/// 			AutoRedirectToIdentity:   pulumi.Bool(true),
/// 			CustomPages: &cloudflare.ZeroTrustOrganizationCustomPagesArgs{
/// 				Forbidden:      pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 				IdentityDenied: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			},
/// 			DenyUnmatchedRequests: pulumi.Bool(true),
/// 			DenyUnmatchedRequestsExemptedZoneNames: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 			},
/// 			IsUiReadOnly: pulumi.Bool(true),
/// 			LoginDesign: &cloudflare.ZeroTrustOrganizationLoginDesignArgs{
/// 				BackgroundColor: pulumi.String("#c5ed1b"),
/// 				FooterText:      pulumi.String("This is an example description."),
/// 				HeaderText:      pulumi.String("This is an example description."),
/// 				LogoPath:        pulumi.String("https://example.com/logo.png"),
/// 				TextColor:       pulumi.String("#c5ed1b"),
/// 			},
/// 			MfaConfig: &cloudflare.ZeroTrustOrganizationMfaConfigArgs{
/// 				AllowedAuthenticators: pulumi.StringArray{
/// 					pulumi.String("totp"),
/// 					pulumi.String("biometrics"),
/// 					pulumi.String("security_key"),
/// 				},
/// 				AmrMatchingSessionDuration: pulumi.String("12h"),
/// 				RequiredAaguids:            pulumi.String("2fc0579f-8113-47ea-b116-bb5a8db9202a"),
/// 				SessionDuration:            pulumi.String("24h"),
/// 			},
/// 			MfaRequiredForAllApps: pulumi.Bool(false),
/// 			MfaSshPivKeyRequirements: &cloudflare.ZeroTrustOrganizationMfaSshPivKeyRequirementsArgs{
/// 				PinPolicy:         pulumi.String("always"),
/// 				RequireFipsDevice: pulumi.Bool(true),
/// 				SshKeySizes: pulumi.IntArray{
/// 					pulumi.Int(256),
/// 					pulumi.Int(2048),
/// 				},
/// 				SshKeyTypes: pulumi.StringArray{
/// 					pulumi.String("ecdsa"),
/// 					pulumi.String("rsa"),
/// 				},
/// 				TouchPolicy: pulumi.String("always"),
/// 			},
/// 			Name:                           pulumi.String("Widget Corps Internal Applications"),
/// 			SessionDuration:                pulumi.String("24h"),
/// 			UiReadOnlyToggleReason:         pulumi.String("Temporarily turn off the UI read only lock to make a change via the UI"),
/// 			UserSeatExpirationInactiveTime: pulumi.String("730h"),
/// 			WarpAuthSessionDuration:        pulumi.String("24h"),
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
/// resource "cloudflare_zerotrustorganization" "example_zero_trust_organization" {
///   zone_id                     = "zone_id"
///   allow_authenticate_via_warp = true
///   auth_domain                 = "test.cloudflareaccess.com"
///   auto_redirect_to_identity   = true
///   custom_pages = {
///     forbidden       = "699d98642c564d2e855e9661899b7252"
///     identity_denied = "699d98642c564d2e855e9661899b7252"
///   }
///   deny_unmatched_requests                     = true
///   deny_unmatched_requests_exempted_zone_names = ["example.com"]
///   is_ui_read_only                             = true
///   login_design = {
///     background_color = "#c5ed1b"
///     footer_text      = "This is an example description."
///     header_text      = "This is an example description."
///     logo_path        = "https://example.com/logo.png"
///     text_color       = "#c5ed1b"
///   }
///   mfa_config = {
///     allowed_authenticators        = ["totp", "biometrics", "security_key"]
///     amr_matching_session_duration = "12h"
///     required_aaguids              = "2fc0579f-8113-47ea-b116-bb5a8db9202a"
///     session_duration              = "24h"
///   }
///   mfa_required_for_all_apps = false
///   mfa_ssh_piv_key_requirements = {
///     pin_policy          = "always"
///     require_fips_device = true
///     ssh_key_sizes       = [256, 2048]
///     ssh_key_types       = ["ecdsa", "rsa"]
///     touch_policy        = "always"
///   }
///   name                               = "Widget Corps Internal Applications"
///   session_duration                   = "24h"
///   ui_read_only_toggle_reason         = "Temporarily turn off the UI read only lock to make a change via the UI"
///   user_seat_expiration_inactive_time = "730h"
///   warp_auth_session_duration         = "24h"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustOrganization;
/// import com.pulumi.cloudflare.ZeroTrustOrganizationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustOrganizationCustomPagesArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustOrganizationLoginDesignArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustOrganizationMfaConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustOrganizationMfaSshPivKeyRequirementsArgs;
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
///         var exampleZeroTrustOrganization = new ZeroTrustOrganization("exampleZeroTrustOrganization", ZeroTrustOrganizationArgs.builder()
///             .zoneId("zone_id")
///             .allowAuthenticateViaWarp(true)
///             .authDomain("test.cloudflareaccess.com")
///             .autoRedirectToIdentity(true)
///             .customPages(ZeroTrustOrganizationCustomPagesArgs.builder()
///                 .forbidden("699d98642c564d2e855e9661899b7252")
///                 .identityDenied("699d98642c564d2e855e9661899b7252")
///                 .build())
///             .denyUnmatchedRequests(true)
///             .denyUnmatchedRequestsExemptedZoneNames("example.com")
///             .isUiReadOnly(true)
///             .loginDesign(ZeroTrustOrganizationLoginDesignArgs.builder()
///                 .backgroundColor("#c5ed1b")
///                 .footerText("This is an example description.")
///                 .headerText("This is an example description.")
///                 .logoPath("https://example.com/logo.png")
///                 .textColor("#c5ed1b")
///                 .build())
///             .mfaConfig(ZeroTrustOrganizationMfaConfigArgs.builder()
///                 .allowedAuthenticators(
///                     "totp",
///                     "biometrics",
///                     "security_key")
///                 .amrMatchingSessionDuration("12h")
///                 .requiredAaguids("2fc0579f-8113-47ea-b116-bb5a8db9202a")
///                 .sessionDuration("24h")
///                 .build())
///             .mfaRequiredForAllApps(false)
///             .mfaSshPivKeyRequirements(ZeroTrustOrganizationMfaSshPivKeyRequirementsArgs.builder()
///                 .pinPolicy("always")
///                 .requireFipsDevice(true)
///                 .sshKeySizes(
///                     256,
///                     2048)
///                 .sshKeyTypes(
///                     "ecdsa",
///                     "rsa")
///                 .touchPolicy("always")
///                 .build())
///             .name("Widget Corps Internal Applications")
///             .sessionDuration("24h")
///             .uiReadOnlyToggleReason("Temporarily turn off the UI read only lock to make a change via the UI")
///             .userSeatExpirationInactiveTime("730h")
///             .warpAuthSessionDuration("24h")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustOrganization:
///     type: cloudflare:ZeroTrustOrganization
///     name: example_zero_trust_organization
///     properties:
///       zoneId: zone_id
///       allowAuthenticateViaWarp: true
///       authDomain: test.cloudflareaccess.com
///       autoRedirectToIdentity: true
///       customPages:
///         forbidden: 699d98642c564d2e855e9661899b7252
///         identityDenied: 699d98642c564d2e855e9661899b7252
///       denyUnmatchedRequests: true
///       denyUnmatchedRequestsExemptedZoneNames:
///         - example.com
///       isUiReadOnly: true
///       loginDesign:
///         backgroundColor: '#c5ed1b'
///         footerText: This is an example description.
///         headerText: This is an example description.
///         logoPath: https://example.com/logo.png
///         textColor: '#c5ed1b'
///       mfaConfig:
///         allowedAuthenticators:
///           - totp
///           - biometrics
///           - security_key
///         amrMatchingSessionDuration: 12h
///         requiredAaguids: 2fc0579f-8113-47ea-b116-bb5a8db9202a
///         sessionDuration: 24h
///       mfaRequiredForAllApps: false
///       mfaSshPivKeyRequirements:
///         pinPolicy: always
///         requireFipsDevice: true
///         sshKeySizes:
///           - 256
///           - 2048
///         sshKeyTypes:
///           - ecdsa
///           - rsa
///         touchPolicy: always
///       name: Widget Corps Internal Applications
///       sessionDuration: 24h
///       uiReadOnlyToggleReason: Temporarily turn off the UI read only lock to make a change via the UI
///       userSeatExpirationInactiveTime: 730h
///       warpAuthSessionDuration: 24h
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AccessOrganization extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// When set to true, users can authenticate via WARP for any application in your organization. Application settings will take precedence over this value.
  late final pulumi.Output<bool> allowAuthenticateViaWarp;
  /// The unique subdomain assigned to your Zero Trust organization.
  late final pulumi.Output<String?> authDomain;
  /// When set to `true`, users skip the identity provider selection step during login.
  late final pulumi.Output<bool> autoRedirectToIdentity;
  late final pulumi.Output<AccessOrganizationCustomPages?> customPages;
  /// Determines whether to deny all requests to Cloudflare-protected resources that lack an associated Access application. If enabled, you must explicitly configure an Access application and policy to allow traffic to your Cloudflare-protected resources. For domains you want to be public across all subdomains, add the domain to the `denyUnmatchedRequestsExemptedZoneNames` array.
  late final pulumi.Output<bool?> denyUnmatchedRequests;
  /// Contains zone names to exempt from the `denyUnmatchedRequests` feature. Requests to a subdomain in an exempted zone will block unauthenticated traffic by default if there is a configured Access application and policy that matches the request.
  late final pulumi.Output<List<String>?> denyUnmatchedRequestsExemptedZoneNames;
  /// Lock all settings as Read-Only in the Dashboard, regardless of user permission. Updates may only be made via the API or Terraform for this account when enabled.
  late final pulumi.Output<bool> isUiReadOnly;
  late final pulumi.Output<AccessOrganizationLoginDesign?> loginDesign;
  /// Configures multi-factor authentication (MFA) settings for an organization.
  late final pulumi.Output<AccessOrganizationMfaConfig?> mfaConfig;
  /// Indicates if this organization can enforce multi-factor authentication (MFA) requirements at the application and policy level.
  late final pulumi.Output<bool> mfaConfigurationAllowed;
  /// Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured. Note: 'allowed*authenticators' cannot only contain 'ssh*piv_key' if the organization has any non-infrastructure applications because PIV keys are only compatible with infrastructure apps.
  late final pulumi.Output<bool> mfaRequiredForAllApps;
  /// Configures SSH PIV key requirements for MFA using hardware security keys.
  late final pulumi.Output<AccessOrganizationMfaSshPivKeyRequirements?> mfaSshPivKeyRequirements;
  /// The name of your Zero Trust organization.
  late final pulumi.Output<String?> name;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  late final pulumi.Output<String?> sessionDuration;
  /// A description of the reason why the UI read only field is being toggled.
  late final pulumi.Output<String> uiReadOnlyToggleReason;
  /// The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count.  Minimum value for this setting is 1 month (730h). Must be in the format `300ms` or `2h45m`. Valid time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
  late final pulumi.Output<String?> userSeatExpirationInactiveTime;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `30m` or `2h45m`. Valid time units are: m, h.
  late final pulumi.Output<String?> warpAuthSessionDuration;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessOrganization]. {@macro pulumi_index_access_organization_access_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessOrganization(
    String name, {
    AccessOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessOrganization:AccessOrganization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool>('allowAuthenticateViaWarp');
    authDomain = registerOutput<String?>('authDomain');
    autoRedirectToIdentity = registerOutput<bool>('autoRedirectToIdentity');
    customPages = registerOutput<AccessOrganizationCustomPages?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationCustomPages.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    denyUnmatchedRequests = registerOutput<bool?>('denyUnmatchedRequests');
    denyUnmatchedRequestsExemptedZoneNames = registerOutput<List<String>?>('denyUnmatchedRequestsExemptedZoneNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    isUiReadOnly = registerOutput<bool>('isUiReadOnly');
    loginDesign = registerOutput<AccessOrganizationLoginDesign?>('loginDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationLoginDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfig = registerOutput<AccessOrganizationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfigurationAllowed = registerOutput<bool>('mfaConfigurationAllowed');
    mfaRequiredForAllApps = registerOutput<bool>('mfaRequiredForAllApps');
    mfaSshPivKeyRequirements = registerOutput<AccessOrganizationMfaSshPivKeyRequirements?>('mfaSshPivKeyRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaSshPivKeyRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    sessionDuration = registerOutput<String?>('sessionDuration');
    uiReadOnlyToggleReason = registerOutput<String>('uiReadOnlyToggleReason');
    userSeatExpirationInactiveTime = registerOutput<String?>('userSeatExpirationInactiveTime');
    warpAuthSessionDuration = registerOutput<String?>('warpAuthSessionDuration');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessOrganization] resource's state with the given [name] and [id].
  static AccessOrganization get(
    String name,
    pulumi.Input<String> id, {
    AccessOrganizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessOrganization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessOrganization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessOrganization:AccessOrganization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool>('allowAuthenticateViaWarp');
    authDomain = registerOutput<String?>('authDomain');
    autoRedirectToIdentity = registerOutput<bool>('autoRedirectToIdentity');
    customPages = registerOutput<AccessOrganizationCustomPages?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationCustomPages.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    denyUnmatchedRequests = registerOutput<bool?>('denyUnmatchedRequests');
    denyUnmatchedRequestsExemptedZoneNames = registerOutput<List<String>?>('denyUnmatchedRequestsExemptedZoneNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    isUiReadOnly = registerOutput<bool>('isUiReadOnly');
    loginDesign = registerOutput<AccessOrganizationLoginDesign?>('loginDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationLoginDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfig = registerOutput<AccessOrganizationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfigurationAllowed = registerOutput<bool>('mfaConfigurationAllowed');
    mfaRequiredForAllApps = registerOutput<bool>('mfaRequiredForAllApps');
    mfaSshPivKeyRequirements = registerOutput<AccessOrganizationMfaSshPivKeyRequirements?>('mfaSshPivKeyRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaSshPivKeyRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    sessionDuration = registerOutput<String?>('sessionDuration');
    uiReadOnlyToggleReason = registerOutput<String>('uiReadOnlyToggleReason');
    userSeatExpirationInactiveTime = registerOutput<String?>('userSeatExpirationInactiveTime');
    warpAuthSessionDuration = registerOutput<String?>('warpAuthSessionDuration');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessOrganization] resource.
  AccessOrganization.reference(String urn)
    : super(
        'cloudflare:index/accessOrganization:AccessOrganization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool>('allowAuthenticateViaWarp');
    authDomain = registerOutput<String?>('authDomain');
    autoRedirectToIdentity = registerOutput<bool>('autoRedirectToIdentity');
    customPages = registerOutput<AccessOrganizationCustomPages?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationCustomPages.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    denyUnmatchedRequests = registerOutput<bool?>('denyUnmatchedRequests');
    denyUnmatchedRequestsExemptedZoneNames = registerOutput<List<String>?>('denyUnmatchedRequestsExemptedZoneNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    isUiReadOnly = registerOutput<bool>('isUiReadOnly');
    loginDesign = registerOutput<AccessOrganizationLoginDesign?>('loginDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationLoginDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfig = registerOutput<AccessOrganizationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mfaConfigurationAllowed = registerOutput<bool>('mfaConfigurationAllowed');
    mfaRequiredForAllApps = registerOutput<bool>('mfaRequiredForAllApps');
    mfaSshPivKeyRequirements = registerOutput<AccessOrganizationMfaSshPivKeyRequirements?>('mfaSshPivKeyRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessOrganizationMfaSshPivKeyRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    sessionDuration = registerOutput<String?>('sessionDuration');
    uiReadOnlyToggleReason = registerOutput<String>('uiReadOnlyToggleReason');
    userSeatExpirationInactiveTime = registerOutput<String?>('userSeatExpirationInactiveTime');
    warpAuthSessionDuration = registerOutput<String?>('warpAuthSessionDuration');
    zoneId = registerOutput<String?>('zoneId');
  }
}
