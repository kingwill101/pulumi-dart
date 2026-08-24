// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustTunnelWarpConnectorToken.
class GetZeroTrustTunnelWarpConnectorTokenResult {
  /// Cloudflare account ID
  final String? accountId;
  /// The Tunnel Token is used as a mechanism to authenticate the operation of a tunnel.
  final String? token;
  /// UUID of the tunnel.
  final String? tunnelId;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorTokenResult].
  /// [accountId] Cloudflare account ID
  /// [token] The Tunnel Token is used as a mechanism to authenticate the operation of a tunnel.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelWarpConnectorTokenResult({
    this.accountId,
    this.token,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'token': ?token,
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorTokenResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
