// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_wan_gre_tunnel_get_magic_wan_gre_tunnel_args_doc}
/// Arguments for getMagicWanGreTunnel.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_wan_gre_tunnel_get_magic_wan_gre_tunnel_args_doc}
class GetMagicWanGreTunnelArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Identifier
  final pulumi.Input<String> greTunnelId;

  /// Creates a new [GetMagicWanGreTunnelArgs].
  /// [accountId] Identifier
  /// [greTunnelId] Identifier
  const GetMagicWanGreTunnelArgs({
    this.accountId,
    required this.greTunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'greTunnelId': greTunnelId,
    };
  }

  factory GetMagicWanGreTunnelArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicWanGreTunnelArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      greTunnelId: pulumi.Input.fromValue(map['greTunnelId'] as String),
    );
  }
}
