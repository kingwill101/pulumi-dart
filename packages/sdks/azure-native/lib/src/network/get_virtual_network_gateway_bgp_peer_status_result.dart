// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_status_response.dart';

/// Result data returned by getVirtualNetworkGatewayBgpPeerStatus.
class GetVirtualNetworkGatewayBgpPeerStatusResult {
  /// List of BGP peers.
  final List<BgpPeerStatusResponse>? value;

  /// Creates a new [GetVirtualNetworkGatewayBgpPeerStatusResult].
  /// [value] List of BGP peers.
  const GetVirtualNetworkGatewayBgpPeerStatusResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<BgpPeerStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualNetworkGatewayBgpPeerStatusResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayBgpPeerStatusResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BgpPeerStatusResponse>(guardedValue, (value) => BgpPeerStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

