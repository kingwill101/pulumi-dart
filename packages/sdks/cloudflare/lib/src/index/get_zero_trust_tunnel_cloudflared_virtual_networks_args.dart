// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_virtual_networks_get_zero_trust_tunnel_cloudflared_virtual_networks_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredVirtualNetworks.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_virtual_networks_get_zero_trust_tunnel_cloudflared_virtual_networks_args_doc}
class GetZeroTrustTunnelCloudflaredVirtualNetworksArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? id;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDefault;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworksArgs].
  /// [accountId] Cloudflare account ID
  /// [id] UUID of the virtual network.
  /// [isDefault] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDefaultNetwork] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDeleted] If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] A user-friendly name for the virtual network.
  const GetZeroTrustTunnelCloudflaredVirtualNetworksArgs({
    this.accountId,
    this.id,
    this.isDefault,
    this.isDefaultNetwork,
    this.isDeleted,
    this.maxItems,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'isDefault': ?isDefault,
      'isDefaultNetwork': ?isDefaultNetwork,
      'isDeleted': ?isDeleted,
      'maxItems': ?maxItems,
      'name': ?name,
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworksArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
