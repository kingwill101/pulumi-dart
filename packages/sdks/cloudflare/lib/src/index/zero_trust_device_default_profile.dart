import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_args.dart';
import 'zero_trust_device_default_profile_dns_search_suffix.dart';
import 'zero_trust_device_default_profile_exclude.dart';
import 'zero_trust_device_default_profile_fallback_domain.dart';
import 'zero_trust_device_default_profile_global_acceleration.dart';
import 'zero_trust_device_default_profile_include.dart';
import 'zero_trust_device_default_profile_service_mode_v2.dart';
import 'zero_trust_device_default_profile_state.dart';
import 'zero_trust_device_default_profile_virtual_networks.dart';

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
/// const exampleZeroTrustDeviceDefaultProfile = new cloudflare.ZeroTrustDeviceDefaultProfile("example_zero_trust_device_default_profile", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     allowModeSwitch: true,
///     allowUpdates: true,
///     allowedToLeave: true,
///     autoConnect: 0,
///     captivePortal: 180,
///     disableAutoFallback: true,
///     excludes: [{
///         address: "192.0.2.0/24",
///         description: "Exclude testing domains from the tunnel",
///     }],
///     excludeOfficeIps: true,
///     includes: [{
///         address: "192.0.2.0/24",
///         description: "Include testing domains in the tunnel",
///     }],
///     lanAllowMinutes: 30,
///     lanAllowSubnetSize: 24,
///     registerInterfaceIpWithDns: true,
///     sccmVpnBoundarySupport: false,
///     serviceModeV2: {
///         mode: "proxy",
///         port: 3000,
///     },
///     supportUrl: "https://1.1.1.1/help",
///     switchLocked: true,
///     tunnelProtocol: "wireguard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_default_profile = cloudflare.ZeroTrustDeviceDefaultProfile("example_zero_trust_device_default_profile",
///     account_id="699d98642c564d2e855e9661899b7252",
///     allow_mode_switch=True,
///     allow_updates=True,
///     allowed_to_leave=True,
///     auto_connect=float(0),
///     captive_portal=float(180),
///     disable_auto_fallback=True,
///     excludes=[{
///         "address": "192.0.2.0/24",
///         "description": "Exclude testing domains from the tunnel",
///     }],
///     exclude_office_ips=True,
///     includes=[{
///         "address": "192.0.2.0/24",
///         "description": "Include testing domains in the tunnel",
///     }],
///     lan_allow_minutes=float(30),
///     lan_allow_subnet_size=float(24),
///     register_interface_ip_with_dns=True,
///     sccm_vpn_boundary_support=False,
///     service_mode_v2={
///         "mode": "proxy",
///         "port": float(3000),
///     },
///     support_url="https://1.1.1.1/help",
///     switch_locked=True,
///     tunnel_protocol="wireguard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceDefaultProfile = new Cloudflare.ZeroTrustDeviceDefaultProfile("example_zero_trust_device_default_profile", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         AllowModeSwitch = true,
///         AllowUpdates = true,
///         AllowedToLeave = true,
///         AutoConnect = 0,
///         CaptivePortal = 180,
///         DisableAutoFallback = true,
///         Excludes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceDefaultProfileExcludeArgs
///             {
///                 Address = "192.0.2.0/24",
///                 Description = "Exclude testing domains from the tunnel",
///             },
///         },
///         ExcludeOfficeIps = true,
///         Includes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceDefaultProfileIncludeArgs
///             {
///                 Address = "192.0.2.0/24",
///                 Description = "Include testing domains in the tunnel",
///             },
///         },
///         LanAllowMinutes = 30,
///         LanAllowSubnetSize = 24,
///         RegisterInterfaceIpWithDns = true,
///         SccmVpnBoundarySupport = false,
///         ServiceModeV2 = new Cloudflare.Inputs.ZeroTrustDeviceDefaultProfileServiceModeV2Args
///         {
///             Mode = "proxy",
///             Port = 3000,
///         },
///         SupportUrl = "https://1.1.1.1/help",
///         SwitchLocked = true,
///         TunnelProtocol = "wireguard",
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
/// 		_, err := cloudflare.NewZeroTrustDeviceDefaultProfile(ctx, "example_zero_trust_device_default_profile", &cloudflare.ZeroTrustDeviceDefaultProfileArgs{
/// 			AccountId:           pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			AllowModeSwitch:     pulumi.Bool(true),
/// 			AllowUpdates:        pulumi.Bool(true),
/// 			AllowedToLeave:      pulumi.Bool(true),
/// 			AutoConnect:         pulumi.Float64(0),
/// 			CaptivePortal:       pulumi.Float64(180),
/// 			DisableAutoFallback: pulumi.Bool(true),
/// 			Excludes: cloudflare.ZeroTrustDeviceDefaultProfileExcludeArray{
/// 				&cloudflare.ZeroTrustDeviceDefaultProfileExcludeArgs{
/// 					Address:     pulumi.String("192.0.2.0/24"),
/// 					Description: pulumi.String("Exclude testing domains from the tunnel"),
/// 				},
/// 			},
/// 			ExcludeOfficeIps: pulumi.Bool(true),
/// 			Includes: cloudflare.ZeroTrustDeviceDefaultProfileIncludeArray{
/// 				&cloudflare.ZeroTrustDeviceDefaultProfileIncludeArgs{
/// 					Address:     pulumi.String("192.0.2.0/24"),
/// 					Description: pulumi.String("Include testing domains in the tunnel"),
/// 				},
/// 			},
/// 			LanAllowMinutes:            pulumi.Float64(30),
/// 			LanAllowSubnetSize:         pulumi.Float64(24),
/// 			RegisterInterfaceIpWithDns: pulumi.Bool(true),
/// 			SccmVpnBoundarySupport:     pulumi.Bool(false),
/// 			ServiceModeV2: &cloudflare.ZeroTrustDeviceDefaultProfileServiceModeV2Args{
/// 				Mode: pulumi.String("proxy"),
/// 				Port: pulumi.Float64(3000),
/// 			},
/// 			SupportUrl:     pulumi.String("https://1.1.1.1/help"),
/// 			SwitchLocked:   pulumi.Bool(true),
/// 			TunnelProtocol: pulumi.String("wireguard"),
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
/// resource "cloudflare_zerotrustdevicedefaultprofile" "example_zero_trust_device_default_profile" {
///   account_id            = "699d98642c564d2e855e9661899b7252"
///   allow_mode_switch     = true
///   allow_updates         = true
///   allowed_to_leave      = true
///   auto_connect          = 0
///   captive_portal        = 180
///   disable_auto_fallback = true
///   excludes {
///     address     = "192.0.2.0/24"
///     description = "Exclude testing domains from the tunnel"
///   }
///   exclude_office_ips = true
///   includes {
///     address     = "192.0.2.0/24"
///     description = "Include testing domains in the tunnel"
///   }
///   lan_allow_minutes              = 30
///   lan_allow_subnet_size          = 24
///   register_interface_ip_with_dns = true
///   sccm_vpn_boundary_support      = false
///   service_mode_v2 = {
///     mode = "proxy"
///     port = 3000
///   }
///   support_url     = "https://1.1.1.1/help"
///   switch_locked   = true
///   tunnel_protocol = "wireguard"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfile;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfileArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceDefaultProfileExcludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceDefaultProfileIncludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceDefaultProfileServiceModeV2Args;
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
///         var exampleZeroTrustDeviceDefaultProfile = new ZeroTrustDeviceDefaultProfile("exampleZeroTrustDeviceDefaultProfile", ZeroTrustDeviceDefaultProfileArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .allowModeSwitch(true)
///             .allowUpdates(true)
///             .allowedToLeave(true)
///             .autoConnect(0.0)
///             .captivePortal(180.0)
///             .disableAutoFallback(true)
///             .excludes(ZeroTrustDeviceDefaultProfileExcludeArgs.builder()
///                 .address("192.0.2.0/24")
///                 .description("Exclude testing domains from the tunnel")
///                 .build())
///             .excludeOfficeIps(true)
///             .includes(ZeroTrustDeviceDefaultProfileIncludeArgs.builder()
///                 .address("192.0.2.0/24")
///                 .description("Include testing domains in the tunnel")
///                 .build())
///             .lanAllowMinutes(30.0)
///             .lanAllowSubnetSize(24.0)
///             .registerInterfaceIpWithDns(true)
///             .sccmVpnBoundarySupport(false)
///             .serviceModeV2(ZeroTrustDeviceDefaultProfileServiceModeV2Args.builder()
///                 .mode("proxy")
///                 .port(3000.0)
///                 .build())
///             .supportUrl("https://1.1.1.1/help")
///             .switchLocked(true)
///             .tunnelProtocol("wireguard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceDefaultProfile:
///     type: cloudflare:ZeroTrustDeviceDefaultProfile
///     name: example_zero_trust_device_default_profile
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       allowModeSwitch: true
///       allowUpdates: true
///       allowedToLeave: true
///       autoConnect: 0
///       captivePortal: 180
///       disableAutoFallback: true
///       excludes:
///         - address: 192.0.2.0/24
///           description: Exclude testing domains from the tunnel
///       excludeOfficeIps: true
///       includes:
///         - address: 192.0.2.0/24
///           description: Include testing domains in the tunnel
///       lanAllowMinutes: 30
///       lanAllowSubnetSize: 24
///       registerInterfaceIpWithDns: true
///       sccmVpnBoundarySupport: false
///       serviceModeV2:
///         mode: proxy
///         port: 3000
///       supportUrl: https://1.1.1.1/help
///       switchLocked: true
///       tunnelProtocol: wireguard
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceDefaultProfile:ZeroTrustDeviceDefaultProfile example '<account_id>'
/// ```
class ZeroTrustDeviceDefaultProfile extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Whether to allow the user to switch WARP between modes.
  late final pulumi.Output<bool> allowModeSwitch;
  /// Whether to receive update notifications when a new version of the client is available.
  late final pulumi.Output<bool> allowUpdates;
  /// Whether to allow devices to leave the organization.
  late final pulumi.Output<bool> allowedToLeave;
  /// The amount of time in seconds to reconnect after having been disabled.
  late final pulumi.Output<double> autoConnect;
  /// Turn on the captive portal after the specified amount of time.
  late final pulumi.Output<double> captivePortal;
  /// Whether the policy will be applied to matching devices.
  late final pulumi.Output<bool> default_;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  late final pulumi.Output<bool> disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  late final pulumi.Output<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>> dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  late final pulumi.Output<bool> enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  late final pulumi.Output<bool> excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  late final pulumi.Output<List<ZeroTrustDeviceDefaultProfileExclude>> excludes;
  late final pulumi.Output<List<ZeroTrustDeviceDefaultProfileFallbackDomain>> fallbackDomains;
  late final pulumi.Output<String> gatewayUniqueId;
  /// Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  late final pulumi.Output<ZeroTrustDeviceDefaultProfileGlobalAcceleration?> globalAcceleration;
  /// List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  late final pulumi.Output<List<ZeroTrustDeviceDefaultProfileInclude>> includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  late final pulumi.Output<double?> lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  late final pulumi.Output<double?> lanAllowSubnetSize;
  late final pulumi.Output<String> policyId;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  late final pulumi.Output<bool> registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  late final pulumi.Output<bool> sccmVpnBoundarySupport;
  late final pulumi.Output<ZeroTrustDeviceDefaultProfileServiceModeV2> serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  late final pulumi.Output<String> supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  late final pulumi.Output<bool> switchLocked;
  /// Determines which tunnel protocol to use.
  late final pulumi.Output<String> tunnelProtocol;
  /// Virtual network access settings for the device.
  late final pulumi.Output<ZeroTrustDeviceDefaultProfileVirtualNetworks?> virtualNetworks;

  /// Creates a new [ZeroTrustDeviceDefaultProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceDefaultProfile]. {@macro pulumi_index_zero_trust_device_default_profile_zero_trust_device_default_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceDefaultProfile(
    String name, {
    ZeroTrustDeviceDefaultProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfile:ZeroTrustDeviceDefaultProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowModeSwitch = registerOutput<bool>('allowModeSwitch');
    allowUpdates = registerOutput<bool>('allowUpdates');
    allowedToLeave = registerOutput<bool>('allowedToLeave');
    autoConnect = registerOutput<double>('autoConnect');
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceDefaultProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileExclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceDefaultProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceDefaultProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceDefaultProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileInclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    policyId = registerOutput<String>('policyId');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceDefaultProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    virtualNetworks = registerOutput<ZeroTrustDeviceDefaultProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ZeroTrustDeviceDefaultProfile] resource's state with the given [name] and [id].
  static ZeroTrustDeviceDefaultProfile get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceDefaultProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceDefaultProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceDefaultProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfile:ZeroTrustDeviceDefaultProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowModeSwitch = registerOutput<bool>('allowModeSwitch');
    allowUpdates = registerOutput<bool>('allowUpdates');
    allowedToLeave = registerOutput<bool>('allowedToLeave');
    autoConnect = registerOutput<double>('autoConnect');
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceDefaultProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileExclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceDefaultProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceDefaultProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceDefaultProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileInclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    policyId = registerOutput<String>('policyId');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceDefaultProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    virtualNetworks = registerOutput<ZeroTrustDeviceDefaultProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceDefaultProfile] resource.
  ZeroTrustDeviceDefaultProfile.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceDefaultProfile:ZeroTrustDeviceDefaultProfile',
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
    captivePortal = registerOutput<double>('captivePortal');
    default_ = registerOutput<bool>('default');
    disableAutoFallback = registerOutput<bool>('disableAutoFallback');
    dnsSearchSuffixes = registerOutput<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>>('dnsSearchSuffixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    excludeOfficeIps = registerOutput<bool>('excludeOfficeIps');
    excludes = registerOutput<List<ZeroTrustDeviceDefaultProfileExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileExclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileExclude.fromMap((value as Map).cast<String, dynamic>())); });
    fallbackDomains = registerOutput<List<ZeroTrustDeviceDefaultProfileFallbackDomain>>('fallbackDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayUniqueId = registerOutput<String>('gatewayUniqueId');
    globalAcceleration = registerOutput<ZeroTrustDeviceDefaultProfileGlobalAcceleration?>('globalAcceleration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includes = registerOutput<List<ZeroTrustDeviceDefaultProfileInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileInclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileInclude.fromMap((value as Map).cast<String, dynamic>())); });
    lanAllowMinutes = registerOutput<double?>('lanAllowMinutes');
    lanAllowSubnetSize = registerOutput<double?>('lanAllowSubnetSize');
    policyId = registerOutput<String>('policyId');
    registerInterfaceIpWithDns = registerOutput<bool>('registerInterfaceIpWithDns');
    sccmVpnBoundarySupport = registerOutput<bool>('sccmVpnBoundarySupport');
    serviceModeV2 = registerOutput<ZeroTrustDeviceDefaultProfileServiceModeV2>('serviceModeV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String>('supportUrl');
    switchLocked = registerOutput<bool>('switchLocked');
    tunnelProtocol = registerOutput<String>('tunnelProtocol');
    virtualNetworks = registerOutput<ZeroTrustDeviceDefaultProfileVirtualNetworks?>('virtualNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
