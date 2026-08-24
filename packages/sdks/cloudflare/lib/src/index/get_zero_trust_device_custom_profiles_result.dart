// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_custom_profiles_result_dns_search_suffix.dart';
import 'get_zero_trust_device_custom_profiles_result_exclude.dart';
import 'get_zero_trust_device_custom_profiles_result_fallback_domain.dart';
import 'get_zero_trust_device_custom_profiles_result_include.dart';
import 'get_zero_trust_device_custom_profiles_result_service_mode_v2.dart';
import 'get_zero_trust_device_custom_profiles_result_target_test.dart';
import 'get_zero_trust_device_custom_profiles_result_virtual_networks.dart';

class GetZeroTrustDeviceCustomProfilesResult {
  /// Whether to allow the user to switch WARP between modes.
  final pulumi.Input<bool> allowModeSwitch;
  /// Whether to receive update notifications when a new version of the client is available.
  final pulumi.Input<bool> allowUpdates;
  /// Whether to allow devices to leave the organization.
  final pulumi.Input<bool> allowedToLeave;
  /// The amount of time in seconds to reconnect after having been disabled.
  final pulumi.Input<double> autoConnect;
  /// Turn on the captive portal after the specified amount of time.
  final pulumi.Input<double> captivePortal;
  /// Whether the policy is the default policy for an account.
  final pulumi.Input<bool> default_;
  /// A description of the policy.
  final pulumi.Input<String> description;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  final pulumi.Input<bool> disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  final pulumi.Input<List<GetZeroTrustDeviceCustomProfilesResultDnsSearchSuffix>> dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  final pulumi.Input<bool> enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  final pulumi.Input<bool> excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel.
  final pulumi.Input<List<GetZeroTrustDeviceCustomProfilesResultExclude>> excludes;
  final pulumi.Input<List<GetZeroTrustDeviceCustomProfilesResultFallbackDomain>> fallbackDomains;
  final pulumi.Input<String> gatewayUniqueId;
  final pulumi.Input<String> id;
  /// List of routes included in the WARP client's tunnel.
  final pulumi.Input<List<GetZeroTrustDeviceCustomProfilesResultInclude>> includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double> lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double> lanAllowSubnetSize;
  /// The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  final pulumi.Input<String> match;
  /// The name of the device settings profile.
  final pulumi.Input<String> name;
  final pulumi.Input<String> policyId;
  /// The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  final pulumi.Input<double> precedence;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  final pulumi.Input<bool> registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  final pulumi.Input<bool> sccmVpnBoundarySupport;
  final pulumi.Input<GetZeroTrustDeviceCustomProfilesResultServiceModeV2> serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  final pulumi.Input<String> supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  final pulumi.Input<bool> switchLocked;
  final pulumi.Input<List<GetZeroTrustDeviceCustomProfilesResultTargetTest>> targetTests;
  /// Determines which tunnel protocol to use.
  final pulumi.Input<String> tunnelProtocol;
  /// Virtual network access settings for the device.
  final pulumi.Input<GetZeroTrustDeviceCustomProfilesResultVirtualNetworks> virtualNetworks;

