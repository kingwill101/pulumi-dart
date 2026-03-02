// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session.dart';

/// The properties that define an exchange connection.
class ExchangeConnection {
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSession>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String>? connectionIdentifier;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int>? peeringDBFacilityId;

  /// Creates a new [ExchangeConnection].
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  ExchangeConnection({
    this.bgpSession,
    this.connectionIdentifier,
    this.peeringDBFacilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSession': ?pulumi.Input.mapOptionalInputValue<BgpSession, Map<String, dynamic>>(bgpSession, (value) => value.toMap()),
      'connectionIdentifier': ?connectionIdentifier,
      'peeringDBFacilityId': ?peeringDBFacilityId,
    };
  }

  factory ExchangeConnection.fromMap(Map<String, dynamic> map) {
    return ExchangeConnection(
      bgpSession: map['bgpSession'] == null ? null : (BgpSession.fromMap((map['bgpSession'] as Map).cast<String, dynamic>())).input(),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : (map['connectionIdentifier'] as String).input(),
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : (map['peeringDBFacilityId'] as int).input(),
    );
  }
}

