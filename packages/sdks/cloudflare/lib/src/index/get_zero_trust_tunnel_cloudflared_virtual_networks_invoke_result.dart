// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_virtual_networks_result.dart';

/// Result data returned by getZeroTrustTunnelCloudflaredVirtualNetworks.
class GetZeroTrustTunnelCloudflaredVirtualNetworksInvokeResult {
  /// Cloudflare account ID
  final String? accountId;
  /// UUID of the virtual network.
  final String? id;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final bool? isDefault;
  /// If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  final bool? isDefaultNetwork;
  /// If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  final bool? isDeleted;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// A user-friendly name for the virtual network.
  final String? name;
  /// The items returned by the data source
  final List<GetZeroTrustTunnelCloudflaredVirtualNetworksResult>? results;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworksInvokeResult].
  /// [accountId] Cloudflare account ID
  /// [id] UUID of the virtual network.
  /// [isDefault] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDefaultNetwork] If `true`, only include the default virtual network. If `false`, exclude the default virtual network. If empty, all virtual networks will be included.
  /// [isDeleted] If `true`, only include deleted virtual networks. If `false`, exclude deleted virtual networks. If empty, all virtual networks will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] A user-friendly name for the virtual network.
  /// [results] The items returned by the data source
  const GetZeroTrustTunnelCloudflaredVirtualNetworksInvokeResult({
    this.accountId,
    this.id,
    this.isDefault,
    this.isDefaultNetwork,
    this.isDeleted,
    this.maxItems,
    this.name,
    this.results,
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustTunnelCloudflaredVirtualNetworksResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworksInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworksInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustTunnelCloudflaredVirtualNetworksResult>(guardedValue, (value) => GetZeroTrustTunnelCloudflaredVirtualNetworksResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
