// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_custom_profile_dns_search_suffix.dart';
import 'get_zero_trust_device_custom_profile_exclude.dart';
import 'get_zero_trust_device_custom_profile_fallback_domain.dart';
import 'get_zero_trust_device_custom_profile_include.dart';
import 'get_zero_trust_device_custom_profile_service_mode_v2.dart';
import 'get_zero_trust_device_custom_profile_target_test.dart';
import 'get_zero_trust_device_custom_profile_virtual_networks.dart';

/// Result data returned by getZeroTrustDeviceCustomProfile.
class GetZeroTrustDeviceCustomProfileResult {
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
  /// Whether the policy is the default policy for an account.
  final bool? default_;
  /// A description of the policy.
  final String? description;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  final bool? disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  final List<GetZeroTrustDeviceCustomProfileDnsSearchSuffix>? dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  final bool? enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  final bool? excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel.
  final List<GetZeroTrustDeviceCustomProfileExclude>? excludes;
  final List<GetZeroTrustDeviceCustomProfileFallbackDomain>? fallbackDomains;
  final String? gatewayUniqueId;
  /// The ID of this resource.
  final String? id;
  /// List of routes included in the WARP client's tunnel.
  final List<GetZeroTrustDeviceCustomProfileInclude>? includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  final double? lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  final double? lanAllowSubnetSize;
  /// The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  final String? match;
  /// The name of the device settings profile.
  final String? name;
  final String? policyId;
  /// The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  final double? precedence;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  final bool? registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  final bool? sccmVpnBoundarySupport;
  final GetZeroTrustDeviceCustomProfileServiceModeV2? serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  final String? supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  final bool? switchLocked;
  final List<GetZeroTrustDeviceCustomProfileTargetTest>? targetTests;
  /// Determines which tunnel protocol to use.
  final String? tunnelProtocol;
  /// Virtual network access settings for the device.
  final GetZeroTrustDeviceCustomProfileVirtualNetworks? virtualNetworks;

