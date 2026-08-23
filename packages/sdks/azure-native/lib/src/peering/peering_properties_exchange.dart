// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exchange_connection.dart';
import 'sub_resource.dart';

/// The properties that define an exchange peering.
class PeeringPropertiesExchange {
  /// The set of connections that constitute an exchange peering.
  final pulumi.Input<List<ExchangeConnection>>? connections;
  /// The reference of the peer ASN.
  final pulumi.Input<SubResource>? peerAsn;

  /// Creates a new [PeeringPropertiesExchange].
  /// [connections] The set of connections that constitute an exchange peering.
  /// [peerAsn] The reference of the peer ASN.
  const PeeringPropertiesExchange({
    this.connections,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<ExchangeConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<ExchangeConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerAsn': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peerAsn, (value) => value.toMap()),
    };
  }

  factory PeeringPropertiesExchange.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesExchange(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExchangeConnection>(guardedValue, (value) => ExchangeConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
