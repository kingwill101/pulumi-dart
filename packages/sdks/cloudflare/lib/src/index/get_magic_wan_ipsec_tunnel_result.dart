// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel.dart';

/// Result data returned by getMagicWanIpsecTunnel.
class GetMagicWanIpsecTunnelResult {
  /// Identifier
  final String? accountId;
  /// Identifier
  final String? id;
  final GetMagicWanIpsecTunnelIpsecTunnel? ipsecTunnel;
  /// Identifier
  final String? ipsecTunnelId;

  /// Creates a new [GetMagicWanIpsecTunnelResult].
  /// [accountId] Identifier
  /// [id] Identifier
  /// [ipsecTunnel] Optional.
  /// [ipsecTunnelId] Identifier
  const GetMagicWanIpsecTunnelResult({
    this.accountId,
    this.id,
    this.ipsecTunnel,
    this.ipsecTunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'ipsecTunnel': ?ipsecTunnel?.toMap(),
      'ipsecTunnelId': ?ipsecTunnelId,
    };
  }

  factory GetMagicWanIpsecTunnelResult.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipsecTunnel: (() { final guardedValue = map['ipsecTunnel']; if (guardedValue == null) return null; return GetMagicWanIpsecTunnelIpsecTunnel.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ipsecTunnelId: (() { final guardedValue = map['ipsecTunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
