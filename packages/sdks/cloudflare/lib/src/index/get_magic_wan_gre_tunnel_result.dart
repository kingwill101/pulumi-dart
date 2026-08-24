// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_wan_gre_tunnel_gre_tunnel.dart';

/// Result data returned by getMagicWanGreTunnel.
class GetMagicWanGreTunnelResult {
  /// Identifier
  final String? accountId;
  final GetMagicWanGreTunnelGreTunnel? greTunnel;
  /// Identifier
  final String? greTunnelId;
  /// Identifier
  final String? id;

  /// Creates a new [GetMagicWanGreTunnelResult].
  /// [accountId] Identifier
  /// [greTunnel] Optional.
  /// [greTunnelId] Identifier
  /// [id] Identifier
  const GetMagicWanGreTunnelResult({
    this.accountId,
    this.greTunnel,
    this.greTunnelId,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'greTunnel': ?greTunnel?.toMap(),
      'greTunnelId': ?greTunnelId,
      'id': ?id,
    };
  }

  factory GetMagicWanGreTunnelResult.fromMap(Map<String, dynamic> map) {
    return GetMagicWanGreTunnelResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      greTunnel: (() { final guardedValue = map['greTunnel']; if (guardedValue == null) return null; return GetMagicWanGreTunnelGreTunnel.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      greTunnelId: (() { final guardedValue = map['greTunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
