// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_tunnel_cloudflared_virtual_network_zero_trust_tunnel_cloudflared_virtual_network_args_doc}
/// The set of arguments for ZeroTrustTunnelCloudflaredVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_tunnel_cloudflared_virtual_network_zero_trust_tunnel_cloudflared_virtual_network_args_doc}
class ZeroTrustTunnelCloudflaredVirtualNetworkArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// Optional remark describing the virtual network.
  final pulumi.Input<String?>? comment;
  /// If `true`, this virtual network is the default for the account.
  final pulumi.Input<bool?>? isDefault;
  /// If `true`, this virtual network is the default for the account.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustTunnelCloudflaredVirtualNetworkArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the virtual network.
  /// [isDefault] If `true`, this virtual network is the default for the account.
  /// [isDefaultNetwork] If `true`, this virtual network is the default for the account.
  /// [name] A user-friendly name for the virtual network.
  const ZeroTrustTunnelCloudflaredVirtualNetworkArgs({
    required this.accountId,
    this.comment,
    this.isDefault,
    this.isDefaultNetwork,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comment': ?comment,
      'isDefault': ?isDefault,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': name,
    };
  }

  factory ZeroTrustTunnelCloudflaredVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelCloudflaredVirtualNetworkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
