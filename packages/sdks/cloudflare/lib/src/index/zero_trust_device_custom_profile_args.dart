// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_custom_profile_dns_search_suffix.dart';
import 'zero_trust_device_custom_profile_exclude.dart';
import 'zero_trust_device_custom_profile_global_acceleration.dart';
import 'zero_trust_device_custom_profile_include.dart';
import 'zero_trust_device_custom_profile_service_mode_v2.dart';
import 'zero_trust_device_custom_profile_virtual_networks.dart';

/// {@template pulumi_index_zero_trust_device_custom_profile_zero_trust_device_custom_profile_args_doc}
/// The set of arguments for ZeroTrustDeviceCustomProfile.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_custom_profile_zero_trust_device_custom_profile_args_doc}
class ZeroTrustDeviceCustomProfileArgs {
  final pulumi.Input<String> accountId;
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
  /// A description of the policy.
  final pulumi.Input<String?>? description;
  /// If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  final pulumi.Input<bool?>? disableAutoFallback;
  /// List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  final pulumi.Input<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>?>? dnsSearchSuffixes;
  /// Whether the policy will be applied to matching devices.
  final pulumi.Input<bool?>? enabled;
  /// Whether to add Microsoft IPs to Split Tunnel exclusions.
  final pulumi.Input<bool?>? excludeOfficeIps;
  /// List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  final pulumi.Input<List<ZeroTrustDeviceCustomProfileExclude>?>? excludes;
  /// Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  final pulumi.Input<ZeroTrustDeviceCustomProfileGlobalAcceleration?>? globalAcceleration;
  /// List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  final pulumi.Input<List<ZeroTrustDeviceCustomProfileInclude>?>? includes;
  /// The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double?>? lanAllowMinutes;
  /// The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  final pulumi.Input<double?>? lanAllowSubnetSize;
  /// The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  final pulumi.Input<String> match;
  /// The name of the device settings profile.
  final pulumi.Input<String> name;
  /// The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  final pulumi.Input<double?>? precedence;
  /// Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  final pulumi.Input<bool?>? registerInterfaceIpWithDns;
  /// Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  final pulumi.Input<bool?>? sccmVpnBoundarySupport;
  final pulumi.Input<ZeroTrustDeviceCustomProfileServiceModeV2?>? serviceModeV2;
  /// The URL to launch when the Send Feedback button is clicked.
  final pulumi.Input<String?>? supportUrl;
  /// Whether to allow the user to turn off the WARP switch and disconnect the client.
  final pulumi.Input<bool?>? switchLocked;
  /// Determines which tunnel protocol to use.
  final pulumi.Input<String?>? tunnelProtocol;
  /// Virtual network access settings for the device.
  final pulumi.Input<ZeroTrustDeviceCustomProfileVirtualNetworks?>? virtualNetworks;

