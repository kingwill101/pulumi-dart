// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exchange_connection_response.dart';
import 'sub_resource_response.dart';

/// The properties that define an exchange peering.
class PeeringPropertiesExchangeResponse {
  /// The set of connections that constitute an exchange peering.
  final List<ExchangeConnectionResponse>? connections;
  /// The reference of the peer ASN.
  final SubResourceResponse? peerAsn;

  /// Creates a new [PeeringPropertiesExchangeResponse].
  /// [connections] The set of connections that constitute an exchange peering.
  /// [peerAsn] The reference of the peer ASN.
  PeeringPropertiesExchangeResponse({
    this.connections,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?connections == null ? null : pulumi.Input.encodeList<ExchangeConnectionResponse, Map<String, dynamic>>(connections!, (value) => value.toMap()),
      'peerAsn': ?peerAsn == null ? null : peerAsn!.toMap(),
    };
  }

  factory PeeringPropertiesExchangeResponse.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesExchangeResponse(
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<ExchangeConnectionResponse>(map['connections'], (value) => ExchangeConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      peerAsn: map['peerAsn'] == null ? null : SubResourceResponse.fromMap((map['peerAsn'] as Map).cast<String, dynamic>()),
    );
  }
}

