// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustConnectivitySettings.
class GetZeroTrustConnectivitySettingsResult {
  /// Cloudflare account ID
  final String? accountId;
  /// A flag to enable the ICMP proxy for the account network.
  final bool? icmpProxyEnabled;
  /// Cloudflare account ID
  final String? id;
  /// A flag to enable WARP to WARP traffic.
  final bool? offrampWarpEnabled;

  /// Creates a new [GetZeroTrustConnectivitySettingsResult].
  /// [accountId] Cloudflare account ID
  /// [icmpProxyEnabled] A flag to enable the ICMP proxy for the account network.
  /// [id] Cloudflare account ID
  /// [offrampWarpEnabled] A flag to enable WARP to WARP traffic.
  const GetZeroTrustConnectivitySettingsResult({
    this.accountId,
    this.icmpProxyEnabled,
    this.id,
    this.offrampWarpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'icmpProxyEnabled': ?icmpProxyEnabled,
      'id': ?id,
      'offrampWarpEnabled': ?offrampWarpEnabled,
    };
  }

  factory GetZeroTrustConnectivitySettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustConnectivitySettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icmpProxyEnabled: (() { final guardedValue = map['icmpProxyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offrampWarpEnabled: (() { final guardedValue = map['offrampWarpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
