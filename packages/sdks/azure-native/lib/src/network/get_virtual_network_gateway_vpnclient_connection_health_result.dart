// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_client_connection_health_detail_response.dart';

/// Result data returned by getVirtualNetworkGatewayVpnclientConnectionHealth.
class GetVirtualNetworkGatewayVpnclientConnectionHealthResult {
  /// List of vpn client connection health.
  final List<VpnClientConnectionHealthDetailResponse>? value;

  /// Creates a new [GetVirtualNetworkGatewayVpnclientConnectionHealthResult].
  /// [value] List of vpn client connection health.
  GetVirtualNetworkGatewayVpnclientConnectionHealthResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<VpnClientConnectionHealthDetailResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetVirtualNetworkGatewayVpnclientConnectionHealthResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnclientConnectionHealthResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<VpnClientConnectionHealthDetailResponse>(map['value'], (value) => VpnClientConnectionHealthDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

