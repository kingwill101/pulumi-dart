import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_custom_profile_args.dart';
import 'zero_trust_device_custom_profile_browser_extension_config.dart';
import 'zero_trust_device_custom_profile_dns_search_suffix.dart';
import 'zero_trust_device_custom_profile_exclude.dart';
import 'zero_trust_device_custom_profile_fallback_domain.dart';
import 'zero_trust_device_custom_profile_global_acceleration.dart';
import 'zero_trust_device_custom_profile_include.dart';
import 'zero_trust_device_custom_profile_service_mode_v2.dart';
import 'zero_trust_device_custom_profile_state.dart';
import 'zero_trust_device_custom_profile_target_test.dart';
import 'zero_trust_device_custom_profile_virtual_networks.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceCustomProfile = new cloudflare.ZeroTrustDeviceCustomProfile("example_zero_trust_device_custom_profile", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "Allow Developers",
///     allowModeSwitch: true,
///     allowUpdates: true,
///     allowedToLeave: true,
///     autoConnect: 0,
///     browserExtensionConfig: {
///         proxyControl: "unlocked",
///         proxyEnabled: true,
///     },
///     captivePortal: 180,
///     "default": false,
///     description: "Policy for test teams.",
///     disableAutoFallback: true,
///     dnsSearchSuffixes: [{
///         suffix: "internal.corp",
///         description: "Example internal domains",
///     }],
///     enabled: true,
///     excludes: [{
///         address: "192.0.2.0/24",
///         description: "Exclude testing domains from the tunnel",
///     }],
///     excludeOfficeIps: true,
///     globalAcceleration: {
///         apiEndpoints: ["198.51.100.1:443"],
///         enabled: true,
///         masqueEndpoints: ["198.51.100.1:443"],
///         wireguardEndpoints: ["198.51.100.1:2408"],
///     },
///     includes: [{
///         address: "192.0.2.0/24",
///         description: "Include testing domains in the tunnel",
///     }],
///     lanAllowMinutes: 30,
///     lanAllowSubnetSize: 24,
///     match: "identity.email == \"test@cloudflare.com\"",
///     precedence: 100,
///     profileType: "warp",
///     registerInterfaceIpWithDns: true,
///     sccmVpnBoundarySupport: false,
///     serviceModeV2: {
///         mode: "proxy",
///         port: 3000,
///     },
///     supportUrl: "https://1.1.1.1/help",
///     switchLocked: true,
///     tunnelProtocol: "wireguard",
///     uninstallProtection: false,
///     virtualNetworks: {
///         alloweds: ["f174e90a-fafe-4643-bbbc-4a0ed4fc8415"],
///         "default": "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_custom_profile = cloudflare.ZeroTrustDeviceCustomProfile("example_zero_trust_device_custom_profile",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="Allow Developers",
///     allow_mode_switch=True,
///     allow_updates=True,
///     allowed_to_leave=True,
///     auto_connect=float(0),
///     browser_extension_config={
///         "proxy_control": "unlocked",
///         "proxy_enabled": True,
///     },
///     captive_portal=float(180),
///     default=False,
///     description="Policy for test teams.",
///     disable_auto_fallback=True,
///     dns_search_suffixes=[{
///         "suffix": "internal.corp",
///         "description": "Example internal domains",
///     }],
///     enabled=True,
///     excludes=[{
///         "address": "192.0.2.0/24",
///         "description": "Exclude testing domains from the tunnel",
///     }],
///     exclude_office_ips=True,
///     global_acceleration={
///         "api_endpoints": ["198.51.100.1:443"],
///         "enabled": True,
///         "masque_endpoints": ["198.51.100.1:443"],
///         "wireguard_endpoints": ["198.51.100.1:2408"],
///     },
///     includes=[{
///         "address": "192.0.2.0/24",
///         "description": "Include testing domains in the tunnel",
///     }],
///     lan_allow_minutes=float(30),
///     lan_allow_subnet_size=float(24),
///     match="identity.email == \"test@cloudflare.com\"",
///     precedence=float(100),
///     profile_type="warp",
///     register_interface_ip_with_dns=True,
///     sccm_vpn_boundary_support=False,
///     service_mode_v2={
///         "mode": "proxy",
///         "port": float(3000),
///     },
///     support_url="https://1.1.1.1/help",
///     switch_locked=True,
///     tunnel_protocol="wireguard",
///     uninstall_protection=False,
///     virtual_networks={
///         "alloweds": ["f174e90a-fafe-4643-bbbc-4a0ed4fc8415"],
///         "default": "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
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
///     var exampleZeroTrustDeviceCustomProfile = new Cloudflare.ZeroTrustDeviceCustomProfile("example_zero_trust_device_custom_profile", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "Allow Developers",
///         AllowModeSwitch = true,
///         AllowUpdates = true,
///         AllowedToLeave = true,
///         AutoConnect = 0.0,
///         BrowserExtensionConfig = new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileBrowserExtensionConfigArgs
///         {
///             ProxyControl = "unlocked",
///             ProxyEnabled = true,
///         },
///         CaptivePortal = 180.0,
///         Default = false,
///         Description = "Policy for test teams.",
///         DisableAutoFallback = true,
///         DnsSearchSuffixes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileDnsSearchSuffixArgs
///             {
///                 Suffix = "internal.corp",
///                 Description = "Example internal domains",
///             },
///         },
///         Enabled = true,
///         Excludes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileExcludeArgs
///             {
///                 Address = "192.0.2.0/24",
///                 Description = "Exclude testing domains from the tunnel",
///             },
///         },
///         ExcludeOfficeIps = true,
///         GlobalAcceleration = new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileGlobalAccelerationArgs
///         {
///             ApiEndpoints = new[]
///             {
///                 "198.51.100.1:443",
///             },
///             Enabled = true,
///             MasqueEndpoints = new[]
///             {
///                 "198.51.100.1:443",
///             },
///             WireguardEndpoints = new[]
///             {
///                 "198.51.100.1:2408",
///             },
///         },
///         Includes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileIncludeArgs
///             {
///                 Address = "192.0.2.0/24",
///                 Description = "Include testing domains in the tunnel",
///             },
///         },
///         LanAllowMinutes = 30.0,
///         LanAllowSubnetSize = 24.0,
///         Match = "identity.email == \"test@cloudflare.com\"",
///         Precedence = 100.0,
///         ProfileType = "warp",
///         RegisterInterfaceIpWithDns = true,
///         SccmVpnBoundarySupport = false,
///         ServiceModeV2 = new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileServiceModeV2Args
///         {
///             Mode = "proxy",
///             Port = 3000.0,
///         },
///         SupportUrl = "https://1.1.1.1/help",
///         SwitchLocked = true,
///         TunnelProtocol = "wireguard",
///         UninstallProtection = false,
///         VirtualNetworks = new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileVirtualNetworksArgs
///         {
///             Alloweds = new[]
///             {
///                 "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///             },
///             Default = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
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
/// 		_, err := cloudflare.NewZeroTrustDeviceCustomProfile(ctx, "example_zero_trust_device_custom_profile", &cloudflare.ZeroTrustDeviceCustomProfileArgs{
/// 			AccountId:       pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:            pulumi.String("Allow Developers"),
/// 			AllowModeSwitch: pulumi.Bool(true),
/// 			AllowUpdates:    pulumi.Bool(true),
/// 			AllowedToLeave:  pulumi.Bool(true),
/// 			AutoConnect:     pulumi.Float64(0),
/// 			BrowserExtensionConfig: &cloudflare.ZeroTrustDeviceCustomProfileBrowserExtensionConfigArgs{
/// 				ProxyControl: pulumi.String("unlocked"),
/// 				ProxyEnabled: pulumi.Bool(true),
/// 			},
/// 			CaptivePortal:       pulumi.Float64(180),
/// 			Default:             false,
/// 			Description:         pulumi.String("Policy for test teams."),
/// 			DisableAutoFallback: pulumi.Bool(true),
/// 			DnsSearchSuffixes: cloudflare.ZeroTrustDeviceCustomProfileDnsSearchSuffixArray{
/// 				&cloudflare.ZeroTrustDeviceCustomProfileDnsSearchSuffixArgs{
/// 					Suffix:      pulumi.String("internal.corp"),
/// 					Description: pulumi.String("Example internal domains"),
/// 				},
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 			Excludes: cloudflare.ZeroTrustDeviceCustomProfileExcludeArray{
/// 				&cloudflare.ZeroTrustDeviceCustomProfileExcludeArgs{
/// 					Address:     pulumi.String("192.0.2.0/24"),
/// 					Description: pulumi.String("Exclude testing domains from the tunnel"),
/// 				},
/// 			},
/// 			ExcludeOfficeIps: pulumi.Bool(true),
/// 			GlobalAcceleration: &cloudflare.ZeroTrustDeviceCustomProfileGlobalAccelerationArgs{
/// 				ApiEndpoints: pulumi.StringArray{
/// 					pulumi.String("198.51.100.1:443"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 				MasqueEndpoints: pulumi.StringArray{
/// 					pulumi.String("198.51.100.1:443"),
/// 				},
/// 				WireguardEndpoints: pulumi.StringArray{
/// 					pulumi.String("198.51.100.1:2408"),
/// 				},
/// 			},
/// 			Includes: cloudflare.ZeroTrustDeviceCustomProfileIncludeArray{
/// 				&cloudflare.ZeroTrustDeviceCustomProfileIncludeArgs{
/// 					Address:     pulumi.String("192.0.2.0/24"),
/// 					Description: pulumi.String("Include testing domains in the tunnel"),
/// 				},
/// 			},
/// 			LanAllowMinutes:            pulumi.Float64(30),
/// 			LanAllowSubnetSize:         pulumi.Float64(24),
/// 			Match:                      pulumi.String("identity.email == \"test@cloudflare.com\""),
/// 			Precedence:                 pulumi.Float64(100),
/// 			ProfileType:                pulumi.String("warp"),
/// 			RegisterInterfaceIpWithDns: pulumi.Bool(true),
/// 			SccmVpnBoundarySupport:     pulumi.Bool(false),
/// 			ServiceModeV2: &cloudflare.ZeroTrustDeviceCustomProfileServiceModeV2Args{
/// 				Mode: pulumi.String("proxy"),
/// 				Port: pulumi.Float64(3000),
/// 			},
/// 			SupportUrl:          pulumi.String("https://1.1.1.1/help"),
/// 			SwitchLocked:        pulumi.Bool(true),
/// 			TunnelProtocol:      pulumi.String("wireguard"),
/// 			UninstallProtection: pulumi.Bool(false),
/// 			VirtualNetworks: &cloudflare.ZeroTrustDeviceCustomProfileVirtualNetworksArgs{
/// 				Alloweds: pulumi.StringArray{
/// 					pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 				},
/// 				Default: pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
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
/// resource "cloudflare_zero_trust_device_custom_profile" "example_zero_trust_device_custom_profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id        = "699d98642c564d2e855e9661899b7252"
///   name              = "Allow Developers"
///   allow_mode_switch = true
///   allow_updates     = true
///   allowed_to_leave  = true
///   auto_connect      = 0
///   browser_extension_config = {
///     proxy_control = "unlocked"
///     proxy_enabled = true
///   }
///   captive_portal        = 180
///   default               = false
///   description           = "Policy for test teams."
///   disable_auto_fallback = true
///   dns_search_suffixes {
///     suffix      = "internal.corp"
///     description = "Example internal domains"
///   }
///   enabled = true
///   excludes {
///     address     = "192.0.2.0/24"
///     description = "Exclude testing domains from the tunnel"
///   }
///   exclude_office_ips = true
///   global_acceleration = {
///     api_endpoints       = ["198.51.100.1:443"]
///     enabled             = true
///     masque_endpoints    = ["198.51.100.1:443"]
///     wireguard_endpoints = ["198.51.100.1:2408"]
///   }
///   includes {
///     address     = "192.0.2.0/24"
///     description = "Include testing domains in the tunnel"
///   }
///   lan_allow_minutes              = 30
///   lan_allow_subnet_size          = 24
///   match                          = "identity.email == \"test@cloudflare.com\""
///   precedence                     = 100
///   profile_type                   = "warp"
///   register_interface_ip_with_dns = true
///   sccm_vpn_boundary_support      = false
///   service_mode_v2 = {
///     mode = "proxy"
///     port = 3000
///   }
///   support_url          = "https://1.1.1.1/help"
///   switch_locked        = true
///   tunnel_protocol      = "wireguard"
///   uninstall_protection = false
///   virtual_networks = {
///     alloweds = ["f174e90a-fafe-4643-bbbc-4a0ed4fc8415"]
///     default  = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceCustomProfile;
/// import com.pulumi.cloudflare.ZeroTrustDeviceCustomProfileArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileBrowserExtensionConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileDnsSearchSuffixArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileExcludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileGlobalAccelerationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileIncludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileServiceModeV2Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileVirtualNetworksArgs;
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
///         var exampleZeroTrustDeviceCustomProfile = new ZeroTrustDeviceCustomProfile("exampleZeroTrustDeviceCustomProfile", ZeroTrustDeviceCustomProfileArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("Allow Developers")
///             .allowModeSwitch(true)
///             .allowUpdates(true)
///             .allowedToLeave(true)
///             .autoConnect(0.0)
///             .browserExtensionConfig(ZeroTrustDeviceCustomProfileBrowserExtensionConfigArgs.builder()
///                 .proxyControl("unlocked")
///                 .proxyEnabled(true)
///                 .build())
///             .captivePortal(180.0)
///             .default_(false)
///             .description("Policy for test teams.")
///             .disableAutoFallback(true)
///             .dnsSearchSuffixes(ZeroTrustDeviceCustomProfileDnsSearchSuffixArgs.builder()
///                 .suffix("internal.corp")
///                 .description("Example internal domains")
///                 .build())
///             .enabled(true)
///             .excludes(ZeroTrustDeviceCustomProfileExcludeArgs.builder()
///                 .address("192.0.2.0/24")
///                 .description("Exclude testing domains from the tunnel")
///                 .build())
///             .excludeOfficeIps(true)
///             .globalAcceleration(ZeroTrustDeviceCustomProfileGlobalAccelerationArgs.builder()
///                 .apiEndpoints("198.51.100.1:443")
///                 .enabled(true)
///                 .masqueEndpoints("198.51.100.1:443")
///                 .wireguardEndpoints("198.51.100.1:2408")
///                 .build())
///             .includes(ZeroTrustDeviceCustomProfileIncludeArgs.builder()
///                 .address("192.0.2.0/24")
///                 .description("Include testing domains in the tunnel")
///                 .build())
///             .lanAllowMinutes(30.0)
///             .lanAllowSubnetSize(24.0)
///             .match("identity.email == \"test@cloudflare.com\"")
///             .precedence(100.0)
///             .profileType("warp")
///             .registerInterfaceIpWithDns(true)
///             .sccmVpnBoundarySupport(false)
///             .serviceModeV2(ZeroTrustDeviceCustomProfileServiceModeV2Args.builder()
///                 .mode("proxy")
///                 .port(3000.0)
///                 .build())
///             .supportUrl("https://1.1.1.1/help")
///             .switchLocked(true)
///             .tunnelProtocol("wireguard")
///             .uninstallProtection(false)
///             .virtualNetworks(ZeroTrustDeviceCustomProfileVirtualNetworksArgs.builder()
///                 .alloweds("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///                 .default_("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceCustomProfile:
///     type: cloudflare:ZeroTrustDeviceCustomProfile
///     name: example_zero_trust_device_custom_profile
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: Allow Developers
///       allowModeSwitch: true
///       allowUpdates: true
///       allowedToLeave: true
///       autoConnect: 0
///       browserExtensionConfig:
///         proxyControl: unlocked
///         proxyEnabled: true
///       captivePortal: 180
///       default: false
///       description: Policy for test teams.
///       disableAutoFallback: true
///       dnsSearchSuffixes:
///         - suffix: internal.corp
///           description: Example internal domains
///       enabled: true
///       excludes:
///         - address: 192.0.2.0/24
///           description: Exclude testing domains from the tunnel
///       excludeOfficeIps: true
///       globalAcceleration:
///         apiEndpoints:
///           - 198.51.100.1:443
///         enabled: true
///         masqueEndpoints:
///           - 198.51.100.1:443
///         wireguardEndpoints:
///           - 198.51.100.1:2408
///       includes:
///         - address: 192.0.2.0/24
///           description: Include testing domains in the tunnel
///       lanAllowMinutes: 30
///       lanAllowSubnetSize: 24
///       match: identity.email == "test@cloudflare.com"
///       precedence: 100
///       profileType: warp
///       registerInterfaceIpWithDns: true
///       sccmVpnBoundarySupport: false
///       serviceModeV2:
///         mode: proxy
///         port: 3000
///       supportUrl: https://1.1.1.1/help
///       switchLocked: true
///       tunnelProtocol: wireguard
///       uninstallProtection: false
///       virtualNetworks:
///         alloweds:
///           - f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///         default: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceCustomProfile:ZeroTrustDeviceCustomProfile example '<account_id>/<policy_id>'
/// ```
class ZeroTrustDeviceCustomProfile extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Whether to allow the user to switch WARP between modes.
  late final pulumi.Output<bool> allowModeSwitch;
  /// Whether to receive update notifications when a new version of the client is available.
  late final pulumi.Output<bool> allowUpdates;
  /// Whether to allow devices to leave the organization.
  late final pulumi.Output<bool> allowedToLeave;
  /// The amount of time in seconds to reconnect after having been disabled.
  late final pulumi.Output<double> autoConnect;
  /// Browser extension proxy settings. Required when profile*type is browser*extension and invalid for WARP profiles.
  late final pulumi.Output<ZeroTrustDeviceCustomProfileBrowserExtensionConfig?> browserExtensionConfig;
  /// Turn on the captive portal after the specified amount of time.
  late final pulumi.Output<double> captivePortal;
  /// Whether the policy is the default policy for an account.
  late final pulumi.Output<bool> default_;
  /// A description of the policy.
  late final pulumi.Output<String> description;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  late final pulumi.Output<bool> disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>> dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  late final pulumi.Output<bool> enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  late final pulumi.Output<bool> excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileExclude>> excludes;
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileFallbackDomain>> fallbackDomains;
  late final pulumi.Output<String> gatewayUniqueId;
  /// Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  late final pulumi.Output<ZeroTrustDeviceCustomProfileGlobalAcceleration?> globalAcceleration;
  /// List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileInclude>> includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  late final pulumi.Output<double?> lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  late final pulumi.Output<double?> lanAllowSubnetSize;
  /// The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  late final pulumi.Output<String?> match;
  /// The name of the device settings profile.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyId;
  /// The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  late final pulumi.Output<double> precedence;
  /// The client type to which the device settings profile applies. This field is set when the profile is created and cannot be changed.
  /// Available values: "warp", "browserExtension".
  late final pulumi.Output<String> profileType;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  late final pulumi.Output<bool> registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  late final pulumi.Output<bool> sccmVpnBoundarySupport;
  late final pulumi.Output<ZeroTrustDeviceCustomProfileServiceModeV2> serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  late final pulumi.Output<String> supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  late final pulumi.Output<bool> switchLocked;
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileTargetTest>> targetTests;
  /// Determines which tunnel protocol to use.
  late final pulumi.Output<String> tunnelProtocol;
  /// Determines whether uninstalling the WARP client requires an override code. (Windows only).
  late final pulumi.Output<bool> uninstallProtection;
  /// Virtual network access settings for the device.
  late final pulumi.Output<ZeroTrustDeviceCustomProfileVirtualNetworks?> virtualNetworks;

  /// Creates a new [ZeroTrustDeviceCustomProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceCustomProfile]. {@macro pulumi_index_zero_trust_device_custom_profile_zero_trust_device_custom_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceCustomProfile(
    String name, {
    ZeroTrustDeviceCustomProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceCustomProfile:ZeroTrustDeviceCustomProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowModeSwitch = registerOutput<bool>('allowModeSwitch');
    allowUpdates = registerOutput<bool>('allowUpdates');
    allowedToLeave = registerOutput<bool>('allowedToLeave');
    autoConnect = registerOutput<double>('autoConnect');
    browserExtensionConfig = registerOutput<ZeroTrustDeviceCustomProfileBrowserExtensionConfig?>('browserExtensionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileBrowserExtensionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    description = registerOutput<String>('description');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceCustomProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileExclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceCustomProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceCustomProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceCustomProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileInclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    match = registerOutput<String?>('match');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    precedence = registerOutput<double>('precedence');
    profileType = registerOutput<String>('profileType');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceCustomProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    targetTests = registerOutput<List<ZeroTrustDeviceCustomProfileTargetTest>>('targetTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileTargetTest>(guardedValue, (value) => ZeroTrustDeviceCustomProfileTargetTest.fromMap((value as Map).cast<String, dynamic>())); });
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    uninstallProtection = registerOutput<bool>('uninstallProtection');
    virtualNetworks = registerOutput<ZeroTrustDeviceCustomProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ZeroTrustDeviceCustomProfile] resource's state with the given [name] and [id].
  static ZeroTrustDeviceCustomProfile get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceCustomProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceCustomProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceCustomProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceCustomProfile:ZeroTrustDeviceCustomProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowModeSwitch = registerOutput<bool>('allowModeSwitch');
    allowUpdates = registerOutput<bool>('allowUpdates');
    allowedToLeave = registerOutput<bool>('allowedToLeave');
    autoConnect = registerOutput<double>('autoConnect');
    browserExtensionConfig = registerOutput<ZeroTrustDeviceCustomProfileBrowserExtensionConfig?>('browserExtensionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileBrowserExtensionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    description = registerOutput<String>('description');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceCustomProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileExclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceCustomProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceCustomProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceCustomProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileInclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    match = registerOutput<String?>('match');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    precedence = registerOutput<double>('precedence');
    profileType = registerOutput<String>('profileType');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceCustomProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    targetTests = registerOutput<List<ZeroTrustDeviceCustomProfileTargetTest>>('targetTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileTargetTest>(guardedValue, (value) => ZeroTrustDeviceCustomProfileTargetTest.fromMap((value as Map).cast<String, dynamic>())); });
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    uninstallProtection = registerOutput<bool>('uninstallProtection');
    virtualNetworks = registerOutput<ZeroTrustDeviceCustomProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceCustomProfile] resource.
  ZeroTrustDeviceCustomProfile.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceCustomProfile:ZeroTrustDeviceCustomProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowModeSwitch = registerOutput<bool>('allowModeSwitch');
    allowUpdates = registerOutput<bool>('allowUpdates');
    allowedToLeave = registerOutput<bool>('allowedToLeave');
    autoConnect = registerOutput<double>('autoConnect');
    browserExtensionConfig = registerOutput<ZeroTrustDeviceCustomProfileBrowserExtensionConfig?>('browserExtensionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileBrowserExtensionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    description = registerOutput<String>('description');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceCustomProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileExclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceCustomProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceCustomProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceCustomProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileInclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    match = registerOutput<String?>('match');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    precedence = registerOutput<double>('precedence');
    profileType = registerOutput<String>('profileType');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceCustomProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    targetTests = registerOutput<List<ZeroTrustDeviceCustomProfileTargetTest>>('targetTests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileTargetTest>(guardedValue, (value) => ZeroTrustDeviceCustomProfileTargetTest.fromMap((value as Map).cast<String, dynamic>())); });
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    uninstallProtection = registerOutput<bool>('uninstallProtection');
    virtualNetworks = registerOutput<ZeroTrustDeviceCustomProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceCustomProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