  /// Creates a new [ZeroTrustDeviceCustomProfileArgs].
  /// [accountId] Required.
  /// [allowModeSwitch] Whether to allow the user to switch WARP between modes.
  /// [allowUpdates] Whether to receive update notifications when a new version of the client is available.
  /// [allowedToLeave] Whether to allow devices to leave the organization.
  /// [autoConnect] The amount of time in seconds to reconnect after having been disabled.
  /// [captivePortal] Turn on the captive portal after the specified amount of time.
  /// [description] A description of the policy.
  /// [disableAutoFallback] If the `dnsServer` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
  /// [dnsSearchSuffixes] List of DNS search suffixes to apply to clients. Suffixes are evaluated in order. Use an empty array to clear.
  /// [enabled] Whether the policy will be applied to matching devices.
  /// [excludeOfficeIps] Whether to add Microsoft IPs to Split Tunnel exclusions.
  /// [excludes] List of routes excluded in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  /// [globalAcceleration] Global Acceleration settings for China. When configured, WARP clients connect to the Global Accelerator addresses instead of the default ones. Please contact your account representative to enable this feature on your account. See https://developers.cloudflare.com/china-network/concepts/global-acceleration/.
  /// [includes] List of routes included in the WARP client's tunnel. Both 'exclude' and 'include' cannot be set in the same request.
  /// [lanAllowMinutes] The amount of time in minutes a user is allowed access to their LAN. A value of 0 will allow LAN access until the next WARP reconnection, such as a reboot or a laptop waking from sleep. Note that this field is omitted from the response if null or unset.
  /// [lanAllowSubnetSize] The size of the subnet for the local access network. Note that this field is omitted from the response if null or unset.
  /// [match] The wirefilter expression to match devices. Available values: "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.service*token*uuid", "identity.saml_attributes", "network", "os.name", "os.version".
  /// [name] The name of the device settings profile.
  /// [precedence] The precedence of the policy. Lower values indicate higher precedence. Policies will be evaluated in ascending order of this field.
  /// [registerInterfaceIpWithDns] Determines if the operating system will register WARP's local interface IP with your on-premises DNS server.
  /// [sccmVpnBoundarySupport] Determines whether the WARP client indicates to SCCM that it is inside a VPN boundary. (Windows only).
  /// [serviceModeV2] Optional.
  /// [supportUrl] The URL to launch when the Send Feedback button is clicked.
  /// [switchLocked] Whether to allow the user to turn off the WARP switch and disconnect the client.
  /// [tunnelProtocol] Determines which tunnel protocol to use.
  /// [virtualNetworks] Virtual network access settings for the device.
  const ZeroTrustDeviceCustomProfileArgs({
    required this.accountId,
    this.allowModeSwitch,
    this.allowUpdates,
    this.allowedToLeave,
    this.autoConnect,
    this.captivePortal,
    this.description,
    this.disableAutoFallback,
    this.dnsSearchSuffixes,
    this.enabled,
    this.excludeOfficeIps,
    this.excludes,
    this.globalAcceleration,
    this.includes,
    this.lanAllowMinutes,
    this.lanAllowSubnetSize,
    required this.match,
    required this.name,
    this.precedence,
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
      'accountId': accountId,
      'allowModeSwitch': ?allowModeSwitch,
      'allowUpdates': ?allowUpdates,
      'allowedToLeave': ?allowedToLeave,
      'autoConnect': ?autoConnect,
      'captivePortal': ?captivePortal,
      'description': ?description,
      'disableAutoFallback': ?disableAutoFallback,
      'dnsSearchSuffixes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceCustomProfileDnsSearchSuffix>, List<Map<String, dynamic>>>(dnsSearchSuffixes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceCustomProfileDnsSearchSuffix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'excludeOfficeIps': ?excludeOfficeIps,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceCustomProfileExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceCustomProfileExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalAcceleration': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceCustomProfileGlobalAcceleration, Map<String, dynamic>>(globalAcceleration, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceCustomProfileInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<ZeroTrustDeviceCustomProfileInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lanAllowMinutes': ?lanAllowMinutes,
      'lanAllowSubnetSize': ?lanAllowSubnetSize,
      'match': match,
      'name': name,
      'precedence': ?precedence,
      'registerInterfaceIpWithDns': ?registerInterfaceIpWithDns,
      'sccmVpnBoundarySupport': ?sccmVpnBoundarySupport,
      'serviceModeV2': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceCustomProfileServiceModeV2, Map<String, dynamic>>(serviceModeV2, (value) => value.toMap()),
      'supportUrl': ?supportUrl,
      'switchLocked': ?switchLocked,
      'tunnelProtocol': ?tunnelProtocol,
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceCustomProfileVirtualNetworks, Map<String, dynamic>>(virtualNetworks, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDeviceCustomProfileArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      allowModeSwitch: (() { final guardedValue = map['allowModeSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowUpdates: (() { final guardedValue = map['allowUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedToLeave: (() { final guardedValue = map['allowedToLeave']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoConnect: (() { final guardedValue = map['autoConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      captivePortal: (() { final guardedValue = map['captivePortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableAutoFallback: (() { final guardedValue = map['disableAutoFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSearchSuffixes: (() { final guardedValue = map['dnsSearchSuffixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileDnsSearchSuffix>(guardedValue, (value) => ZeroTrustDeviceCustomProfileDnsSearchSuffix.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeOfficeIps: (() { final guardedValue = map['excludeOfficeIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileExclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalAcceleration: (() { final guardedValue = map['globalAcceleration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceCustomProfileGlobalAcceleration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileInclude>(guardedValue, (value) => ZeroTrustDeviceCustomProfileInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lanAllowMinutes: (() { final guardedValue = map['lanAllowMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      lanAllowSubnetSize: (() { final guardedValue = map['lanAllowSubnetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      registerInterfaceIpWithDns: (() { final guardedValue = map['registerInterfaceIpWithDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sccmVpnBoundarySupport: (() { final guardedValue = map['sccmVpnBoundarySupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceModeV2: (() { final guardedValue = map['serviceModeV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceCustomProfileServiceModeV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      switchLocked: (() { final guardedValue = map['switchLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tunnelProtocol: (() { final guardedValue = map['tunnelProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceCustomProfileVirtualNetworks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
