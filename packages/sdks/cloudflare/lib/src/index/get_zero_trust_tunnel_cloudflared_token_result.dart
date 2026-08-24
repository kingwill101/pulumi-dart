// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustTunnelCloudflaredToken.
class GetZeroTrustTunnelCloudflaredTokenResult {
  /// Cloudflare account ID
  final String? accountId;
  /// The Tunnel Token is used as a mechanism to authenticate the operation of a tunnel.
  final String? token;
  /// UUID of the tunnel.
  final String? tunnelId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredTokenResult].
  /// [accountId] Cloudflare account ID
  /// [token] The Tunnel Token is used as a mechanism to authenticate the operation of a tunnel.
  /// [tunnelId] UUID of the tunnel.
  const GetZeroTrustTunnelCloudflaredTokenResult({
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

  factory GetZeroTrustTunnelCloudflaredTokenResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
