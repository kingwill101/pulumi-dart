// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_status_response.dart';

/// Result data returned by getVirtualNetworkGatewayBgpPeerStatus.
class GetVirtualNetworkGatewayBgpPeerStatusResult {
  /// List of BGP peers.
  final List<BgpPeerStatusResponse>? value;

  /// Creates a new [GetVirtualNetworkGatewayBgpPeerStatusResult].
  /// [value] List of BGP peers.
  GetVirtualNetworkGatewayBgpPeerStatusResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<BgpPeerStatusResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetVirtualNetworkGatewayBgpPeerStatusResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayBgpPeerStatusResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<BgpPeerStatusResponse>(map['value'], (value) => BgpPeerStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

