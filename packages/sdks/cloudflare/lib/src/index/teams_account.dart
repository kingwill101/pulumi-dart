import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_account_args.dart';
import 'teams_account_settings.dart';
import 'teams_account_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewaySettings = new cloudflare.ZeroTrustGatewaySettings("example_zero_trust_gateway_settings", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     settings: {
///         activityLog: {
///             enabled: true,
///         },
///         antivirus: {
///             enabledDownloadPhase: false,
///             enabledUploadPhase: false,
///             failClosed: false,
///             notificationSettings: {
///                 enabled: true,
///                 includeContext: true,
///                 msg: "msg",
///                 supportUrl: "support_url",
///             },
///         },
///         blockPage: {
///             backgroundColor: "background_color",
///             enabled: true,
///             footerText: "--footer--",
///             headerText: "--header--",
///             includeContext: true,
///             logoPath: "https://logos.com/a.png",
///             mailtoAddress: "admin@example.com",
///             mailtoSubject: "Blocked User Inquiry",
///             mode: "",
///             name: "Cloudflare",
///             suppressFooter: false,
///             targetUri: "https://example.com",
///         },
///         bodyScanning: {
///             inspectionMode: "deep",
///         },
///         browserIsolation: {
///             nonIdentityEnabled: true,
///             urlBrowserIsolationEnabled: true,
///         },
///         certificate: {
///             id: "d1b364c5-1311-466e-a194-f0e943e0799f",
///         },
///         customCertificate: {
///             enabled: true,
///             id: "d1b364c5-1311-466e-a194-f0e943e0799f",
///         },
///         extendedEmailMatching: {
///             enabled: true,
///         },
///         fips: {
///             tls: true,
///         },
///         hostSelector: {
///             enabled: false,
///         },
///         inspection: {
///             mode: "static",
///         },
///         maxTtlSecs: 3600,
///         protocolDetection: {
///             enabled: true,
///         },
///         sandbox: {
///             enabled: true,
///             fallbackAction: "allow",
///         },
///         tlsDecrypt: {
///             enabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_settings = cloudflare.ZeroTrustGatewaySettings("example_zero_trust_gateway_settings",
///     account_id="699d98642c564d2e855e9661899b7252",
///     settings={
///         "activity_log": {
///             "enabled": True,
///         },
///         "antivirus": {
///             "enabled_download_phase": False,
///             "enabled_upload_phase": False,
///             "fail_closed": False,
///             "notification_settings": {
///                 "enabled": True,
///                 "include_context": True,
///                 "msg": "msg",
///                 "support_url": "support_url",
///             },
///         },
///         "block_page": {
///             "background_color": "background_color",
///             "enabled": True,
///             "footer_text": "--footer--",
///             "header_text": "--header--",
///             "include_context": True,
///             "logo_path": "https://logos.com/a.png",
///             "mailto_address": "admin@example.com",
///             "mailto_subject": "Blocked User Inquiry",
///             "mode": "",
///             "name": "Cloudflare",
///             "suppress_footer": False,
///             "target_uri": "https://example.com",
///         },
///         "body_scanning": {
///             "inspection_mode": "deep",
///         },
///         "browser_isolation": {
///             "non_identity_enabled": True,
///             "url_browser_isolation_enabled": True,
///         },
///         "certificate": {
///             "id": "d1b364c5-1311-466e-a194-f0e943e0799f",
///         },
///         "custom_certificate": {
///             "enabled": True,
///             "id": "d1b364c5-1311-466e-a194-f0e943e0799f",
///         },
///         "extended_email_matching": {
///             "enabled": True,
///         },
///         "fips": {
///             "tls": True,
///         },
///         "host_selector": {
///             "enabled": False,
///         },
///         "inspection": {
///             "mode": "static",
///         },
///         "max_ttl_secs": 3600,
///         "protocol_detection": {
///             "enabled": True,
///         },
///         "sandbox": {
///             "enabled": True,
///             "fallback_action": "allow",
///         },
///         "tls_decrypt": {
///             "enabled": True,
///         },
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
///     var exampleZeroTrustGatewaySettings = new Cloudflare.ZeroTrustGatewaySettings("example_zero_trust_gateway_settings", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Settings = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsArgs
///         {
///             ActivityLog = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsActivityLogArgs
///             {
///                 Enabled = true,
///             },
///             Antivirus = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsAntivirusArgs
///             {
///                 EnabledDownloadPhase = false,
///                 EnabledUploadPhase = false,
///                 FailClosed = false,
///                 NotificationSettings = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettingsArgs
///                 {
///                     Enabled = true,
///                     IncludeContext = true,
///                     Msg = "msg",
///                     SupportUrl = "support_url",
///                 },
///             },
///             BlockPage = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsBlockPageArgs
///             {
///                 BackgroundColor = "background_color",
///                 Enabled = true,
///                 FooterText = "--footer--",
///                 HeaderText = "--header--",
///                 IncludeContext = true,
///                 LogoPath = "https://logos.com/a.png",
///                 MailtoAddress = "admin@example.com",
///                 MailtoSubject = "Blocked User Inquiry",
///                 Mode = "",
///                 Name = "Cloudflare",
///                 SuppressFooter = false,
///                 TargetUri = "https://example.com",
///             },
///             BodyScanning = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsBodyScanningArgs
///             {
///                 InspectionMode = "deep",
///             },
///             BrowserIsolation = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsBrowserIsolationArgs
///             {
///                 NonIdentityEnabled = true,
///                 UrlBrowserIsolationEnabled = true,
///             },
///             Certificate = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsCertificateArgs
///             {
///                 Id = "d1b364c5-1311-466e-a194-f0e943e0799f",
///             },
///             CustomCertificate = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsCustomCertificateArgs
///             {
///                 Enabled = true,
///                 Id = "d1b364c5-1311-466e-a194-f0e943e0799f",
///             },
///             ExtendedEmailMatching = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsExtendedEmailMatchingArgs
///             {
///                 Enabled = true,
///             },
///             Fips = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsFipsArgs
///             {
///                 Tls = true,
///             },
///             HostSelector = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsHostSelectorArgs
///             {
///                 Enabled = false,
///             },
///             Inspection = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsInspectionArgs
///             {
///                 Mode = "static",
///             },
///             MaxTtlSecs = 3600,
///             ProtocolDetection = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsProtocolDetectionArgs
///             {
///                 Enabled = true,
///             },
///             Sandbox = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsSandboxArgs
///             {
///                 Enabled = true,
///                 FallbackAction = "allow",
///             },
///             TlsDecrypt = new Cloudflare.Inputs.ZeroTrustGatewaySettingsSettingsTlsDecryptArgs
///             {
///                 Enabled = true,
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
/// 		_, err := cloudflare.NewZeroTrustGatewaySettings(ctx, "example_zero_trust_gateway_settings", &cloudflare.ZeroTrustGatewaySettingsArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Settings: &cloudflare.ZeroTrustGatewaySettingsSettingsArgs{
/// 				ActivityLog: &cloudflare.ZeroTrustGatewaySettingsSettingsActivityLogArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Antivirus: &cloudflare.ZeroTrustGatewaySettingsSettingsAntivirusArgs{
/// 					EnabledDownloadPhase: pulumi.Bool(false),
/// 					EnabledUploadPhase:   pulumi.Bool(false),
/// 					FailClosed:           pulumi.Bool(false),
/// 					NotificationSettings: &cloudflare.ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettingsArgs{
/// 						Enabled:        pulumi.Bool(true),
/// 						IncludeContext: pulumi.Bool(true),
/// 						Msg:            pulumi.String("msg"),
/// 						SupportUrl:     pulumi.String("support_url"),
/// 					},
/// 				},
/// 				BlockPage: &cloudflare.ZeroTrustGatewaySettingsSettingsBlockPageArgs{
/// 					BackgroundColor: pulumi.String("background_color"),
/// 					Enabled:         pulumi.Bool(true),
/// 					FooterText:      pulumi.String("--footer--"),
/// 					HeaderText:      pulumi.String("--header--"),
/// 					IncludeContext:  pulumi.Bool(true),
/// 					LogoPath:        pulumi.String("https://logos.com/a.png"),
/// 					MailtoAddress:   pulumi.String("admin@example.com"),
/// 					MailtoSubject:   pulumi.String("Blocked User Inquiry"),
/// 					Mode:            pulumi.String(""),
/// 					Name:            pulumi.String("Cloudflare"),
/// 					SuppressFooter:  pulumi.Bool(false),
/// 					TargetUri:       pulumi.String("https://example.com"),
/// 				},
/// 				BodyScanning: &cloudflare.ZeroTrustGatewaySettingsSettingsBodyScanningArgs{
/// 					InspectionMode: pulumi.String("deep"),
/// 				},
/// 				BrowserIsolation: &cloudflare.ZeroTrustGatewaySettingsSettingsBrowserIsolationArgs{
/// 					NonIdentityEnabled:         pulumi.Bool(true),
/// 					UrlBrowserIsolationEnabled: pulumi.Bool(true),
/// 				},
/// 				Certificate: &cloudflare.ZeroTrustGatewaySettingsSettingsCertificateArgs{
/// 					Id: pulumi.String("d1b364c5-1311-466e-a194-f0e943e0799f"),
/// 				},
/// 				CustomCertificate: &cloudflare.ZeroTrustGatewaySettingsSettingsCustomCertificateArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Id:      pulumi.String("d1b364c5-1311-466e-a194-f0e943e0799f"),
/// 				},
/// 				ExtendedEmailMatching: &cloudflare.ZeroTrustGatewaySettingsSettingsExtendedEmailMatchingArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Fips: &cloudflare.ZeroTrustGatewaySettingsSettingsFipsArgs{
/// 					Tls: pulumi.Bool(true),
/// 				},
/// 				HostSelector: &cloudflare.ZeroTrustGatewaySettingsSettingsHostSelectorArgs{
/// 					Enabled: pulumi.Bool(false),
/// 				},
/// 				Inspection: &cloudflare.ZeroTrustGatewaySettingsSettingsInspectionArgs{
/// 					Mode: pulumi.String("static"),
/// 				},
/// 				MaxTtlSecs: pulumi.Int(3600),
/// 				ProtocolDetection: &cloudflare.ZeroTrustGatewaySettingsSettingsProtocolDetectionArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Sandbox: &cloudflare.ZeroTrustGatewaySettingsSettingsSandboxArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					FallbackAction: pulumi.String("allow"),
/// 				},
/// 				TlsDecrypt: &cloudflare.ZeroTrustGatewaySettingsSettingsTlsDecryptArgs{
/// 					Enabled: pulumi.Bool(true),
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
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustgatewaysettings" "example_zero_trust_gateway_settings" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   settings = {
///     activity_log = {
///       enabled = true
///     }
///     antivirus = {
///       enabled_download_phase = false
///       enabled_upload_phase   = false
///       fail_closed            = false
///       notification_settings = {
///         enabled         = true
///         include_context = true
///         msg             = "msg"
///         support_url     = "support_url"
///       }
///     }
///     block_page = {
///       background_color = "background_color"
///       enabled          = true
///       footer_text      = "--footer--"
///       header_text      = "--header--"
///       include_context  = true
///       logo_path        = "https://logos.com/a.png"
///       mailto_address   = "admin@example.com"
///       mailto_subject   = "Blocked User Inquiry"
///       mode             = ""
///       name             = "Cloudflare"
///       suppress_footer  = false
///       target_uri       = "https://example.com"
///     }
///     body_scanning = {
///       inspection_mode = "deep"
///     }
///     browser_isolation = {
///       non_identity_enabled          = true
///       url_browser_isolation_enabled = true
///     }
///     certificate = {
///       id = "d1b364c5-1311-466e-a194-f0e943e0799f"
///     }
///     custom_certificate = {
///       enabled = true
///       id      = "d1b364c5-1311-466e-a194-f0e943e0799f"
///     }
///     extended_email_matching = {
///       enabled = true
///     }
///     fips = {
///       tls = true
///     }
///     host_selector = {
///       enabled = false
///     }
///     inspection = {
///       mode = "static"
///     }
///     max_ttl_secs = 3600
///     protocol_detection = {
///       enabled = true
///     }
///     sandbox = {
///       enabled         = true
///       fallback_action = "allow"
///     }
///     tls_decrypt = {
///       enabled = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewaySettings;
/// import com.pulumi.cloudflare.ZeroTrustGatewaySettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsActivityLogArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsAntivirusArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsBlockPageArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsBodyScanningArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsBrowserIsolationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsCustomCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsExtendedEmailMatchingArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsFipsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsHostSelectorArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsInspectionArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsProtocolDetectionArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsSandboxArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewaySettingsSettingsTlsDecryptArgs;
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
///         var exampleZeroTrustGatewaySettings = new ZeroTrustGatewaySettings("exampleZeroTrustGatewaySettings", ZeroTrustGatewaySettingsArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .settings(ZeroTrustGatewaySettingsSettingsArgs.builder()
///                 .activityLog(ZeroTrustGatewaySettingsSettingsActivityLogArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .antivirus(ZeroTrustGatewaySettingsSettingsAntivirusArgs.builder()
///                     .enabledDownloadPhase(false)
///                     .enabledUploadPhase(false)
///                     .failClosed(false)
///                     .notificationSettings(ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettingsArgs.builder()
///                         .enabled(true)
///                         .includeContext(true)
///                         .msg("msg")
///                         .supportUrl("support_url")
///                         .build())
///                     .build())
///                 .blockPage(ZeroTrustGatewaySettingsSettingsBlockPageArgs.builder()
///                     .backgroundColor("background_color")
///                     .enabled(true)
///                     .footerText("--footer--")
///                     .headerText("--header--")
///                     .includeContext(true)
///                     .logoPath("https://logos.com/a.png")
///                     .mailtoAddress("admin@example.com")
///                     .mailtoSubject("Blocked User Inquiry")
///                     .mode("")
///                     .name("Cloudflare")
///                     .suppressFooter(false)
///                     .targetUri("https://example.com")
///                     .build())
///                 .bodyScanning(ZeroTrustGatewaySettingsSettingsBodyScanningArgs.builder()
///                     .inspectionMode("deep")
///                     .build())
///                 .browserIsolation(ZeroTrustGatewaySettingsSettingsBrowserIsolationArgs.builder()
///                     .nonIdentityEnabled(true)
///                     .urlBrowserIsolationEnabled(true)
///                     .build())
///                 .certificate(ZeroTrustGatewaySettingsSettingsCertificateArgs.builder()
///                     .id("d1b364c5-1311-466e-a194-f0e943e0799f")
///                     .build())
///                 .customCertificate(ZeroTrustGatewaySettingsSettingsCustomCertificateArgs.builder()
///                     .enabled(true)
///                     .id("d1b364c5-1311-466e-a194-f0e943e0799f")
///                     .build())
///                 .extendedEmailMatching(ZeroTrustGatewaySettingsSettingsExtendedEmailMatchingArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .fips(ZeroTrustGatewaySettingsSettingsFipsArgs.builder()
///                     .tls(true)
///                     .build())
///                 .hostSelector(ZeroTrustGatewaySettingsSettingsHostSelectorArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .inspection(ZeroTrustGatewaySettingsSettingsInspectionArgs.builder()
///                     .mode("static")
///                     .build())
///                 .maxTtlSecs(3600)
///                 .protocolDetection(ZeroTrustGatewaySettingsSettingsProtocolDetectionArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .sandbox(ZeroTrustGatewaySettingsSettingsSandboxArgs.builder()
///                     .enabled(true)
///                     .fallbackAction("allow")
///                     .build())
///                 .tlsDecrypt(ZeroTrustGatewaySettingsSettingsTlsDecryptArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewaySettings:
///     type: cloudflare:ZeroTrustGatewaySettings
///     name: example_zero_trust_gateway_settings
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       settings:
///         activityLog:
///           enabled: true
///         antivirus:
///           enabledDownloadPhase: false
///           enabledUploadPhase: false
///           failClosed: false
///           notificationSettings:
///             enabled: true
///             includeContext: true
///             msg: msg
///             supportUrl: support_url
///         blockPage:
///           backgroundColor: background_color
///           enabled: true
///           footerText: --footer--
///           headerText: --header--
///           includeContext: true
///           logoPath: https://logos.com/a.png
///           mailtoAddress: admin@example.com
///           mailtoSubject: Blocked User Inquiry
///           mode: ""
///           name: Cloudflare
///           suppressFooter: false
///           targetUri: https://example.com
///         bodyScanning:
///           inspectionMode: deep
///         browserIsolation:
///           nonIdentityEnabled: true
///           urlBrowserIsolationEnabled: true
///         certificate:
///           id: d1b364c5-1311-466e-a194-f0e943e0799f
///         customCertificate:
///           enabled: true
///           id: d1b364c5-1311-466e-a194-f0e943e0799f
///         extendedEmailMatching:
///           enabled: true
///         fips:
///           tls: true
///         hostSelector:
///           enabled: false
///         inspection:
///           mode: static
///         maxTtlSecs: 3600
///         protocolDetection:
///           enabled: true
///         sandbox:
///           enabled: true
///           fallbackAction: allow
///         tlsDecrypt:
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/teamsAccount:TeamsAccount example '<account_id>'
/// ```
class TeamsAccount extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Specify account settings.
  late final pulumi.Output<TeamsAccountSettings?> settings;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [TeamsAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamsAccount]. {@macro pulumi_index_teams_account_teams_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamsAccount(
    String name, {
    TeamsAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsAccount:TeamsAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    settings = registerOutput<TeamsAccountSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [TeamsAccount] resource's state with the given [name] and [id].
  static TeamsAccount get(
    String name,
    pulumi.Input<String> id, {
    TeamsAccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TeamsAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TeamsAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsAccount:TeamsAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    settings = registerOutput<TeamsAccountSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [TeamsAccount] resource.
  TeamsAccount.reference(String urn)
    : super(
        'cloudflare:index/teamsAccount:TeamsAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    settings = registerOutput<TeamsAccountSettings?>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
