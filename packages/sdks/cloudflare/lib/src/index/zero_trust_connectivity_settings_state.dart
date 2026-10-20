// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustConnectivitySettings resources.
class ZeroTrustConnectivitySettingsState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// A flag to enable the ICMP proxy for the account network.
  final pulumi.Input<bool?>? icmpProxyEnabled;
  /// A flag to enable WARP to WARP traffic.
  final pulumi.Input<bool?>? offrampWarpEnabled;

  /// Creates a new [ZeroTrustConnectivitySettingsState].
  /// [accountId] Cloudflare account ID
  /// [icmpProxyEnabled] A flag to enable the ICMP proxy for the account network.
  /// [offrampWarpEnabled] A flag to enable WARP to WARP traffic.
  const ZeroTrustConnectivitySettingsState({
    this.accountId,
    this.icmpProxyEnabled,
    this.offrampWarpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'icmpProxyEnabled': ?icmpProxyEnabled,
      'offrampWarpEnabled': ?offrampWarpEnabled,
    };
  }

  factory ZeroTrustConnectivitySettingsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustConnectivitySettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icmpProxyEnabled: (() { final guardedValue = map['icmpProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offrampWarpEnabled: (() { final guardedValue = map['offrampWarpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
