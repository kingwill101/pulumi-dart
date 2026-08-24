// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_default_profile_dns_search_suffix.dart';
import 'get_zero_trust_device_default_profile_exclude.dart';
import 'get_zero_trust_device_default_profile_fallback_domain.dart';
import 'get_zero_trust_device_default_profile_include.dart';
import 'get_zero_trust_device_default_profile_service_mode_v2.dart';
import 'get_zero_trust_device_default_profile_virtual_networks.dart';

/// Result data returned by getZeroTrustDeviceDefaultProfile.
class GetZeroTrustDeviceDefaultProfileResult {
  final String? accountId;
  /// Whether to allow the user to switch WARP between modes.
  final bool? allowModeSwitch;
  /// Whether to receive update notifications when a new version of the client is available.
  final bool? allowUpdates;
  /// Whether to allow devices to leave the organization.
  final bool? allowedToLeave;
  /// The amount of time in seconds to reconnect after having been disabled.
  final double? autoConnect;
  /// Turn on the captive portal after the specified amount of time.
  final double? captivePortal;
  /// Whether the policy will be applied to matching devices.
  final bool? default_;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  final bool? disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  final List<GetZeroTrustDeviceDefaultProfileDnsSearchSuffix>? dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  final bool? enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  final bool? excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel.
  final List<GetZeroTrustDeviceDefaultProfileExclude>? excludes;
  final List<GetZeroTrustDeviceDefaultProfileFallbackDomain>? fallbackDomains;
  final String? gatewayUniqueId;
  /// The ID of this resource.
  final String? id;
  /// List of routes included in the WARP client's tunnel.
  final List<GetZeroTrustDeviceDefaultProfileInclude>? includes;
  final String? policyId;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  final bool? registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  final bool? sccmVpnBoundarySupport;
  final GetZeroTrustDeviceDefaultProfileServiceModeV2? serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  final String? supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  final bool? switchLocked;
  /// Determines which tunnel protocol to use.
  final String? tunnelProtocol;
  /// Virtual network access settings for the device.
  final GetZeroTrustDeviceDefaultProfileVirtualNetworks? virtualNetworks;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileResult].
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
  /// [excludes] List of routes excluded in the WARP client's tunnel.
  /// [fallbackDomains] Optional.
  /// [gatewayUniqueId] Optional.
  /// [id] The ID of this resource.
  /// [includes] List of routes included in the WARP client's tunnel.
  /// [policyId] Optional.
  /// [registerInterfaceIpWithDns] Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  /// [sccmVpnBoundarySupport] Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  /// [serviceModeV2] Optional.
  /// [supportUrl] The URL to launch when the Send Feedback button is clicked.
  /// [switchLocked] Whether to allow the user to turn off the WARP switch and disconnect the client.
  /// [tunnelProtocol] Determines which tunnel protocol to use.
  /// [virtualNetworks] Virtual network access settings for the device.
  const GetZeroTrustDeviceDefaultProfileResult({
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
    this.id,
    this.includes,
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
      'dnsSearchSuffixes': ?(() { final guardedValue = dnsSearchSuffixes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDefaultProfileDnsSearchSuffix, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'excludeOfficeIps': ?excludeOfficeIps,
      'excludes': ?(() { final guardedValue = excludes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDefaultProfileExclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fallbackDomains': ?(() { final guardedValue = fallbackDomains; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDefaultProfileFallbackDomain, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayUniqueId': ?gatewayUniqueId,
      'id': ?id,
      'includes': ?(() { final guardedValue = includes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDefaultProfileInclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyId': ?policyId,
      'registerInterfaceIpWithDns': ?registerInterfaceIpWithDns,
      'sccmVpnBoundarySupport': ?sccmVpnBoundarySupport,
      'serviceModeV2': ?serviceModeV2?.toMap(),
      'supportUrl': ?supportUrl,
      'switchLocked': ?switchLocked,
      'tunnelProtocol': ?tunnelProtocol,
      'virtualNetworks': ?virtualNetworks?.toMap(),
    };
  }

  factory GetZeroTrustDeviceDefaultProfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowModeSwitch: (() { final guardedValue = map['allowModeSwitch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowUpdates: (() { final guardedValue = map['allowUpdates']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedToLeave: (() { final guardedValue = map['allowedToLeave']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoConnect: (() { final guardedValue = map['autoConnect']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      captivePortal: (() { final guardedValue = map['captivePortal']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableAutoFallback: (() { final guardedValue = map['disableAutoFallback']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsSearchSuffixes: (() { final guardedValue = map['dnsSearchSuffixes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDefaultProfileDnsSearchSuffix>(guardedValue, (value) => GetZeroTrustDeviceDefaultProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeOfficeIps: (() { final guardedValue = map['excludeOfficeIps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDefaultProfileExclude>(guardedValue, (value) => GetZeroTrustDeviceDefaultProfileExclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      fallbackDomains: (() { final guardedValue = map['fallbackDomains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDefaultProfileFallbackDomain>(guardedValue, (value) => GetZeroTrustDeviceDefaultProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayUniqueId: (() { final guardedValue = map['gatewayUniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDefaultProfileInclude>(guardedValue, (value) => GetZeroTrustDeviceDefaultProfileInclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registerInterfaceIpWithDns: (() { final guardedValue = map['registerInterfaceIpWithDns']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sccmVpnBoundarySupport: (() { final guardedValue = map['sccmVpnBoundarySupport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serviceModeV2: (() { final guardedValue = map['serviceModeV2']; if (guardedValue == null) return null; return GetZeroTrustDeviceDefaultProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      switchLocked: (() { final guardedValue = map['switchLocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tunnelProtocol: (() { final guardedValue = map['tunnelProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return GetZeroTrustDeviceDefaultProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