  /// Creates a new [GetZeroTrustDeviceCustomProfileResult].
  /// [accountId] Optional.
  /// [allowModeSwitch] Whether to allow the user to switch WARP between modes.
  /// [allowUpdates] Whether to receive update notifications when a new version of the client is available.
  /// [allowedToLeave] Whether to allow devices to leave the organization.
  /// [autoConnect] The amount of time in seconds to reconnect after having been disabled.
  /// [captivePortal] Turn on the captive portal after the specified amount of time.
  /// [default_] Whether the policy is the default policy for an account.
  /// [description] A description of the policy.
  /// [disableAutoFallback] If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  /// [dnsSearchSuffixes] List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  /// [enabled] Whether the policy will be applied to matching devices.
  /// [excludeOfficeIps] Whether to add Microsoft IPs to Split Tunnel exclusions.
  /// [excludes] List of routes excluded in the WARP client's tunnel.
  /// [fallbackDomains] Optional.
  /// [gatewayUniqueId] Optional.
  /// [id] The ID of this resource.
  /// [includes] List of routes included in the WARP client's tunnel.
  /// [lanAllowMinutes] The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  /// [lanAllowSubnetSize] The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  /// [match] The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  /// [name] The name of the device settings profile.
  /// [policyId] Optional.
  /// [precedence] The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  /// [registerInterfaceIpWithDns] Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  /// [sccmVpnBoundarySupport] Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  /// [serviceModeV2] Optional.
  /// [supportUrl] The URL to launch when the Send Feedback button is clicked.
  /// [switchLocked] Whether to allow the user to turn off the WARP switch and disconnect the client.
  /// [targetTests] Optional.
  /// [tunnelProtocol] Determines which tunnel protocol to use.
  /// [virtualNetworks] Virtual network access settings for the device.
  const GetZeroTrustDeviceCustomProfileResult({
    this.accountId,
    this.allowModeSwitch,
    this.allowUpdates,
    this.allowedToLeave,
    this.autoConnect,
    this.captivePortal,
    this.default_,
    this.description,
    this.disableAutoFallback,
    this.dnsSearchSuffixes,
    this.enabled,
    this.excludeOfficeIps,
    this.excludes,
    this.fallbackDomains,
    this.gatewayUniqueId,
    this.id,
    this.includes,
    this.lanAllowMinutes,
    this.lanAllowSubnetSize,
    this.match,
    this.name,
    this.policyId,
    this.precedence,
    this.registerInterfaceIpWithDns,
    this.sccmVpnBoundarySupport,
    this.serviceModeV2,
    this.supportUrl,
    this.switchLocked,
    this.targetTests,
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
      'description': ?description,
      'disableAutoFallback': ?disableAutoFallback,
      'dnsSearchSuffixes': ?(() { final guardedValue = dnsSearchSuffixes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfileDnsSearchSuffix, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'excludeOfficeIps': ?excludeOfficeIps,
      'excludes': ?(() { final guardedValue = excludes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfileExclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fallbackDomains': ?(() { final guardedValue = fallbackDomains; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfileFallbackDomain, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayUniqueId': ?gatewayUniqueId,
      'id': ?id,
      'includes': ?(() { final guardedValue = includes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfileInclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lanAllowMinutes': ?lanAllowMinutes,
      'lanAllowSubnetSize': ?lanAllowSubnetSize,
      'match': ?match,
      'name': ?name,
      'policyId': ?policyId,
      'precedence': ?precedence,
      'registerInterfaceIpWithDns': ?registerInterfaceIpWithDns,
      'sccmVpnBoundarySupport': ?sccmVpnBoundarySupport,
      'serviceModeV2': ?serviceModeV2?.toMap(),
      'supportUrl': ?supportUrl,
      'switchLocked': ?switchLocked,
      'targetTests': ?(() { final guardedValue = targetTests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfileTargetTest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tunnelProtocol': ?tunnelProtocol,
      'virtualNetworks': ?virtualNetworks?.toMap(),
    };
  }

  factory GetZeroTrustDeviceCustomProfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowModeSwitch: (() { final guardedValue = map['allowModeSwitch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowUpdates: (() { final guardedValue = map['allowUpdates']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedToLeave: (() { final guardedValue = map['allowedToLeave']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoConnect: (() { final guardedValue = map['autoConnect']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      captivePortal: (() { final guardedValue = map['captivePortal']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableAutoFallback: (() { final guardedValue = map['disableAutoFallback']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsSearchSuffixes: (() { final guardedValue = map['dnsSearchSuffixes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfileDnsSearchSuffix>(guardedValue, (value) => GetZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeOfficeIps: (() { final guardedValue = map['excludeOfficeIps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfileExclude>(guardedValue, (value) => GetZeroTrustDeviceCustomProfileExclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      fallbackDomains: (() { final guardedValue = map['fallbackDomains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfileFallbackDomain>(guardedValue, (value) => GetZeroTrustDeviceCustomProfileFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayUniqueId: (() { final guardedValue = map['gatewayUniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfileInclude>(guardedValue, (value) => GetZeroTrustDeviceCustomProfileInclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      lanAllowMinutes: (() { final guardedValue = map['lanAllowMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      lanAllowSubnetSize: (() { final guardedValue = map['lanAllowSubnetSize']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      registerInterfaceIpWithDns: (() { final guardedValue = map['registerInterfaceIpWithDns']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sccmVpnBoundarySupport: (() { final guardedValue = map['sccmVpnBoundarySupport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serviceModeV2: (() { final guardedValue = map['serviceModeV2']; if (guardedValue == null) return null; return GetZeroTrustDeviceCustomProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      switchLocked: (() { final guardedValue = map['switchLocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      targetTests: (() { final guardedValue = map['targetTests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfileTargetTest>(guardedValue, (value) => GetZeroTrustDeviceCustomProfileTargetTest.fromMap((value as Map).cast<String, dynamic>())); })(),
      tunnelProtocol: (() { final guardedValue = map['tunnelProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return GetZeroTrustDeviceCustomProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
