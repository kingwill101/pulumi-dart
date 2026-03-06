// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exchange_connection_response.dart';
import 'sub_resource_response.dart';

/// The properties that define an exchange peering.
class PeeringPropertiesExchangeResponse {
  /// The set of connections that constitute an exchange peering.
  final pulumi.Input<List<ExchangeConnectionResponse>>? connections;
  /// The reference of the peer ASN.
  final pulumi.Input<SubResourceResponse>? peerAsn;

  /// Creates a new [PeeringPropertiesExchangeResponse].
  /// [connections] The set of connections that constitute an exchange peering.
  /// [peerAsn] The reference of the peer ASN.
  const PeeringPropertiesExchangeResponse({
    this.connections,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<ExchangeConnectionResponse>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<ExchangeConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerAsn': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(peerAsn, (value) => value.toMap()),
    };
  }

  factory PeeringPropertiesExchangeResponse.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesExchangeResponse(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExchangeConnectionResponse>(guardedValue, (value) => ExchangeConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

