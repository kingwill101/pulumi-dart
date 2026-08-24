// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_dns_search_suffix.dart';
import 'zero_trust_device_default_profile_exclude.dart';
import 'zero_trust_device_default_profile_fallback_domain.dart';
import 'zero_trust_device_default_profile_global_acceleration.dart';
import 'zero_trust_device_default_profile_include.dart';
import 'zero_trust_device_default_profile_service_mode_v2.dart';
import 'zero_trust_device_default_profile_virtual_networks.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceDefaultProfile resources.
class ZeroTrustDeviceDefaultProfileState {
  final pulumi.Input<String?>? accountId;
  /// Whether to allow the user to switch WARP between modes.
  final pulumi.Input<bool?>? allowModeSwitch;
  /// Whether to receive update notifications when a new version of the client is available.
  final pulumi.Input<bool?>? allowUpdates;
  /// Whether to allow devices to leave the organization.
  final pulumi.Input<bool?>? allowedToLeave;
  /// The amount of time in seconds to reconnect after having been disabled.
  final pulumi.Input<double?>? autoConnect;
  /// Turn on the captive portal after the specified amount of time.
  final pulumi.Input<double?>? captivePortal;
  /// Whether the policy will be applied to matching devices.
  final pulumi.Input<bool?>? default_;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  final pulumi.Input<bool?>? disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>?>? dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  final pulumi.Input<bool?>? enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  final pulumi.Input<bool?>? excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileExclude>?>? excludes;
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileFallbackDomain>?>? fallbackDomains;
  final pulumi.Input<String?>? gatewayUniqueId;
  /// Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  final pulumi.Input<ZeroTrustDeviceDefaultProfileGlobalAcceleration?>? globalAcceleration;
  /// List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  final pulumi.Input<List<ZeroTrustDeviceDefaultProfileInclude>?>? includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double?>? lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double?>? lanAllowSubnetSize;
  final pulumi.Input<String?>? policyId;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  final pulumi.Input<bool?>? registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  final pulumi.Input<bool?>? sccmVpnBoundarySupport;
  final pulumi.Input<ZeroTrustDeviceDefaultProfileServiceModeV2?>? serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  final pulumi.Input<String?>? supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  final pulumi.Input<bool?>? switchLocked;
  /// Determines which tunnel protocol to use.
  final pulumi.Input<String?>? tunnelProtocol;
  /// Virtual network access settings for the device.
  final pulumi.Input<ZeroTrustDeviceDefaultProfileVirtualNetworks?>? virtualNetworks;

