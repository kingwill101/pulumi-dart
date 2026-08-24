// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_wan_ipsec_tunnel_get_magic_wan_ipsec_tunnel_args_doc}
/// Arguments for getMagicWanIpsecTunnel.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_wan_ipsec_tunnel_get_magic_wan_ipsec_tunnel_args_doc}
class GetMagicWanIpsecTunnelArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Identifier
  final pulumi.Input<String> ipsecTunnelId;

  /// Creates a new [GetMagicWanIpsecTunnelArgs].
  /// [accountId] Identifier
  /// [ipsecTunnelId] Identifier
  const GetMagicWanIpsecTunnelArgs({
    this.accountId,
    required this.ipsecTunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ipsecTunnelId': ipsecTunnelId,
    };
  }

  factory GetMagicWanIpsecTunnelArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecTunnelId: pulumi.Input.fromValue(map['ipsecTunnelId'] as String),
    );
  }
}
