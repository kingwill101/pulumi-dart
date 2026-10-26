// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_connectivity_settings_zero_trust_connectivity_settings_args_doc}
/// The set of arguments for ZeroTrustConnectivitySettings.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_connectivity_settings_zero_trust_connectivity_settings_args_doc}
class ZeroTrustConnectivitySettingsArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// A flag to enable the ICMP proxy for the account network.
  final pulumi.Input<bool?>? icmpProxyEnabled;
  /// A flag to enable WARP to WARP traffic.
  final pulumi.Input<bool?>? offrampWarpEnabled;

  /// Creates a new [ZeroTrustConnectivitySettingsArgs].
  /// [accountId] Cloudflare account ID
  /// [icmpProxyEnabled] A flag to enable the ICMP proxy for the account network.
  /// [offrampWarpEnabled] A flag to enable WARP to WARP traffic.
  const ZeroTrustConnectivitySettingsArgs({
    required this.accountId,
    this.icmpProxyEnabled,
    this.offrampWarpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'icmpProxyEnabled': ?icmpProxyEnabled,
      'offrampWarpEnabled': ?offrampWarpEnabled,
    };
  }

  factory ZeroTrustConnectivitySettingsArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustConnectivitySettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      icmpProxyEnabled: (() { final guardedValue = map['icmpProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offrampWarpEnabled: (() { final guardedValue = map['offrampWarpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