  /// Creates a new [ZeroTrustDeviceDefaultProfileState].
  /// [accountId] Optional.
  /// [allowModeSwitch] Whether to allow the user to switch WARP between modes.
  /// [allowUpdates] Whether to receive update notifications when a new version of the client is available.
  /// [allowedToLeave] Whether to allow devices to leave the organization.
  /// [autoConnect] The amount of time in seconds to reconnect after having been disabled.
  /// [captivePortal] Turn on the captive portal after the specified amount of time.
  /// [default_] Whether the policy will be applied to matching devices.
  /// [disableAutoFallback] If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  /// [dnsSearchSuffixes] List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  /// [enabled] Whether the policy will be applied to matching devices.
  /// [excludeOfficeIps] Whether to add Microsoft IPs to Split Tunnel exclusions.
  /// [excludes] List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  /// [fallbackDomains] Optional.
  /// [gatewayUniqueId] Optional.
  /// [globalAcceleration] Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  /// [includes] List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  /// [lanAllowMinutes] The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  /// [lanAllowSubnetSize] The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  /// [policyId] Optional.
  /// [registerInterfaceIpWithDns] Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  /// [sccmVpnBoundarySupport] Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  /// [serviceModeV2] Optional.
  /// [supportUrl] The URL to launch when the Send Feedback button is clicked.
  /// [switchLocked] Whether to allow the user to turn off the WARP switch and disconnect the client.
  /// [tunnelProtocol] Determines which tunnel protocol to use.
  /// [virtualNetworks] Virtual network access settings for the device.
  const ZeroTrustDeviceDefaultProfileState({
    this.accountId,
    this.allowModeSwitch,
    this.allowUpdates,
    this.allowedToLeave,
    this.autoConnect,
    this.captivePortal,
    this.default_,
    this.disableAutoFallback,
    this.dnsSearchSuffixes,
    this.enabled,
    this.excludeOfficeIps,
    this.excludes,
    this.fallbackDomains,
    this.gatewayUniqueId,
    this.globalAcceleration,
    this.includes,
    this.lanAllowMinutes,
    this.lanAllowSubnetSize,
    this.policyId,
    this.registerInterfaceIpWithDns,
    this.sccmVpnBoundarySupport,
    this.serviceModeV2,
    this.supportUrl,
    this.switchLocked,
    this.tunnelProtocol,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowModeSwitch': ?allowModeSwitch,
      'allowUpdates': ?allowUpdates,
      'allowedToLeave': ?allowedToLeave,
      'autoConnect': ?autoConnect,
      'captivePortal': ?captivePortal,
      'default': ?default_,
      'disableAutoFallback': ?disableAutoFallback,
      'dnsSearchSuffixes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>, List<Map<String, dynamic>>>(dnsSearchSuffixes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileDnsSearchSuffix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'excludeOfficeIps': ?excludeOfficeIps,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDefaultProfileExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackDomains': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDefaultProfileFallbackDomain>, List<Map<String, dynamic>>>(fallbackDomains, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayUniqueId': ?gatewayUniqueId,
      'globalAcceleration': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceDefaultProfileGlobalAcceleration, Map<String, dynamic>>(globalAcceleration, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDefaultProfileInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDefaultProfileInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lanAllowMinutes': ?lanAllowMinutes,
      'lanAllowSubnetSize': ?lanAllowSubnetSize,
      'policyId': ?policyId,
      'registerInterfaceIpWithDns': ?registerInterfaceIpWithDns,
      'sccmVpnBoundarySupport': ?sccmVpnBoundarySupport,
      'serviceModeV2': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceDefaultProfileServiceModeV2, Map<String, dynamic>>(serviceModeV2, (value) => value.toMap()),
      'supportUrl': ?supportUrl,
      'switchLocked': ?switchLocked,
      'tunnelProtocol': ?tunnelProtocol,
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceDefaultProfileVirtualNetworks, Map<String, dynamic>>(virtualNetworks, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDeviceDefaultProfileState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowModeSwitch: (() { final guardedValue = map['allowModeSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowUpdates: (() { final guardedValue = map['allowUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedToLeave: (() { final guardedValue = map['allowedToLeave']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoConnect: (() { final guardedValue = map['autoConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      captivePortal: (() { final guardedValue = map['captivePortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableAutoFallback: (() { final guardedValue = map['disableAutoFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSearchSuffixes: (() { final guardedValue = map['dnsSearchSuffixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeOfficeIps: (() { final guardedValue = map['excludeOfficeIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileExclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fallbackDomains: (() { final guardedValue = map['fallbackDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayUniqueId: (() { final guardedValue = map['gatewayUniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalAcceleration: (() { final guardedValue = map['globalAcceleration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceDefaultProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileInclude>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lanAllowMinutes: (() { final guardedValue = map['lanAllowMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      lanAllowSubnetSize: (() { final guardedValue = map['lanAllowSubnetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registerInterfaceIpWithDns: (() { final guardedValue = map['registerInterfaceIpWithDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sccmVpnBoundarySupport: (() { final guardedValue = map['sccmVpnBoundarySupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceModeV2: (() { final guardedValue = map['serviceModeV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceDefaultProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      switchLocked: (() { final guardedValue = map['switchLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tunnelProtocol: (() { final guardedValue = map['tunnelProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