  /// Creates a new [GetZeroTrustDeviceCustomProfilesResult].
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
  /// [fallbackDomains] Required.
  /// [gatewayUniqueId] Required.
  /// [id] Required.
  /// [includes] List of routes included in the WARP client's tunnel.
  /// [lanAllowMinutes] The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  /// [lanAllowSubnetSize] The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  /// [match] The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  /// [name] The name of the device settings profile.
  /// [policyId] Required.
  /// [precedence] The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  /// [registerInterfaceIpWithDns] Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  /// [sccmVpnBoundarySupport] Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  /// [serviceModeV2] Required.
  /// [supportUrl] The URL to launch when the Send Feedback button is clicked.
  /// [switchLocked] Whether to allow the user to turn off the WARP switch and disconnect the client.
  /// [targetTests] Required.
  /// [tunnelProtocol] Determines which tunnel protocol to use.
  /// [virtualNetworks] Virtual network access settings for the device.
  const GetZeroTrustDeviceCustomProfilesResult({
    required this.allowModeSwitch,
    required this.allowUpdates,
    required this.allowedToLeave,
    required this.autoConnect,
    required this.captivePortal,
    required this.default_,
    required this.description,
    required this.disableAutoFallback,
    required this.dnsSearchSuffixes,
    required this.enabled,
    required this.excludeOfficeIps,
    required this.excludes,
    required this.fallbackDomains,
    required this.gatewayUniqueId,
    required this.id,
    required this.includes,
    required this.lanAllowMinutes,
    required this.lanAllowSubnetSize,
    required this.match,
    required this.name,
    required this.policyId,
    required this.precedence,
    required this.registerInterfaceIpWithDns,
    required this.sccmVpnBoundarySupport,
    required this.serviceModeV2,
    required this.supportUrl,
    required this.switchLocked,
    required this.targetTests,
    required this.tunnelProtocol,
    required this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowModeSwitch': allowModeSwitch,
      'allowUpdates': allowUpdates,
      'allowedToLeave': allowedToLeave,
      'autoConnect': autoConnect,
      'captivePortal': captivePortal,
      'default': default_,
      'description': description,
      'disableAutoFallback': disableAutoFallback,
      'dnsSearchSuffixes': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceCustomProfilesResultDnsSearchSuffix>, List<Map<String, dynamic>>>(dnsSearchSuffixes, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResultDnsSearchSuffix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'excludeOfficeIps': excludeOfficeIps,
      'excludes': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceCustomProfilesResultExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResultExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackDomains': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceCustomProfilesResultFallbackDomain>, List<Map<String, dynamic>>>(fallbackDomains, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResultFallbackDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayUniqueId': gatewayUniqueId,
      'id': id,
      'includes': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceCustomProfilesResultInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResultInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lanAllowMinutes': lanAllowMinutes,
      'lanAllowSubnetSize': lanAllowSubnetSize,
      'match': match,
      'name': name,
      'policyId': policyId,
      'precedence': precedence,
      'registerInterfaceIpWithDns': registerInterfaceIpWithDns,
      'sccmVpnBoundarySupport': sccmVpnBoundarySupport,
      'serviceModeV2': pulumi.Input.mapInputValue<GetZeroTrustDeviceCustomProfilesResultServiceModeV2, Map<String, dynamic>>(serviceModeV2, (value) => value.toMap()),
      'supportUrl': supportUrl,
      'switchLocked': switchLocked,
      'targetTests': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceCustomProfilesResultTargetTest>, List<Map<String, dynamic>>>(targetTests, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResultTargetTest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tunnelProtocol': tunnelProtocol,
      'virtualNetworks': pulumi.Input.mapInputValue<GetZeroTrustDeviceCustomProfilesResultVirtualNetworks, Map<String, dynamic>>(virtualNetworks, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustDeviceCustomProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfilesResult(
      allowModeSwitch: pulumi.Input.fromValue(map['allowModeSwitch'] as bool),
      allowUpdates: pulumi.Input.fromValue(map['allowUpdates'] as bool),
      allowedToLeave: pulumi.Input.fromValue(map['allowedToLeave'] as bool),
      autoConnect: pulumi.Input.fromValue((map['autoConnect'] as num).toDouble()),
      captivePortal: pulumi.Input.fromValue((map['captivePortal'] as num).toDouble()),
      default_: pulumi.Input.fromValue(map['default'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      disableAutoFallback: pulumi.Input.fromValue(map['disableAutoFallback'] as bool),
      dnsSearchSuffixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResultDnsSearchSuffix>(map['dnsSearchSuffixes']!, (value) => GetZeroTrustDeviceCustomProfilesResultDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      excludeOfficeIps: pulumi.Input.fromValue(map['excludeOfficeIps'] as bool),
      excludes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResultExclude>(map['excludes']!, (value) => GetZeroTrustDeviceCustomProfilesResultExclude.fromMap((value as Map).cast<String, dynamic>()))),
      fallbackDomains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResultFallbackDomain>(map['fallbackDomains']!, (value) => GetZeroTrustDeviceCustomProfilesResultFallbackDomain.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayUniqueId: pulumi.Input.fromValue(map['gatewayUniqueId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResultInclude>(map['includes']!, (value) => GetZeroTrustDeviceCustomProfilesResultInclude.fromMap((value as Map).cast<String, dynamic>()))),
      lanAllowMinutes: pulumi.Input.fromValue((map['lanAllowMinutes'] as num).toDouble()),
      lanAllowSubnetSize: pulumi.Input.fromValue((map['lanAllowSubnetSize'] as num).toDouble()),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      precedence: pulumi.Input.fromValue((map['precedence'] as num).toDouble()),
      registerInterfaceIpWithDns: pulumi.Input.fromValue(map['registerInterfaceIpWithDns'] as bool),
      sccmVpnBoundarySupport: pulumi.Input.fromValue(map['sccmVpnBoundarySupport'] as bool),
      serviceModeV2: pulumi.Input.fromValue(GetZeroTrustDeviceCustomProfilesResultServiceModeV2.fromMap((map['serviceModeV2']! as Map).cast<String, dynamic>())),
      supportUrl: pulumi.Input.fromValue(map['supportUrl'] as String),
      switchLocked: pulumi.Input.fromValue(map['switchLocked'] as bool),
      targetTests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResultTargetTest>(map['targetTests']!, (value) => GetZeroTrustDeviceCustomProfilesResultTargetTest.fromMap((value as Map).cast<String, dynamic>()))),
      tunnelProtocol: pulumi.Input.fromValue(map['tunnelProtocol'] as String),
      virtualNetworks: pulumi.Input.fromValue(GetZeroTrustDeviceCustomProfilesResultVirtualNetworks.fromMap((map['virtualNetworks']! as Map).cast<String, dynamic>())),
    );
  }
}
