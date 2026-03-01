// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exchange_connection.dart';
import 'sub_resource.dart';

/// The properties that define an exchange peering.
class PeeringPropertiesExchange {
  /// The set of connections that constitute an exchange peering.
  final List<ExchangeConnection>? connections;
  /// The reference of the peer ASN.
  final SubResource? peerAsn;

  /// Creates a new [PeeringPropertiesExchange].
  /// [connections] The set of connections that constitute an exchange peering.
  /// [peerAsn] The reference of the peer ASN.
  PeeringPropertiesExchange({
    this.connections,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?connections == null ? null : pulumi.Input.encodeList<ExchangeConnection, Map<String, dynamic>>(connections!, (value) => value.toMap()),
      'peerAsn': ?peerAsn == null ? null : peerAsn!.toMap(),
    };
  }

  factory PeeringPropertiesExchange.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesExchange(
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<ExchangeConnection>(map['connections'], (value) => ExchangeConnection.fromMap((value as Map).cast<String, dynamic>())),
      peerAsn: map['peerAsn'] == null ? null : SubResource.fromMap((map['peerAsn'] as Map).cast<String, dynamic>()),
    );
  }
}

