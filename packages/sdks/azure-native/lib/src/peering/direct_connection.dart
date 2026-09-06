// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session.dart';

/// The properties that define a direct connection.
class DirectConnection {
  /// The bandwidth of the connection.
  final pulumi.Input<int?>? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSession?>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String?>? connectionIdentifier;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int?>? peeringDBFacilityId;
  /// The field indicating if Microsoft provides session ip addresses.
  final pulumi.Input<dynamic>? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final pulumi.Input<bool?>? useForPeeringService;

  /// Creates a new [DirectConnection].
  /// [bandwidthInMbps] The bandwidth of the connection.
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  /// [sessionAddressProvider] The field indicating if Microsoft provides session ip addresses.
  /// [useForPeeringService] The flag that indicates whether or not the connection is used for peering service.
  const DirectConnection({
    this.bandwidthInMbps,
    this.bgpSession,
    this.connectionIdentifier,
    this.peeringDBFacilityId,
    this.sessionAddressProvider,
    this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': ?bandwidthInMbps,
      'bgpSession': ?pulumi.Input.mapOptionalInputValue<BgpSession, Map<String, dynamic>>(bgpSession, (value) => value.toMap()),
      'connectionIdentifier': ?connectionIdentifier,
      'peeringDBFacilityId': ?peeringDBFacilityId,
      'sessionAddressProvider': ?sessionAddressProvider,
      'useForPeeringService': ?useForPeeringService,
    };
  }

  factory DirectConnection.fromMap(Map<String, dynamic> map) {
    return DirectConnection(
      bandwidthInMbps: (() { final guardedValue = map['bandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpSession: (() { final guardedValue = map['bgpSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSession.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionIdentifier: (() { final guardedValue = map['connectionIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringDBFacilityId: (() { final guardedValue = map['peeringDBFacilityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sessionAddressProvider: (() { final guardedValue = map['sessionAddressProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useForPeeringService: (() { final guardedValue = map['useForPeeringService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
